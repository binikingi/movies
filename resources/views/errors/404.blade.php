@extends('app')

@section('content')
	<h3>@if(checkHebrew())
			הדף שאותו חיפשת לא נמצא אנא חזור <a href="{{url('/')}}">לדף הבית</a>
		@else
			The page you looking for could not be found please go back to the <a href="url('/')">home page</a>
		@endif</h3>
@endsection