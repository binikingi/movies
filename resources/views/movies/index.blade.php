@extends('app')

@section('content')
	@if(isset($_GET['s']))
		<h2>{{ checkHebrew()?'תוצאות חיפוש עבור:':'Search Results For:' }} "{{ $_GET['s'] }}"</h2>
	@endif
	@if(Auth::check() && Auth::user()->isAdmin()) 
		<a href="{{ url('movies/create') }}">
			<div class="movie" style="background-image: url('{{ asset('images/global/plus.png') }}');">
				<div class="movie-header">{{checkHebrew()?'הוספת סרט':'Add Movie'}}</div>
			</div>
		</a>
	@endif
	@foreach($movies as $m)
		<a href="{{ url(str_replace('.', ',', str_replace(' ', '+', 'movies/'.$m->id.'-'.$m->name))) }}">
			<div class="movie {{ in_array($m->id, $watched)?'watched':'' }}" data-original="{{ asset($m->image) }}">
				{!!in_array($m->id, $watched)?'<span class="glyphicon glyphicon-eye-open symbols symbols-bigger"></span>':''!!}
				{!!in_array($m->id, $favorites)?'<span class="glyphicon glyphicon-star symbols symbols-bigger"></span>':''!!}
				<div class="movie-header">
					<div class="more-for-movie"><b>{!! checkHebrew()?$m->heb_name:$m->name !!}</b><br>
						<div class="min-desc">
							{{ checkHebrew()?mb_substr($m->heb_desc, 0, 63):mb_substr($m->description, 0, 63) }}...<br>
							<b>{{ '('.$m->year.')'}}</b>
						</div>
					</div>
				</div>
			</div>
		</a>
	@endforeach
	<script>
		$("div.movie").lazyload({
		      effect : "fadeIn"
		  });
	</script>
@endsection