<?php

use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{

    /**
     * Auto generated seed file
     *
     * @return void
     */
    public function run()
    {
        

        \DB::table('users')->delete();
        
        \DB::table('users')->insert(array (
            0 => 
            array (
                'id' => 1,
                'name' => 'Admin',
                'email' => 'admin@admin.com',
                'password' => '$2y$10$wg8WKccnIPSbpVGentAXSeBrdGpIoDGk6/Gdq0/wLLQKNECP5yy/K',
                'remember_token' => 'Bp47Rlp05qDBWKchHpa2K8vACL434MjG8T1JK3azhjJQfiUKrKE3LStZfhgx',
                'created_at' => '2017-02-10 14:18:17',
                'updated_at' => '2017-02-10 14:18:17',
                'avatar' => 'users/default.png',
                'role_id' => 1,
            ),
        ));
        
        
    }
}