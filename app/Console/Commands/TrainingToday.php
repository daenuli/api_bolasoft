<?php
 
namespace App\Console\Commands;
 
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Console\Command;

use App\Models\ActivityLog;
use App\Models\StudentClass;
use Carbon\Carbon;
 
class TrainingToday extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'training:today';
 
    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Remind training today';
 
    public function handle()
    {
        $date_now = Carbon::now()->toDateString();

        $data = StudentClass::where([
            ['status', 1],
            ['confirm', 'accept']
        ])->whereHas('schedule', function (Builder $query) use ($date_now) {
            $query->whereDate('date', $date_now);
        })->get()->map(function ($item, $key) {
            return [
                'schedule_id' => $item->schedule->id,
                'user_id' => $item->user->id,
                'type' => 'training',
                'title' => 'Hari ini ada latihan loh, Jangan lupa hadir yak!',
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now()
            ];
        })->toArray();

        ActivityLog::insert($data);

        $this->info('Successfully remind training today');
    }
}