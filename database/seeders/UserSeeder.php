<?php

namespace Database\Seeders;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = config('users.data');
        $users = [];
        foreach ($data as $item) {
            $users[] = [
                "name" => $item['First Name'] . ' ' . $item['Last Name'],
                "email" => $item['Email ID'],
                "uuid" => $item['Student Registration Number'],
                "created_at" => Carbon::now()->toDateTimeString()
            ];
        }

        User::insert($users);
    }
}
