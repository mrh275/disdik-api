<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\FetchData>
 */
class FetchDataFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nisn' => '009' . fake()->unique($reset = true)->numberBetween(1111111, 9999999),
            'nama' => fake()->firstName($gender = 'female') . ' ' . fake()->lastName(),
            'jenis_kelamin' => 'P',
            'tempat_lahir' => 'Karawang',
            'tanggal_lahir' => date(fake()->randomElement([2008, 2009, 2010]) . '-' . fake()->month() . '-' . fake()->dayOfMonth()),
            'pendidikan_terakhir' => 2,
            'asal_sekolah' => fake()->randomElement([
                'SMPN 1 Cikampek',
                'SMPN 2 Cikampek',
                'SMPN 3 Cikampek',
                'SMP Al-Islam Cikampek',
                'SMP IT Al-Muna Cikampek',
                'SMP Pupuk Kujang',
                'SMP Taman Siswa Cikampek',
                'MTs Al-Ishlah',
                'MTs Al-Mujahidin',
                'MTs Al-Hurriyah',
                'MTs Al-Hikmah'
            ]),
            'tahun_lulus' => 2024,
            'kelas' => fake()->randomElement([
                '9A',
                '9B',
                '9C',
                '9D',
                '9E',
                '9F',
                '9G',
                '9H',
                '9I',
                '9J',
            ]),
        ];
    }
}
