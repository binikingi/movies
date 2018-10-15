@extends('app')

@section('content')
	<h1>Edit Movie - {{ $movie->name }}</h1>
	@include('errors.global')
	{!! Form::model($movie, ['method' => 'PUT', 'url' => 'movies/'.$movie->id, 'files' => true]) !!}
		<div class="row">
			<div class="form-group col-md-6">
				<label>Name</label>
				{!! Form::text('name', null, ['class' => 'form-control']) !!}
			</div>
			<div class="form-group col-md-6">
	             <label>Hebrew Name</label>
	             {!! Form::text('heb_name', null, ['class' => 'form-control', 'dir'=>'rtl']) !!}
	      	</div>
	    </div>
	    <div class="row">
			<div class="form-group col-md-6">
		        <label>Description</label>
		        {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
		    </div>
		    <div class="form-group col-md-6">
	             <label>Hebrew Description</label>
	             {!! Form::textarea('heb_desc', null, ['class' => 'form-control', 'dir'=>'rtl']) !!}
	      	</div>
      	</div>
      	<div class="row">
		    <div class="form-group col-md-3">
		    	<label>Mini Image</label><br>
		    	<img id="mini-image" src="{{ asset($movie->image) }}" width="150"><br>
		    	*Leave blank for no changes*
		        {!! Form::file('new_image') !!}
	       	</div>
	       	<div class="form-group col-md-6">
	       		<label>Big Image</label><br>
	       		<img id="big-image" src="{{ asset($movie->big_image) }}" width="400"><br>
	       		*Leave blank for no changes*
	       		{!! Form::file('new_big_image') !!}
	       	</div>
	    </div>
	    <div class="row">
	       	<div class="form-group col-md-4">
		    	<label>IMDB rating:</label>
		        {!! Form::text('imdb_rating', null, ['class' => 'form-control']) !!}
	       	</div>
	       	<div class="form-group col-md-4">
	       		<label>Trailer (YouTube Link)</label>
	       		{!! Form::text('trailer', null, ['class' => 'form-control']) !!}
	       	</div>
	       	<div class="form-group col-md-4">
	       		<label>Publish Year</label>
	       		{!! Form::text('year', null, ['class' => 'form-control']) !!}
	       	</div>
       	</div>
       	<div class="form-group" id="genre-div">
       		<label>Gernes</label>
       		@foreach($genres as $g)
	       		<select name="genres[]" class="genres">
	       			<option value="{{ $g->id }}">{{ $g->genre }}</option>
		       		@foreach(seeit\genre::all() as $genre)
		       			@if($genre->id != $g->id)
		       				<option value="{{ $genre->id }}">{{ $genre->genre }}</option>
		       			@endif
		       		@endforeach
	       		</select>
	       	@endforeach
       	</div>
       	<span onclick="addGenre()" class="btn btn-default">Add genre</span>
       	<div class="form-group" id="link-div">
       		<label>Links</label>
       		@foreach($links as $link)
       			{!! Form::text('links['.$link->id.']', $link->link, ['class' => 'form-control']) !!}
       		@endforeach
       	</div>
       	<span onclick="addLink()" class="btn btn-default">Add Link</span>
       	<div class="form-group">
       		{!! Form::checkbox('popular') !!}
       		<label>Is this movie popular</label>
       	</div>
	    <div class="form-group">
	        {!! Form::submit('Save', ['class' => 'btn btn-default']) !!}
	    </div>
	{!! Form::close() !!}
	{!! Form::open(['method'=>'DELETE', 'url'=>'movies/'.$movie->id, 'id' => 'deleteForm']) !!}
	{!! Form::close() !!}
	<button class="btn btn-danger" id="deleteButton" onclick="deletecheck()">Delete this movie</button>
@endsection