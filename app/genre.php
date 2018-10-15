<?php

namespace seeit;

use Illuminate\Database\Eloquent\Model;
use seeit\movie_genre;
use seeit\movie;

class genre extends Model
{
    protected $table = 'genres';

    protected $fillable = ['genre'];

    public function getMovies($limit = null){
    	$movie_genres = movie_genre::where('genre_id', $this->id)->take(200)->get();
    	$movies = [];
    	if(!empty($movie_genres)){
            if($limit != null){
                for($i=$limit; $i>0; $i--)
                    if($i <= sizeof($movie_genres)-1)
                        $movies[] = movie::find($movie_genres[$i]->movie_id);
            }
            else
                foreach($movie_genres as $mg){
                    $movies[] = movie::find($mg->movie_id);
                }
    	}
    	else $movies = null;
    	return $movies;
    }
}
