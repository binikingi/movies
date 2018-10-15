@extends('app')

@section('content')
	<style>
		@media (min-width:1280px){
		    #fixer{
		    	width:100%;
		    	height:100vh;
		    	z-index: -1;
		    	position:fixed;
				background-image: url({{ '/' . $movie->big_image }});
			}
		}  
		#fixer{
			background-repeat: no-repeat;
			background-size: 100% 100vh;
		}
	</style>
	<div id="fixer"></div>
	<div id="movie" {{ checkHebrew()?'style=text-align:right':'' }}>
		@if(Auth::check() && Auth::user()->isAdmin()) <a href="{{ url('movies/'.$movie->id.'/edit') }}" class="btn btn-primary" style="width: 100% !important; margin-top: 2px; margin-bottom: 2px">Edit Movie</a><br> @endif
		<h1 id="movie-header" class="padd-5">
			{{ checkHebrew()?$movie->heb_name:$movie->name }}
			@if(Auth::check())
				{!! in_array($movie->id, $watched)?'<span class="glyphicon glyphicon-eye-open symbols selected" onclick="unwatch('.$movie->id.')" title="סמן כלא נצפה"></span>':'<span class="glyphicon glyphicon-eye-close symbols unselected" onclick="watched('.$movie->id.')" title="סמן כנצפה"></span>' !!}
				{!! in_array($movie->id, $favorites)?'<span class="glyphicon glyphicon-star symbols selected" onclick="unfav('.$movie->id.')" title="הסר מהמועדפים" ></span>':'<span class="glyphicon glyphicon-star-empty symbols unselected" onclick="fav('.$movie->id.')" title="הוסף למועדפים"></span>' !!}
			@endif
		</h1>
		<p id="movie-description" class="padd-5">
			"{{ checkHebrew()?$movie->heb_desc:$movie->description }}"
		</p>
		<!--<iframe width="560" height="315" src="{{ $movie->trailer }}" frameborder="0" allowfullscreen></iframe>-->
		<div id="movie-details" class="padd-5">
			{{ checkHebrew()?'דירוג:':'IMDB Rating:' }} <span class="label label-success">{{ $movie->imdb_rating }}</span><br>
			{{ checkHebrew()?"ז'אנרים:":'Grenres:' }} @foreach($genres as $genre) <span class="label label-primary"><a href="{{ url('genreTag/'.$genre->id.'-') }}{{ checkHebrew()?$genre->heb_genre:$genre->genre }}" class="genre-link">{{ checkHebrew()?$genre->heb_genre:$genre->genre }}</a></span> @endforeach<br>
			{{ checkHebrew()?'לצפייה ישירה':'Free Watch Online' }}<br>
			@foreach($links as $link)
				<a target="_blank" href="{{ $link->link }}" class="btn external-link label label-warning movie-link">
					{{ checkHebrew()?'לינק ':'Link' }} {{ $linkCount++ }} {{ ' - ' . $link->server }}
				</a>
			@endforeach
			<br>
			{{ checkHebrew()?'צפיות: '.$movie->view:'Views: '.$movie->view }}
		</div>
		<br>
	</div>
	<div id="more-movies" class="padd-5">
			<h3>{{ checkHebrew()?'עוד סרטים':'More Movies' }}</h3>
			<div id="wrapper">
				@foreach($similarMovies as $m)
					<a href="{{ url(str_replace('.', ',', str_replace(' ', '+', 'movies/'.$m->id.'-'.$m->name))) }}">
						<div class="movie {{ in_array($m->id, $watched)?'watched':'' }}" style="background-image: url('{{ asset($m->image) }}')">
							{!!in_array($m->id, $watched)?'<span class="glyphicon glyphicon-eye-open symbols symbols-bigger"></span>':''!!}
							{!!in_array($m->id, $favorites)?'<span class="glyphicon glyphicon-star symbols symbols-bigger"></span>':''!!}
							<div class="movie-header">
								<div class="more-for-movie"><b>{!! checkHebrew()?$m->heb_name:$m->name !!}</b></div>
							</div>
						</div>
					</a>	
				@endforeach
			</div>
		</div>
	<style>
		{{ checkHebrew()?'.symbols{float:left;}':'' }}
	</style>
@endsection