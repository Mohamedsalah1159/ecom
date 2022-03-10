<?php
namespace App\Traits;


trait GenralTraits
{

    public function returnSuccess($status="200", $msg='', $key = null, $data= null){
        return response()->json([
            'status' => $status,
            'message' => $msg,
            $key => $data
        ]);
    }
}
