<?php

namespace seeit\Http\Controllers;

use Illuminate\Http\Request;

use seeit\Http\Requests\addMovieRequest;
use seeit\Http\Requests\updateMovieRequest;
use seeit\Http\Controllers\Controller;

use Auth;
use DB;

use seeit\movie;
use seeit\movie_link;
use seeit\movie_genre;
use seeit\genre;

class movieController extends Controller
{
    protected $favorites = [];
    protected $watched = []; 
    protected $linkCount = 1;
    public function __construct(){
        $this->middleware('admin', ['except' => ['index', 'show']]);
        if(Auth::check()){
            foreach(DB::table('watched')->where('user_id', Auth::user()->id)->get() as $watch)
                $this->watched[] = $watch->movie_id;
            foreach(DB::table('favorites')->where('user_id', Auth::user()->id)->get() as $fav)
                $this->favorites[] = $fav->movie_id;
        }
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if(isset($_GET['s']))
            $movies = movie::where('name', 'like', '%'.$_GET['s'].'%')->orWhere('heb_name', 'like', '%'.$_GET['s'].'%')->bylist()->limit(100)->get();
        else 
            $movies = movie::orderBy('year', 'DESC')->bylist()->get();
        return view('movies.index', ['title' => 'סרטים לצפייה ישירה', 'watched' => $this->watched, 'favorites' => $this->favorites, 'movies'=>$movies, 'contId' => 'all-movies']);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('movies.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\addMovieRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(addMovieRequest $request)
    {
        $movie = movie::create($request->all());
        $movie->addMiniImage($request->file('image'));
        $movie->addBigImage($request->file('big_image'));
        $movie->addLinks($request->input('links'));
        $movie->addGenres($request->input('genres'));
        $movie->save();
        return redirect(url('/movies/'.$movie->id.'-'.str_replace('.', '_', $movie->name)));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @param  string $name Optional
     * @return \Illuminate\Http\Response
     */
    public function show($id, $name=null)
    {   
        $movie = movie::findOrFail($id);
        $genres = $movie->getGenres();
        $links = $movie->getLinks();
        $randomNumber = mt_rand(0, sizeof($genres)-1);
        $similarMovies = $genres[$randomNumber]->getMovies(16);
        $similarMovies = array_diff($similarMovies, array($movie));
        icreaseViews($movie);
        return view('movies.show', ['watched' => $this->watched, 'favorites' => $this->favorites, 'movie'=>$movie, 'genres'=>$genres, 'links'=>$links, 'contId'=>'trasparent', 'linkCount' => $this->linkCount, 'similarMovies' => $similarMovies]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $movie = movie::find($id);
        if(!empty($movie)){
            $genres = $movie->getGenres();
            $links = $movie->getLinks();
            return view('movies.edit', ['movie' => $movie, 'genres' => $genres, 'links' => $links]);
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\updateMovieRequest  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(updateMovieRequest $request, $id)
    {
        $movie = movie::find($id);
        $movie->update($request->all());
        if($request->file('new_image') !== null){
            if(file_exists($movie->image)) unlink($movie->image);
            $movie->addMiniImage($request->file('new_image'), true);
        }
        if($request->file('new_big_image') !== null){
            if(file_exists($movie->big_image)) unlink($movie->big_image);
            $movie->addBigImage($request->file('new_big_image'), true);
        }

        $movie->replaceLinks($request->input('links'));
        $movie->replaceGenres($request->input('genres'));

        return redirect(url('movies/'.$movie->id.'-'.str_replace('.', '_', $movie->name)));

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        movie::findOrFail($id)->remove($id);
        return redirect('/movies');
    }
}
