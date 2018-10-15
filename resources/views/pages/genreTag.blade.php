@extends('app')

@section('content')
	<style>
		@media (max-width: 431px){
			.container a:nth-child(1n+8) > .movie {
				height: 158px;
				width: 32%;
			}
		}
	</style>
	<h1>{{ checkHebrew()?$genre->heb_genre:$genre->genre }}</h1>
	@foreach($movies as $m)
		<a href="{{ url(str_replace('.', ',', str_replace(' ', '+', 'movies/'.$m->id.'-'.$m->name))) }}">
			<div class="movie" style="background-image: url('{{ asset($m->image) }}')">
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
@endsection