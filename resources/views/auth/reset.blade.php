@extends('app')

@section('content')
	<h1>{{ checkHebrew()?'איפוס סיסמה':'Reset Your Password' }}</h1>
	{!! Form::open(['url' => '/password/reset']) !!}
	    {!! Form::hidden('token', $token) !!}

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
	    	{!! Form::submit(checkHebrew()?'אפס!':'Reset password!', ['class' => 'btn btn-default']) !!}
	    </div>
	</form>
@endsection