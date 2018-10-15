@extends('app')

@section('content')
	<h1>{{ checkHebrew()?'התחברות':'Login' }}</h1>
	{!! Form::open() !!}
		<div class="form-group">
			<label>{{ checkHebrew()?'אימייל:':'Email:' }}</label>
			{!! Form::email('email', null, ['class' => 'form-control']) !!}
		</div>

		<div class="form-group">
	        <label>{{ checkHebrew()?'סיסמה:':'Password:' }}</label>
	        {!! Form::password('password', ['class' => 'form-control']) !!}
	    </div>
	    <div class="form-group">
	        {!! Form::checkbox('remember', null) !!}
	    	{{ checkHebrew()?'זכור אותי':'Remember me' }}
	    </div>
	    <a href="{{ url('password/email') }}">{{ checkHebrew()?'שחכת את הסיסמה?':'Forgot Password' }}</a>
	    <div class="form-group">
	        {!! Form::submit(checkHebrew()?'התחבר':'Login', ['class' => 'btn btn-default']) !!}
	    </div>
	{!! Form::close() !!}
	@include('errors.global')
@endsection