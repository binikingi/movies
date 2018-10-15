<?php

namespace seeit;

use Illuminate\Database\Eloquent\Model;

class movie_genre extends Model
{
    protected $table = 'movie_genres';

    protected $fillable = ['movie_id', 'genre_id'];

    public function getGenreName(){
    	$genre  = genre::find($this->genre_id);
    	return $genre;
    }
}
