@extends('app')

@section('content')
	<h1>{{ checkHebrew()?"ז'אנרים":"Genres" }}</h1>
	<button onclick="createGenre()" type="button" class="btn btn-default genre-button" aria-label="Left Align">
		<span class="glyphicon glyphicon-plus" aria-hidden="true"></span> <span class="genre-edit-link">{{ checkHebrew()?"הוסף ז'אנר":"Add Genre" }}</span>
	</button>
	@foreach($genres as $genre)
		<button type="button" class="btn btn-default genre-button" aria-label="Left Align">
			<span onclick="removeGenre({{ $genre->id }})" class="glyphicon glyphicon-remove" aria-hidden="true"></span> <span onclick="editGenre({{ $genre->id }})" class="genre-edit-link">{{ checkHebrew()?$genre->heb_genre:$genre->genre }}</span>
		</button>
	@endforeach
@endsection