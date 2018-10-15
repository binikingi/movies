@extends('app')

@section('content')
	<h1>{{ checkHebrew()?'איפוס סיסמה':'Reset Password' }}</h1>
	{!! Form::open(['url' => url('password/email')]) !!}
	    <div class="form-group">
	        <label>{{ checkHebrew()?'אימייל:':'Email:' }}</label>
	        {!! Form::email('email', null, ['class' => 'form-control']) !!}
	    </div>

	    <div>
	    	{!! Form::submit(checkHebrew()?'שלח קישור לאיפוס סימה':'Send Reset Link', ['class' => 'btn btn-default']) !!}
	    </div>
	    @include('errors.global')
	{!! Form::close() !!}
@endsection