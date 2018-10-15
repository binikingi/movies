<?php

namespace seeit;

use Illuminate\Database\Eloquent\Model;

class serie extends Model
{
    protected $table = 'series';

    protected $fillable = ['name', 'description', 'image'];
}
