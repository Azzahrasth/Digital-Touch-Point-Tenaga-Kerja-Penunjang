<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Database\Eloquent\Model;

class Divisi extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $table = 'divisi';

    // Set primary key (default => 'id')
    // protected $primaryKey = 'id_divisi';

    protected $fillable = [
        'nama_divisi',
        'deskripsi_divisi',
    ];
}
