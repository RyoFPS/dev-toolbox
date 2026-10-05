#!/usr/bin/env bash
#
# flutter-test-wib.sh — jalankan flutter test dengan timezone Asia/Jakarta.
#
# Beberapa test memakai tanggal/waktu lokal; di mesin ber-timezone UTC
# test seperti itu bisa gagal padahal bukan bug aplikasi.
# Skrip ini memaksa TZ='Asia/Jakarta' supaya hasilnya konsisten.
#
# Pakai: ./flutter-test-wib.sh [argumen flutter test...]

set -euo pipefail

export TZ='Asia/Jakarta'

exec flutter test "$@"
