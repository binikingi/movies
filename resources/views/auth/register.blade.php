@extends('app')

@section('content')
	<h1>{{ checkHebrew()?'הרשמה':'Register' }}</h1>	
	{!! Form::open() !!}
	    <div class="form-group">
	        <label>{{ checkHebrew()?'שם:':'Name' }}</label>
	        {!! Form::text('name', null, ['class' => 'form-control']) !!}
	    </div>

	    <div class="form-group">
	        <label>{{ checkHebrew()?'אימייל:':'Email:' }}</label>
	        {!! Form::email('email', null, ['class' => 'form-control']) !!}
	    </div>

	    <div class="form-group">
	        <label>{{ checkHebrew()?'סיסמה:':'Password:' }}</label>
	        {!! Form::password('password', ['class' => 'form-control']) !!}
	    </div>

	    <div class="form-group">
	       	<label>{{ checkHebrew()?'אימות סיסמה:':'Confirm Password:' }}</label>
	        {!! Form::password('password_confirmation', ['class' => 'form-control']) !!}
	    </div>

	    <div class="form-group">
	        {!! Form::submit(checkHebrew()?'הרשם':'Register', ['class' => 'btn btn-default']) !!}
	    </div>
	{!! Form::close() !!}
	@include('errors.global')
@endsection