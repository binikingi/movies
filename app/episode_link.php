<?php

namespace seeit;

use Illuminate\Database\Eloquent\Model;

class episode_link extends Model
{
    protected $table = 'episode_links';

    protected $fillable = ['episode_id', 'link'];
}
