# dev-toolbox

Kumpulan skrip kecil untuk workflow development sehari-hari.

## Isi

| Skrip | Fungsi |
|---|---|
| `flutter-test-wib.sh` | Menjalankan `flutter test` dengan timezone Asia/Jakarta (WIB) |

## Kenapa `flutter-test-wib.sh`?

Beberapa test memakai tanggal/waktu lokal. Di mesin ber-timezone UTC, test seperti
itu bisa gagal padahal bukan bug aplikasi. Skrip ini memaksa `TZ='Asia/Jakarta'`
supaya hasilnya konsisten di semua mesin.

## Pakai

```sh
chmod +x flutter-test-wib.sh
./flutter-test-wib.sh
```

Argumen tambahan diteruskan ke `flutter test`, misalnya:

```sh
./flutter-test-wib.sh test/widget_test.dart
```

## Lisensi

MIT — lihat [LICENSE](LICENSE).
