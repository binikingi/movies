<?php

namespace seeit;

use Illuminate\Database\Eloquent\Model;

class movie_link extends Model
{
    protected $table = 'movie_links';

    protected $fillable = ['movie_id', 'link', 'server'];
}
