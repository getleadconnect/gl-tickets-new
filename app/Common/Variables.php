<?php

namespace App\Common;

use App\Models\User;

use Carbon\Carbon;
use GuzzleHttp\Client;
use Auth;

class Variables
{
    const ADMIN = 1;
    const AGET = 2;
    const MANAGER = 3;

    const ACTIVE = 1;
    const DEACTIVE = 0;
	
}
