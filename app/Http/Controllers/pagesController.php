<?php

namespace seeit\Http\Controllers;

use Illuminate\Http\Request;
use Auth;

use seeit\Http\Requests;
use seeit\Http\Controllers\Controller;

use seeit\movie;
use seeit\serie;
use seeit\episode;

use DB;

class pagesController extends Controller
{
	protected $favorites = [];
    protected $watched = [];
	public function __construct(){
		if(Auth::check()){
            foreach(DB::table('watched')->where('user_id', Auth::user()->id)->get() as $watch)
                $this->watched[] = $watch->movie_id;
            foreach(DB::table('favorites')->where('user_id', Auth::user()->id)->get() as $fav)
                $this->favorites[] = $fav->movie_id;
        }
	}
    protected function index(){
    	return redirect(url('movies'));
    }

    protected function getNames(Request $request){
    	$nameMatchs = movie::where('name', 'like', '%'.$request->input('s').'%')->orWhere('heb_name', 'like', '%'.$request->input('s').'%')->bylist()->limit(6)->get();
    	foreach($nameMatchs as $movie){
    		$name = checkHebrew()?$movie->heb_name:$movie->name;
    		echo '<hr id="hr-without"><li><a id="result-link" href="'.url('/movies/' . $movie->id . '-' . str_replace('.', '_', $movie->name)).'">'.$name.'</a></li>';
    	}
    }
}
