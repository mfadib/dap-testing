# Install Laravel
Pastikan Anda telah menginstal PHP dan Composer di komputer Anda.
Buka terminal atau command prompt.
Jalankan perintah berikut untuk menginstall Laravel menggunakan Composer:
```bash
composer global require laravel/installer
```
Tunggu proses instalasi selesai. Setelah selesai, Anda dapat menggunakan perintah laravel pada terminal.
## Migrasi dan Seeder
Buatlah proyek Laravel baru dengan nama "dap-testing" dengan menjalankan perintah berikut:

Arahkan direktori Anda ke direktori proyek Laravel yang baru dibuat:
```bash
cd dap-testing
```

Konfigurasikan koneksi database Anda dengan membuka file .env dan mengatur nilai yang sesuai pada bagian DB_HOST, DB_PORT, DB_DATABASE, DB_USERNAME, dan DB_PASSWORD.
Jalankan migrasi untuk membuat tabel-tabel di database dengan perintah berikut:

```bash
php artisan migrate
```

Jalankan seeder untuk mengisi data awal ke dalam tabel dengan perintah berikut:
```bash
php artisan db:seed
```
Setelah menjalankan perintah-perintah di atas, Laravel akan menginstall dependensi dan mengkonfigurasi proyek Anda. Migrasi akan membuat tabel-tabel yang diperlukan di database Anda, sedangkan seeder akan mengisi data awal ke dalam tabel tersebut.

Pastikan Anda telah mengatur koneksi database dengan benar pada file .env sebelum menjalankan migrasi dan seeder.

```makefile
APP_NAME=dap-testing
APP_ENV=local
APP_KEY=base64:Wz9LjwZgA0B1ac/+4tAW9SoUaS7QRjHDqzVOPf6f8mc=
APP_DEBUG=true
APP_URL=http://localhost

LOG_CHANNEL=stack
LOG_LEVEL=debug

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=dap_testing
DB_USERNAME=root
DB_PASSWORD=

BROADCAST_DRIVER=log
CACHE_DRIVER=file
QUEUE_CONNECTION=sync
SESSION_DRIVER=file
SESSION_LIFETIME=120

REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379

MAIL_MAILER=smtp
MAIL_HOST=smtp.mailtrap.io
MAIL_PORT=2525
MAIL_USERNAME=null
MAIL_PASSWORD=null
MAIL_ENCRYPTION=null
MAIL_FROM_ADDRESS=null
MAIL_FROM_NAME="${APP_NAME}"

AWS_ACCESS_KEY_ID=
AWS_SECRET_ACCESS_KEY=
AWS_DEFAULT_REGION=us-east-1
AWS_BUCKET=

PUSHER_APP_ID=
PUSHER_APP_KEY=
PUSHER_APP_SECRET=
PUSHER_APP_CLUSTER=mt1

MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"
```

untuk soal Query
[Soal SQL Query](sql-query.sql)