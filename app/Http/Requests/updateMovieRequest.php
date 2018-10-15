<?php

namespace seeit\Http\Requests;

use seeit\Http\Requests\Request;

class updateMovieRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'          => 'required',
            'heb_name'      => 'required',
            'description'   => 'required',
            'heb_desc'      => 'required',
            'genres'        => 'required',
            'trailer'       => 'required',
            'new_image'     => 'image',
            'new_big_image' => 'image',
            'year'          => 'required|integer|min:1900'
        ];
    }
}
