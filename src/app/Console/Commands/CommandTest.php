<?php

namespace App\Console\Commands;

use App\Models\User;
use Exception;
use Illuminate\Console\Command;

class CommandTest extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'create:generate-users {count}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'my command is okkkkk!!!';

    /**
     * Execute the console command.
     *
     * @return void
     * @throws Exception
     */
    public function handle()
    {
        $usersData = $this->argument('count');
        for ($i = 0; $i < $usersData; $i++) {
            User::factory()->create();
        }
    }
}
