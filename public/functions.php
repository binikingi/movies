<?php

use seeit\movie;

function checkHebrew(){
	if(findCookie('lang') == 'en')
		return false;
	return true;
}

function findCookie($index){
	return isset($_SESSION[$index])? $_SESSION[$index]:'';
}

function icreaseViews(movie $movie){
	if(isset($_SESSION['movieViews'])){
		if(strpos($_SESSION['movieViews'], strval($movie->id)) === false){
			$movie->increment('view');
			$_SESSION['movieViews'] .= $movie->id.',';
		}
	}
	else $_SESSION['movieViews'] = '0';
}