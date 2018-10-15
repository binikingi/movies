<?php

namespace seeit;

use Illuminate\Database\Eloquent\Model;

use seeit\movie_link;
use seeit\genre;
use seeit\movie_genre;
use DB;
use Auth;



class movie extends Model
{
    protected $table = 'movies';

    protected $fillable = ['name', 'heb_name', 'description', 'heb_desc', 'year', 'image', 'imdb_rating', 'trailer', 'popular'];

    public function getGenres(){
    	$genres_id = $this->hasMany('seeit\movie_genre')->get();
    	$genres = [];
    	foreach($genres_id as $genre)
    		$genres[] = $genre->getGenreName();
    	return $genres;
    }

    public function getLinks(){
    	return $this->hasMany('seeit\movie_link')->get();
    }

    public function scopeBylist($query){
        $query->orderBy('popular', 'DESC')->latest();
    }

    public function addMiniImage($image, $save = false){
        if($image !== null){
            $destinationPath = 'images/movies/';
            $extension = $image->getClientOriginalExtension();
            do{
                $fileName = rand(111111,999999).'.'.$extension;
            } while(file_exists($destinationPath.$fileName));
            $image->move($destinationPath, $fileName);
            if($extension == 'jpg' || $extension == 'jpeg'){
                $img = imagecreatefromjpeg($destinationPath.$fileName);
                imagejpeg($img, $destinationPath.$fileName, 70);
            }
            $this->image = $destinationPath.$fileName;
            if($save) $this->save();
        }
    }

    public function addBigImage($image, $save = false){
        if($image !== null){
            $destinationPath = 'images/movies/';
            $extension = $image->getClientOriginalExtension();
            do{
                $fileName = rand(111111,999999).'.'.$extension;
            } while(file_exists($destinationPath.$fileName));
            $image->move($destinationPath, $fileName);
            $this->big_image = $destinationPath.$fileName;
            if($save) $this->save();
        }
    }

    public function addLinks(Array $links, $save = false){
        foreach($links as $link){
            if(!empty($link)){
                if(strpos($link, 'sh.st') === false){
                    $ch = curl_init('https://api.shorte.st/v1/data/url');
                    curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'PUT');
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
                    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
                    curl_setopt($ch, CURLOPT_HTTPHEADER, ["public-api-token: ed37bc1d99d9619e3ec184c5d6478730"]);
                    curl_setopt($ch, CURLOPT_POSTFIELDS, 'urlToShorten='.$link);
                    $json = json_decode(curl_exec($ch), true);
                    if($json['status'] == 'ok')
                        movie_link::create(['movie_id' => $this->id, 'link' => $json['shortenedUrl']]);
                    else
                        movie_link::create(['movie_id' => $this->id, 'link' => $link]);
                }
                else{
                    movie_link::create(['movie_id' => $this->id, 'link' => trim($link)]);
                }
            }
        }
        if($save) $this->save();
    }

    public function deleteLinks(){
        foreach($this->getLinks() as $link)
            $link->delete();
    }

    public function replaceLinks(Array $links){
        $this->deleteLinks();
        $this->addLinks($links);
    }

    public function addGenres(Array $genres, $save = false){
        $addGenres = [];
        foreach($genres as $genre){
            if(!in_array(trim($genre), $addGenres)){
                if(!empty(genre::find($genre))){
                    movie_genre::create(['movie_id' => $this->id, 'genre_id' => trim($genre)]);
                }
                $addGenres[] = trim($genre);
            }
        }
        if(movie_genre::where('movie_id', $this->id)->get()->count() == 0)
            movie_genre::create(['movie_id' => $this->id, 'genre_id' => genre::first()->id]);
        if($save) $this->save();
    }

    public function deleteGenres(){
        foreach(movie_genre::where('movie_id', $this->id)->get() as $g)
            $g->delete();
    }

    public function replaceGenres(Array $genres){
        $this->deleteGenres();
        $this->addGenres($genres);
    }

    public function remove($id){
        DB::table('watched')->where('movie_id', $id)->delete();
        DB::table('favorites')->where('movie_id', $id)->delete();
        $this->deleteGenres();
        $this->deleteLinks();
        unlink($this->image);
        unlink($this->big_image);
        $this->delete();
    }
}
