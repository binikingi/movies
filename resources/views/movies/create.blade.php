@extends('app')

@section('content')
<h1>Add Movie</h1>
@include('errors.global')
{!! Form::open(['url' => 'movies', 'method' => 'POST', 'files' => true]) !!}
<div class="row">
  <div class="form-group col-md-6">
   <label>Name</label>
   {!! Form::text('name', null, ['class' => 'form-control']) !!}
 </div>
 <div class="form-group col-md-6">
   <label>Hebrew Name</label>
   {!! Form::text('heb_name', null, ['class' => 'form-control']) !!}
 </div>
</div>
<div class="row">
  <div class="form-group col-md-6">
   <label>Description</label>
   {!! Form::textarea('description', null, ['class' => 'form-control']) !!}
 </div>
 <div class="form-group col-md-6">
   <label>Hebrew Description</label>
   {!! Form::textarea('heb_desc', null, ['class' => 'form-control']) !!}
 </div>
</div>
<div class="row">
  <div class="form-group col-md-3">
    <label>Mini Image</label>
    {!! Form::file('image') !!}
  </div>
  <div class="form-group col-md-3">
   <label>Big Image</label>
   {!! Form::file('big_image') !!}
 </div>
</div>
<div class="row">
  <div class="form-group col-md-4">
    <label>IMDB rating</label>
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
  <select name="genres[]" class="genres">
    @foreach(seeit\genre::all() as $genre)
    <option value="{{ $genre->id }}">{{ $genre->genre }}</option>
    @endforeach
  </select>
</div>
<span onclick="addGenre()" class="btn btn-default">Add genre</span>
<div class="form-group" id="link-div">
  <label>Links</label>
  {!! Form::text('links[1]', null, ['class' => 'form-control']) !!}
</div>
<span onclick="addLink()" class="btn btn-default">Add Link</span>
<div class="form-group">
  {!! Form::checkbox('popular') !!}
  <label>Is this movie popular</label>
</div>
<div class="form-group">
 {!! Form::submit('Add', ['class' => 'btn btn-primary']) !!}
</div>
{!! Form::close() !!}
@endsection