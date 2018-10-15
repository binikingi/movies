<?php

namespace seeit\Http\Controllers;

use Illuminate\Http\Request;

use Auth;
use DB;
use seeit\movie;


use seeit\Http\Requests;
use seeit\Http\Controllers\Controller;

class userController extends Controller
{
	protected $favorites = [];
    protected $watched = [];
	protected $user;

	public function __construct(){
		$this->user = Auth::user();
		foreach(DB::table('watched')->where('user_id', $this->user->id)->get() as $watch)
                $this->watched[] = $watch->movie_id;
            foreach(DB::table('favorites')->where('user_id', $this->user->id)->get() as $fav)
                $this->favorites[] = $fav->movie_id;
	}
	
    public function addWatched(Request $request){
    	$where = ['user_id' => $this->user->id, 'movie_id' => intval($request->input('id'))];
		if(DB::table('watched')->where($where)->count() <= 0){
			$movie = movie::find(intval($request->input('id')));
			if(!empty($movie)){
				DB::table('watched')->insert([
					'user_id' => $this->user->id,
					'movie_id' => $movie->id
					]);
				return 'ok';
			}
			else return checkHebrew()?'הסרט לא נמצא':'We couldnt find the movie';
		}
		else return 'it seems you have seen this movie';
    }

    public function unwatched(Request $request){
    	$wheres = ['user_id' => $this->user->id, 'movie_id' => intval($request->input('id'))];
		DB::table('watched')->where($wheres)->limit(1)->delete();
		return 'ok';
    }

    public function addFav(Request $request){
    	$where = ['user_id' => $this->user->id, 'movie_id' => intval($request->input('id'))];
		if(DB::table('favorites')->where($where)->count() <= 0){
			$movie = movie::find(intval($request->input('id')));
			if(!empty($movie)){
				DB::table('favorites')->insert([
					'user_id' => $this->user->id,
					'movie_id' => $movie->id
					]);
				return 'ok';
			}
			else return checkHebrew()?'הסרט לא נמצא':'We couldnt find the movie';
		}
		else return checkHebrew()?'הסרט כבר נמצא במועדפים שלך':'This movie is already on your favorite list';
    }

    public function unFav(Request $request){
    	$wheres = ['user_id' => $this->user->id, 'movie_id' => intval($request->input('id'))];
		DB::table('favorites')->where($wheres)->limit(1)->delete();
		return 'ok';
    }

    public function favorites(){
    	$favorites = $this->user->getFavorites();
    	return view('pages.favorites', ['title' => 'מועדפים', 'favorites' => $favorites, 'watched' => $this->watched, 'contId' => 'all-movies']);
    }
}
