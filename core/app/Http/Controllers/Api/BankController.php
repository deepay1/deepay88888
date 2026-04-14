<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Bank;

class BankController extends Controller
{
    public function index()
    {
        $banks = Bank::active()->with('form')->get();

        return apiResponse(
            'banks',
            'success',
            ['Banks fetched successfully'],
            ['banks' => $banks]
        );
    }

    public function show($id)
    {
        $bank = Bank::active()->with('form')->find($id);

        if (!$bank) {
            return apiResponse('bank_not_found', 'error', ['The bank is not found']);
        }

        return apiResponse(
            'bank',
            'success',
            ['Bank fetched successfully'],
            ['bank' => $bank]
        );
    }
}
