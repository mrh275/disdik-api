<?php

namespace App\Http\Controllers;

use App\Models\DataPendidikan;
use Illuminate\Http\Request;

class DataPendidikanController extends Controller
{
    public function getDataSiswa($nisn)
    {
        $data = [
            'status' => 'success',
            'message' => 'Data siswa berhasil ditemukan',
            'siswa' => DataPendidikan::where('nisn', $nisn)->first()
        ];

        return response()->json($data);
    }
}
