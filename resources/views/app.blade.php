<!DOCTYPE html>
<html {{ checkHebrew()?'dir="rtl"':'' }}>
<head>
	<link href='https://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/bootstrap-theme.min.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('assets/css/style.css') }}">

	<meta name="csrf-token" content="{{ csrf_token() }}"> 
	<script src="{{ asset('assets/js/jquery.min.js') }}"></script>
	<script src="{{ asset('assets/js/jquery.lazyload.js') }}"></script>
	<script src="{{ asset('assets/js/bootstrap.min.js') }}"></script>
	<script src="{{ asset('assets/js/script.js') }}"></script>
	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<meta charset="utf-8">           
        
	
	<title>Seeit @if(isset($title)) - {{ $title }} @endif</title>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top" @if(checkHebrew()) dir="rtl" @else dir="ltr" @endif>
	  <div class="container">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header @if(checkHebrew()) navbar-right @endif">
	      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="{{ url('/') }}">
	      	<img style="max-width:100px; margin-top: -16px;" src="/images/global/logoSeeit.png">
	      </a>
	    </div>

	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	      <ul class="nav navbar-nav @if(checkHebrew()) navbar-right @else navbar-left @endif">
	      <li class="dropdown">
			   	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">@if(checkHebrew()) ז'אנרים @else Genres @endif <span class="caret"></span></a>
		          	<ul class="dropdown-menu list-inline list-genres">
		          		@foreach(seeit\genre::all() as $genre)
		          			<li class="genre-li"><a href="/genreTag/{{ $genre->id . '-'}}{{checkHebrew()?$genre->heb_genre:$genre->genre }}">{{ checkHebrew()?$genre->heb_genre:$genre->genre }}</a></li>
		          		@endforeach
		          	</ul>
	        </li>
	        <li><a href="{{ url('movies') }}">@if(checkHebrew()) סרטים @else Movies @endif <span class="sr-only">(current)</span></a></li>
	      	{!! Form::open(['class' => 'navbar-form navbar-left', 'role' => 'search', 'method' => 'GET', 'url' => '/']) !!}
		        <div class="form-group">
		          {!! Form::text('s', null, ['placeholder' => checkHebrew()?'חפש סרטים':'Search Movies', 'class' => 'form-control', 'autocomplete' => 'off', 'id' => 'searchBox']) !!}
		          <div id="result"></div>
		        </div>
		        {!! Form::submit(checkHebrew()?'חפש':'Search', ['class' => 'btn btn-default']) !!}
		    {!! Form::close() !!}
	      </ul>
	      <ul class="nav navbar-nav @if(!checkHebrew()) navbar-right @else navbar-left @endif">
		      @if(!Auth::check())
		        	<li><a href="{{ url('auth/login') }}">@if(checkHebrew()) התחבר @else Login @endif</a></li>
		        	<li><a href="{{ url('auth/register') }}">@if(checkHebrew()) הרשם @else Register @endif</a></li>
		      @else
		      @if(Auth::user()->isAdmin())
			      	<li class="dropdown">
			          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">@if(checkHebrew()) אפשריות מנהל @else Admin options @endif <span class="caret"></span></a>
			          <ul class="dropdown-menu">
			            <li><a href="{{ url('genres') }}">{{ checkHebrew()?'ג\'אנרים':'Genres' }}</a></li>
			            <li role="separator" class="divider"></li>
			            <li><a href="{{ url('movies/create') }}">{{ checkHebrew()?'הוספת סרט':'Add Movie' }}</a></li>
			          </ul>
			        </li>
		        @endif
				<li class="dropdown">
		          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">@if(checkHebrew()) שלום @else Hello @endif {{ explode(' ', Auth::user()->name)[0] }} <span class="caret"></span></a>
		          <ul class="dropdown-menu">
		            <li><a href="{{ url('/user/favorites') }}">{{ checkHebrew()?'מועדפים':'Favorites' }}</a></li>
		            <li role="separator" class="divider"></li>
		            <li><a href="{{ url('auth/logout') }}">{{ checkHebrew()?'התנתק':'Logout' }}</a></li>
		          </ul>
		        </li>
		      @endif
		      <li class="dropdown">
		      	<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="tru" aria-expended="false">{!! checkHebrew()?'<img height="20" widht="20" src="'. asset('images/global/hecon.png') .'">':'<img height="20" widht="20" src="'. asset('images/global/encon.png') .'">' !!} <span class="caret"></span></a>
		      	<ul class="dropdown-menu">
		      		@if(checkHebrew())
		      			<li><a href="{{ url('lang/en') }}"><img height="20" widht="20" src="{{ asset('images/global/encon.png') }}"></a></li>
		      		@else
		      			<li><a href="{{ url('lang/he') }}"><img height="20" widht="20" src="{{ asset('images/global//hecon.png') }}"></a></li>
		      		@endif
		      	</ul>
		      </li>
	      </ul>
	    </div><!-- /.navbar-collapse -->
	  </div><!-- /.container-fluid -->
	</nav>
	<div class="container" @if(isset($contId)) id="{{ $contId }}" @endif @if(checkHebrew()) dir="rtl" @endif>
		@yield('content')
	</div>
</body>
</html>