<?php

namespace seeit;

use Illuminate\Database\Eloquent\Model;

class serie_genre extends Model
{
    protected $table = 'serie_genres';

    protected $fillable = ['serie_id', 'genre_id'];
}
