<?php

namespace seeit;

use Illuminate\Database\Eloquent\Model;

class episode extends Model
{
    protected $table = 'episodes';

    protected $fillable = ['serie_id', 'season_number', 'episode_number'];
}
