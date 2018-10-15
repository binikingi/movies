@extends('app')

@section('content')
	<h1>{{checkHebrew()?'מועדפים':'Favorites'}}</h1>
	@foreach($favorites as $fav)
		<a href="{{ url(str_replace(' ', '+', 'movies/'.$fav->id.'-'.$fav->name)) }}">
			<div class="movie {{ in_array($fav->id, $watched)?'watched':'' }}" style="background-image: url('{{ asset($fav->image) }}')">
				{!!in_array($fav->id, $watched)?'<span class="glyphicon glyphicon-eye-open symbols symbols-bigger"></span>':''!!}
				<span class="glyphicon glyphicon-star symbols symbols-bigger"></span>
				<div class="movie-header">
					<div class="more-for-movie"><b>{!! checkHebrew()?$fav->heb_name:$fav->name !!}</b><br>
					<div class="min-desc">{{ checkHebrew()?mb_substr($fav->heb_desc, 0, 63):mb_substr($fav->description, 0, 63) }}...</div></div>
				</div>
			</div>
		</a>
	@endforeach
@endsection