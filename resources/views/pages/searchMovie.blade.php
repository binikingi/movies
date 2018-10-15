@extends('app')

@section('content')
	<h2>{{ checkHebrew()?'תוצאות חיפוש עבור:':'Search Results For:' }} "{{ $_GET['s'] }}"</h2>
	<!--@foreach($movies as $m)
		<a href="{{ str_replace(' ', '+', url('movies/'.$m->id.'-'.$m->name)) }}">
			<div class="movie" style="background-image: url('{{ asset($m->image) }}')">
				<div class="movie-header">{{ checkHebrew()?$m->heb_name:$m->name }}</div>
			</div>
		</a>
	@endforeach-->
	@foreach($movies as $m)
		<a href="{{ url(str_replace(' ', '+', 'movies/'.$m->id.'-'.$m->name)) }}">
			<div class="movie {{ in_array($m->id, $watched)?'watched':'' }}" style="background-image: url('{{ asset($m->image) }}')">
				{!!in_array($m->id, $watched)?'<span class="glyphicon glyphicon-eye-open symbols symbols-bigger"></span>':''!!}
				{!!in_array($m->id, $favorites)?'<span class="glyphicon glyphicon-star symbols symbols-bigger"></span>':''!!}
				<div class="movie-header">
					<div class="more-for-movie"><b>{!! checkHebrew()?$m->heb_name:$m->name !!}</b><br>
					<div class="min-desc">{{ checkHebrew()?mb_substr($m->heb_desc, 0, 63):mb_substr($m->description, 0, 63) }}...</div></div>
				</div>
			</div>
		</a>
	@endforeach
@endsection