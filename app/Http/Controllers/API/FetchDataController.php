<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Models\FetchData;
use Exception;
use Illuminate\Http\Request;

class FetchDataController extends Controller
{
    public function getData($nisn)
    {
        $data = [];

        try {
            if (FetchData::where('nisn', $nisn)->get()) {
                $data = FetchData::where('nisn', $nisn)->get();
                return response()->json([
                    'status' => 'success',
                    'data' => $data,
                    'message' => 'Data berhasil ditemukan'
                ], 200);
            }
        } catch (Exception $e) {
            return response()->json([
                'status' => $e->getCode(),
                'message' => 'Data tidak ditemukan'
            ], 404);
        }
    }
}
