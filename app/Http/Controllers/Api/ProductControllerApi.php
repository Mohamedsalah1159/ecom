<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Model\Products;
use App\Traits\GenralTraits;

class ProductControllerApi extends Controller
{
    use GenralTraits;
    public function index(){
        $products = Products::select('*')->get();
        return $this->returnSuccess('200', 'They are all Products', 'data', $products);

    }
}
