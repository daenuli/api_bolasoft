<?php
 
namespace App\Console\Commands;
 
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Console\Command;

use App\Models\ActivityLog;
use App\Models\CompetitionSchedule;
use App\Models\CompetitionDsp;
use Carbon\Carbon;
 
class TournamentWeeks extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'tournament:weeks';
 
    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Remind tournament schedule for next week';
 
    public function handle()
    {

        $data = CompetitionDsp::whereHas('player', function (Builder $query) {
            $query->whereHas('participant', function (Builder $qry) {
                $qry->whereHas('schedule', function (Builder $q) {
                    $date = Carbon::now()->addWeek()->toDateString();
                    $q->where('competition_start', $date);
                });
            });
        })->get()->map(function ($item, $key) {
            return [
                'user_id' => $item->player->student->siswa->id,
                'type' => 'tournament',
                'title' => 'Jadwal Tournament '.$item->match->tournament->name.' sudah semakin dekat. Tingkatkan latihanmu dan jangan lupa jaga kesehatanmu yak',
                'competition_id' => $item->match->tournament->competition_id,
                'created_at' => Carbon::now(),
                'updated_at' => Carbon::now(),
            ];
        })->toArray();
    
        ActivityLog::insert($data);

        $this->info('Successfully remind tournament for next week');
    }
}