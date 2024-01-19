<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\DataPendidikan>
 */
class DataPendidikanFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nisn' => 300 . $this->faker->unique()->randomNumber(7),
            'nama_lengkap' => $this->faker->name(),
            'jenis_sekolah' => $this->faker->numberBetween(1, 2),
            'asal_sekolah' => $this->faker->randomElement(['SMPN 1 Rawamerta', 'SMPN 2 Rawamerta', 'MTsN 3 Karawang', 'MTsN 5 Karawang', 'SMP Nihayatul Amal', 'SMP Annihayah']),
            'kelas' => $this->faker->randomElement(['9A', '9B', '9C', '9D', '9E', '9F', '9G', '9H']),
            'nama_ayah' => $this->faker->name(),
            'nama_ibu' => $this->faker->name(),
        ];
    }
}
