# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'alvian@email.com', password: 'abc12345', password_confirmation: 'abc12345')

TipeAkun.find_or_create_by!(nama: 'Aktiva')
TipeAkun.find_or_create_by!(nama: 'Pasiva')

TipeRelasi.find_or_create_by!(nama: 'Debit')
TipeRelasi.find_or_create_by!(nama: 'Kredit')

Akun.find_or_create_by!(kode: '101', nama: 'Kas', tipe_akun_id: 1, user_id: 1)
Akun.find_or_create_by!(kode: '102', nama: 'Simpanan Bank', tipe_akun_id: 1, user_id: 1)
Akun.find_or_create_by!(kode: '103', nama: 'Persediaan', tipe_akun_id: 1, user_id: 1)
Akun.find_or_create_by!(kode: '104', nama: 'Inventaris', tipe_akun_id: 1, user_id: 1)
Akun.find_or_create_by!(kode: '105', nama: 'Tanah dan Bangunan', tipe_akun_id: 1, user_id: 1)
Akun.find_or_create_by!(kode: '201', nama: 'Utang', tipe_akun_id: 2, user_id: 1)
Akun.find_or_create_by!(kode: '302', nama: 'Modal', tipe_akun_id: 2, user_id: 1)
