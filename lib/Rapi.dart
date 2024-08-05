import 'dart:io';

// Daftar nama orang yang piket sesuai hari
Map<String, String> jadwalPiket = {
  'Senin': 'Andi',
  'Selasa': 'Budi',
  'Rabu': 'Citra',
  'Kamis': 'Dina',
  'Jumat': 'Eko',
};

void main() {
  // Looping untuk terus meminta input pengguna
  while (true) {
    print('\n--- Jadwal Piket Mingguan ---');
    print('1. Senin');
    print('2. Selasa');
    print('3. Rabu');
    print('4. Kamis');
    print('5. Jumat');
    print('6. Keluar');

    stdout.write('Pilih hari (1-6): ');
    String? input = stdin.readLineSync();

    if (input == '6' || input == null) {
      print('Keluar dari program...');
      break;
    }

    // Map input ke nama hari
    String? hari;
    switch (input) {
      case '1':
        hari = 'Senin';
        break;
      case '2':
        hari = 'Selasa';
        break;
      case '3':
        hari = 'Rabu';
        break;
      case '4':
        hari = 'Kamis';
        break;
      case '5':
        hari = 'Jumat';
        break;
      default:
        print('Input tidak valid, silakan coba lagi.');
        continue;
    }

    
      String nama = jadwalPiket[hari] ?? 'Tidak ada yang piket';
      print('\nPiket hari $hari: $nama');
    }
  }

