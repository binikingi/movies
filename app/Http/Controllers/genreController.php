<?php

namespace seeit\Http\Controllers;

use Illuminate\Http\Request;

use seeit\Http\Requests;
use seeit\Http\Requests\genreRequest;
use seeit\Http\Controllers\Controller;

use seeit\genre;
use seeit\movie_genre;
use seeit\serie_genre;

class genreController extends Controller
{
    public function __construct(){
        $this->middleware('admin');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $genres = genre::latest()->get();
        return view('genres.index', ['genres' => $genres]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return redirect('genres');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(genreRequest $request)
    {
        if(genre::create($request->all()))
            return 'ok';
        else
            return 'there was a problem';
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        return redirect('genres');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        return redirect('genres');
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(genreRequest $request, $id)
    {
        $genre = genre::find($id);
        if(empty($genre))
            return 'Could not find the genre!';
        else{
            if($genre->update(['genre' => $request->input('genre')]))
                return 'ok';
            else
                return 'There was a problem';
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $err = false;
        foreach(serie_genre::where('genre_id', $id)->get() as $serie_genre)
            if(!$serie_genre->delete())
                $err = true;
        foreach(movie_genre::where('genre_id', $id)->get() as $movie_genre)
            if(!$movie_genre->delete())
                $err = true;
        if(!genre::find($id)->delete())
            $err = true;
        if(!$err)
            return 'ok';
        else
            return 'There was a problem';
    }
}
