<?php
use seeit\genre;
use seeit\movie;

Route::get('movieCount', function(){
	$counter = 0;
	$movies = movie::all();
	foreach($movies as $m)
		$counter++;
	return $counter;
});

Route::get('/genreTag/{id}-{name?}', function($id, $name=null){
	$genre = seeit\genre::findOrFail($id);

/*use App\movie_link;

Route::get('addServers', function(){
	$links = movie_link::all();
	foreach($links as $link){
		if($link->id > 911){
			try{
				$html = file_get_contents($link->link);

				if(strpos($html, '<meta name="og:url" content="https://openload.co')){
					$link->update(['server'=>'openload.co']);
					continue;
				}
				elseif (strpos($html, '<a class="navbar-brand logo" href="http://youwatch.org">')){
					$link->update(['server'=>'youwatch.org']);
					continue;
				}
				elseif(strpos($html, '<link rel="icon" type="image/png" href="http://cdn.vidspot.net/theme/beautiful4/images/favicon.png">')){
					$link->update(['server'=>'vidspot.net']);
					continue;
				}
				elseif(strpos($html, '<link rel="icon" type="image/png" href="http://ucdn.allmyvideos.net/images/favicon.png">')){
					$link->update(['server'=>'allmyvideos.net']);
					continue;
				}
				elseif(strpos($html, '<link rel="stylesheet" type="text/css" media="screen,projection,print" href="http://goodvideohost.com/css/reset.css">')){
					$link->update(['server'=>'goodvideohost.com']);
					continue;
				}
				else continue;
			}
			catch(Exception $e){
				continue;
			}
		}
	}
*/});

Route::get('genreTag/{id}-{name?}', function($id, $name=null){
	$genre = seeit\genre::findOrFail($id);
	$movies = $genre->getMovies();
	return view('pages.genreTag', ['movies' => $movies, 'genre' => $genre]);
});

Route::group(['prefix' => 'lang'], function(){
	Route::get('{code}', function($code){
		$_SESSION['lang'] = $code;
		return redirect()->back();
	});
});

Route::group(['prefix' => 'user', 'middleware' => 'auth'], function(){
	Route::post('watched', 'userController@addWatched');
	Route::post('unwatch', 'userController@unwatched');
	Route::post('fav', 'userController@addFav');
	Route::post('unfav', 'userController@unFav');
	Route::get('favorites', 'userController@favorites');
});

Route::post('getNames', 'pagesController@getNames');

Route::get('/', 'movieController@index');

Route::group(['prefix' => 'auth'], function(){
	Route::get('login', 'Auth\AuthController@getLogin');
	Route::post('login', 'Auth\AuthController@postLogin');
	Route::get('logout', 'Auth\AuthController@getLogout');
	Route::get('register', 'Auth\AuthController@getRegister');
	Route::post('register', 'Auth\AuthController@postRegister');

});

Route::group(['prefix' => 'password'], function(){
	Route::get('email', 'Auth\PasswordController@getEmail');
	Route::post('email', 'Auth\PasswordController@postEmail');
	Route::get('reset/{token}', 'Auth\PasswordController@getReset');
	Route::post('reset', 'Auth\PasswordController@postReset');
});

Route::resource('movies', 'movieController');
Route::get('/movies/{id}-{name}', 'movieController@show');
//Route::resource('series', 'serieController');
//Route::resource('episodes', 'episodeController');
Route::resource('genres', 'genreController');