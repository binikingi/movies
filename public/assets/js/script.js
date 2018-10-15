function addGenre(){
	var current = $("#genre-div").html();
	var current = current + '<select name="genres[]" class="genres">' + $("select.genres").html() + '</select>';
	$('#genre-div').html(current);
}

function createGenre(){
	var check = prompt('Enter name for the Genre:');
	if(check != null && check.trim() != ''){
		$.post( "http://localhost:8888/genres", { 
			_token 	: $('meta[name=csrf-token]').attr('content'),
			genre 	: check 
		})
		.done(function( data ) {
			if(data == 'ok')
				location.reload();
			else
			alert(data);
		});
	}
}

function removeGenre(id){
	var check = confirm('Are you sure you want te remove this genre?');
	if(check){
		$.post( "http://localhost:8888/genres/"+id, {
			_token	: $('meta[name=csrf-token]').attr('content'),
			_method : 'DELETE',
			id		: id
		})
		  .done(function( data ) {
		    if(data == 'ok')
		    	location.reload();
		    else
		    	alert(data);
		  });
	}
}

function editGenre(id){
	var check = prompt('Enter new name for this genre:');
	if(check != null && check.trim() != ''){
		$.post( "http://localhost:8888/genres/"+id, { 
			_token 	: $('meta[name=csrf-token]').attr('content'),
			_method	: 'PUT',
			id 		: id,
			genre 	: check 
		})
		.done(function( data ) {
			if(data == 'ok')
				location.reload();
			else
			alert(data);
		});
	}	
}

function addLink(){
	$('#link-div').append('<input class="form-control" name="links[]" type="text">');
}

function deletecheck(){
	var check = confirm("are you sure you want to delete this movie?");
	if(check)
		$("#deleteForm").submit();
}

function showDescription(){
	$('#movie-description').slideToggle('fast');
}

function watched(id){
	$.post( "http://localhost:8888/user/watched", { 
			_token 	: $('meta[name=csrf-token]').attr('content'),
			id 		: id, 
		})
		.done(function( data ) {
			if(data == 'ok')
				location.reload();
			else
				alert(data);
		});
}

function unwatch(id){
	$.post( "http://localhost:8888/user/unwatch", { 
			_token 	: $('meta[name=csrf-token]').attr('content'),
			id 		: id, 
		})
		.done(function( data ) {
			if(data == 'ok')
				location.reload();
			else
				alert(data);
		});
}

function fav(id){
	$.post( "http://localhost:8888/user/fav", { 
			_token 	: $('meta[name=csrf-token]').attr('content'),
			id 		: id, 
		})
		.done(function( data ) {
			if(data == 'ok')
				location.reload();
			else
				alert(data);
		});
}

function unfav(id){
	$.post( "http://localhost:8888/user/unfav", { 
			_token 	: $('meta[name=csrf-token]').attr('content'),
			id 		: id, 
		})
		.done(function( data ) {
			if(data == 'ok')
				location.reload();
			else
				alert(data);
		});
}

$('#searchBox').change(function(){
	$('#result').show();
});

$(document).on('input', '#searchBox',  function() {
	$.post('http://localhost:8888/getNames', {
		_token	: $('meta[name=csrf-token]').attr('content'),
		s 		: $('#searchBox').val()
	})
	.done(function(data){
		$('#result').html('<ul id="result-list">' + data + '<hr id="hr-without"></ul>');
	});
   	$('#result').show();
})
.focusout(function(){
	setTimeout(function() {
		$('#result').hide();
	}, 100);	
});