Nama    : Rahida Syafa Nurdya

NPM     : 2206829023

Kelas   : PBP B

------------------------------------------------------------------------------------------------
## TUGAS 9

**1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?**
    Ya, kita dapat melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Hal ini biasa disebut sebagai "parsing" atau "dekoding" JSON. Hal ini dapat dilakukan dengan menggunakan JSON model untuk mengikat kontrol ke data objek JavaScript yang biasanya diserialisasi dalam format JSON. Pengambilan data JSON seringkali dilakukan untuk menganalisis dan memproses informasi yang disimpan dalam format JSON tanpa harus membuat model secara eksplisit. Keputusan antara mengambil data JSON tanpa membuat model dan membuat model terlebih dahulu bergantung pada kebutuhan seperti berikut.
        **Pengambilan Data JSON Tanpa Model:**
        - **Fleksibilitas:** Tanpa model, kita bisa langsung mengakses dan memanipulasi data JSON sesuai kebutuhan. Ini sangat berguna ketika struktur data JSON tidak tetap atau sering berubah.
        - **Simpel dan Cepat:** Untuk skenario yang tidak rumit, langsung mengakses data JSON bisa lebih cepat dan mudah, tanpa perlu membuat struktur kelas atau model terlebih dahulu.
        - Jika kita hanya perlu mengambil data tertentu dari JSON tanpa melakukan analisis lanjutan atau manipulasi data, kita dapat menggunakan library atau fungsi yang disediakan oleh bahasa pemrograman untuk mengambil data JSON secara langsung.
        **Pengambilan Data JSON Dengan Model:**
        - **Keterorganisasian:** Model membantu mengorganisir data dan logika bisnis, membuat kode lebih mudah dibaca dan dipelihara.
        - **Validasi Data:** Model sering digunakan untuk validasi data, memastikan data yang diolah sesuai dengan ekspektasi.
        - **Reuse dan Scalability:** Dengan model, logika terkait data tertentu dapat dengan mudah digunakan ulang di tempat lain dalam aplikasi.
        - Jika kita perlu melakukan analisis lanjutan atau manipulasi data JSON, membuat model terlebih dahulu bisa menjadi pendekatan yang lebih baik. Dengan membuat model, kita dapat mengatur struktur data yang diharapkan dan memvalidasi data yang masuk sesuai dengan struktur tersebut. Selain itu, dengan menggunakan model, kita dapat mengubah data JSON menjadi objek yang lebih mudah dipahami dan dioperasikan.
        **Kapan Menggunakan Pendekatan Tanpa Model?**
        - Saat berinteraksi dengan API yang strukturnya sering berubah.
        - Untuk skrip sederhana atau tugas-tugas yang hanya memerlukan beberapa bagian dari data JSON.
        - Saat prototyping atau melakukan eksplorasi data.
        **Kapan Menggunakan Model?**
        - Untuk aplikasi yang besar dan kompleks, di mana manajemen data yang terorganisir adalah kunci.
        - Ketika keamanan dan validasi data menjadi prioritas.
        - Untuk mempromosikan penggunaan ulang kode dan mempertahankan standar dalam tim.

    Jadi, Jika proyek sederhana dan tidak memerlukan manipulasi atau analisis yang kompleks, maka tidak membuat model terlebih dahulu dapat mempercepat pengembangan. Namun, jika proyek kompleks dan memerlukan kontrol dan fleksibilitas yang lebih besar, maka membuat model terlebih dahulu dapat memberikan keuntungan yang lebih besar.

**2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.**
    Fungsi dari CookieRequest adalah untuk mengirim permintaan HTTP yang menyertakan cookie. Dengan menggunakan CookieRequest, kita dapat mengirim permintaan yang menyertakan cookie tertentu yang diperlukan oleh server. Ini dapat menjadi bagian integral dari manajemen sesi atau autentikasi dalam aplikasi.

    Instance cookieRequest perlu dibagikan ke semua komponen di aplikasi flutter karena beberapa hal diantaranya sebagai berikut.
        - Jika ada perubahan dalam logika atau perilaku CookieRequest, perubahan tersebut akan tercermin di seluruh aplikasi secara otomatis karena semua komponen menggunakan instance yang sama.
        - Jika CookieRequest digunakan untuk manajemen sesi atau autentikasi, maka akan memiliki satu instance yang dibagikan dapat membantu dalam menjaga konsistensi status otentikasi di seluruh aplikasi.
        - Pengelolaan cookie dapat dilakukan secara konsisten di seluruh aplikasi. Hal ini membantu mencegah ketidakcocokan atau masalah yang mungkin timbul jika setiap komponen memiliki instansinya sendiri.
        - Satu instance yang dibagikan dapat lebih efisien daripada membuat banyak instance yang saling independen. Hal ini dapat menghemat memori dan sumber daya sistem.
        - Pembaruan atau perawatan terhadap CookieRequest dapat dilakukan dengan lebih mudah karena perubahan tersebut hanya perlu dilakukan pada satu instance. Hal ini dapat mengurangi risiko kesalahan dan memudahkan pemeliharaan.

    Pada aplikasi Flutter, penggunaan cookie dapat diperlukan untuk otentikasi, manajemen sesi, atau penyimpanan data sementara. Dengan membagikan instance CookieRequest ke semua komponen, kita harus memastikan bahwa setiap permintaan HTTP yang dibuat oleh komponen tersebut akan menyertakan cookie yang diperlukan, sehingga memungkinkan aplikasi untuk berinteraksi dengan server secara konsisten dan aman.

**3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.**
    Mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter melibatkan beberapa langkah berikut:
        - Mengambil data JSON: Pertama, kita perlu mengambil data JSON dari sumbernya. Ini bisa dilakukan dengan menggunakan library atau fungsi yang disediakan oleh bahasa pemrograman Flutter, seperti http package. Dengan menggunakan fungsi ini, kita dapat mengirim permintaan HTTP ke server dan menerima respons berupa data JSON.
        - Parsing data JSON: Setelah mendapatkan data JSON, langkah selanjutnya adalah mem-parsing atau menguraikan data tersebut agar dapat diakses dan digunakan dalam aplikasi Flutter. Parsing data JSON dilakukan dengan mengubah data JSON menjadi objek atau struktur data yang dapat dipahami oleh Flutter. Dalam Flutter, kita dapat menggunakan fungsi json.decode() untuk melakukan parsing data JSON.
        - Menggunakan data JSON dalam aplikasi Flutter: Setelah data JSON berhasil diparsing, kita dapat menggunakan data tersebut dalam aplikasi Flutter. Misalnya, kita dapat menampilkan data JSON dalam widget seperti Text, ListView, atau GridView. Kita juga dapat menyimpan data JSON dalam model atau objek khusus untuk memudahkan pengelolaan dan manipulasi data.

    Jadi secara singkat proses pengambilan dan menampilkan data JSON di Flutter melibatkan:
        - Membuat permintaan HTTP ke sumber data.
        - Mengurai respons JSON menjadi objek Dart.
        - Menggunakan data tersebut untuk membangun widget di Flutter.
        - Mengelola state dan memperbarui UI.

    Berikut adalah langkah-langkah untuk mengambil data dari JSON hingga dapat ditampilkan pada flutter.
        - Data JSON dapat diperoleh dari berbagai sumber, termasuk API web atau penyimpanan lokal. Jika mengambil data dari API, dapat menggunakan metode HTTP seperti GET untuk mendapatkan respons yang berisi data JSON.
        - Gunakan metode penguraian JSON untuk mengubah string JSON menjadi struktur data yang dapat diakses di Flutter. Flutter memiliki dukungan bawaan untuk menguraikan JSON menggunakan kelas dart:convert.
        - Jika data JSON memiliki struktur yang tetap dan ingin menggunakan objek Dart yang sesuai, dapat membuat model objek dan menggunakan deserialisasi untuk mengubah JSON menjadi objek Dart.
        - Gunakan widget Flutter untuk menampilkan data pada antarmuka pengguna (UI). 
        - Setelah mendapatkan data dari JSON, pengembang dapat menavigasi ke halaman baru untuk menampilkan data tersebut dengan menggunakan navigator.

**4.  Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.**
    - Pengguna memasukkan data akun seperti nama pengguna dan kata sandi pada aplikasi Flutter.
    - Data akun yang dimasukkan oleh pengguna dikirim dari aplikasi Flutter ke server Django menggunakan permintaan HTTP, seperti POST request.
    - Django menerima data akun dari Flutter dan melakukan verifikasi. Django akan memeriksa apakah data akun yang diterima valid, seperti memeriksa apakah nama pengguna dan kata sandi cocok dengan data yang ada di sistem.
    - Jika data akun valid, Django akan memulai proses autentikasi. Proses ini melibatkan langkah-langkah seperti memeriksa kecocokan nama pengguna dan kata sandi, memeriksa apakah akun pengguna telah diaktifkan, dan memeriksa apakah pengguna memiliki izin yang sesuai.
    - Setelah proses autentikasi selesai, Django akan mengirimkan status autentikasi ke aplikasi Flutter. Status ini dapat berupa token autentikasi yang valid atau pesan kesalahan jika autentikasi gagal.
    - Jika autentikasi berhasil, aplikasi Flutter akan menampilkan menu atau halaman yang sesuai dengan pengguna yang terautentikasi. Pengguna dapat melihat dan menggunakan fitur-fitur yang tersedia dalam menu tersebut.
    Atau tahapan stepnya:
    **1.Input Data Akun pada Flutter:**
      - Buatlah formulir input pada aplikasi Flutter menggunakan widget seperti 'TextFormField' untuk menerima input dari pengguna
      - Validasi input pengguna menggunakan metode 'validator' pada 'TextFormField' untuk memastikan data yang dimasukkan sesuai dengan kebutuhan aplikasi
      - Pengguna mengisi form ini dan menekan tombol submit.
    **2. Mengirim Data ke Django:**
      - Setelah pengguna menekan tombol submit, aplikasi Flutter membuat permintaan HTTP POST ke server Django, mengirimkan data pengguna (biasanya dalam format JSON).
      - Flutter menggunakan paket seperti http untuk membuat permintaan HTTP.
    **3. Autentikasi dengan Django:**
      - Kirimkan data akun yang dimasukkan oleh pengguna dari aplikasi Flutter ke server Django menggunakan permintaan HTTP, misalnya dengan menggunakan paket http pada Flutter
      - Di sisi server Django, lakukan proses autentikasi sesuai dengan kebutuhan aplikasi, misalnya dengan menggunakan Django's authentication system untuk memeriksa kecocokan antara data yang diterima dengan data yang tersimpan di database
      - Django menerima data dari Flutter dan memulai proses autentikasi.
      - Biasanya, Django menggunakan sistem autentikasi bawaan atau paket seperti 'django-rest-framework' untuk proses ini.
      - Django memverifikasi data pengguna (username dan password) terhadap database pengguna.
      - Jika berhasil, Django menghasilkan token (misalnya JWT) dan mengirimkannya kembali ke Flutter sebagai respons.
    **4. Respon dan Penanganan Token di Flutter:**
      - Flutter menerima respons dari Django. Jika pengguna berhasil diautentikasi, respons tersebut akan mencakup token.
      - Flutter menyimpan token tersebut, biasanya dalam penyimpanan lokal seperti 'SharedPreferences'.
      - Token ini digunakan untuk autentikasi di permintaan berikutnya ke server.
    **5. Tampilan Menu pada Flutter:**
      - Gunakan respons yang diterima dari server Django untuk menentukan tampilan menu atau halaman selanjutnya yang akan ditampilkan kepada pengguna di aplikasi Flutter.
      - Setelah autentikasi berhasil, dan token disimpan, Flutter akan navigasi ke halaman berikutnya, misalnya halaman menu atau dashboard pengguna.
      - Flutter dapat menampilkan informasi pengguna atau menu berdasarkan token yang diterima dan hak akses pengguna.
    **6. Pengelolaan State di Flutter**
      - Selama proses ini, Flutter harus mengelola state secara efektif - menampilkan loader saat menunggu respons, menampilkan pesan error jika autentikasi gagal, dan memperbarui UI setelah sukses.
      - State management tools seperti 'Provider' atau 'Riverpod' dapat digunakan untuk mengelola state ini secara efisien.
  
    Kesimpulannya, mekanisme autentikasi antara Flutter dan Django melibatkan pengiriman data pengguna dari Flutter ke Django, proses autentikasi oleh Django, pengiriman balik token ke Flutter jika sukses, dan akhirnya menampilkan menu atau informasi pengguna di Flutter. Proses ini membutuhkan pengelolaan state yang baik di Flutter dan sistem autentikasi yang aman di Django.

**5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.**
    Widget yang digunakan diantaranya sebagai berikut.
    **1. File product**
        - import 'dart:convert';: Mengimpor pustaka dart:convert yang digunakan untuk mengonversi data JSON menjadi objek Dart dan sebaliknya.
        - List< Product > productFromJson(String str): Fungsi ini digunakan untuk mengonversi string JSON menjadi daftar objek Product. Fungsi ini menggunakan metode json.decode untuk mengurai string JSON dan kemudian menggunakan metode map untuk mengonversi setiap elemen dalam daftar menjadi objek Product.
        - String productToJson(List< Product > data): Fungsi ini digunakan untuk mengonversi daftar objek Product menjadi string JSON. Fungsi ini menggunakan metode json.encode untuk mengonversi objek Dart menjadi string JSON.
        - class Product: Kelas ini merepresentasikan produk. Properti-properti yang dimiliki oleh kelas ini antara lain:
          - Model model: Enum yang menunjukkan model produk.
          - int pk: Primary key produk.
          - Fields fields: Objek yang berisi informasi tentang produk. 
        Kelas ini juga memiliki metode fromJson dan toJson yang digunakan untuk mengonversi objek Dart menjadi JSON dan sebaliknya.
        - class Fields: Kelas ini mewakili entitas bidang produk. Properti-properti yang dimiliki oleh kelas ini antara lain:
          - int user: ID pengguna yang terkait dengan produk.
          - String name: Nama produk.
          - String kelas: Kelas produk.
          - String menu: Menu produk.
          - int amount: Jumlah produk.
          - String description: Deskripsi produk.
          - String price: Harga produk.
          - String category: Kategori produk.
          - DateTime dateAdded: Tanggal penambahan produk.
          - String image: Gambar produk.
        Kelas ini juga memiliki metode fromJson dan toJson yang digunakan untuk mengonversi objek Dart menjadi JSON dan sebaliknya. 
        - enum Model: Enum ini digunakan untuk menentukan model produk. Ini bukan widget bawaan Dart, melainkan kelas yang dibuat secara khusus dalam kode ini. Tujuannya adalah untuk menyediakan cara yang mudah untuk mapping antara string dan nilai enum, dan sebaliknya.
    **2. File list_product**
        - MaterialApp: Widget root yang mengonfigurasi keseluruhan tema dan navigasi aplikasi. Widget ini adalah akar dari aplikasi dan mengatur desain material.
        - Scaffold: Widget ini menyediakan kerangka kerja untuk mengimplementasikan struktur tata letak dasar untuk aplikasi, termasuk bilah aplikasi, laci, dan badan.
        - AppBar: Menampilkan judul dan tindakan lain di bilah aplikasi. Widget ini menampilkan bilah alat di bagian atas layar dan biasanya berisi judul aplikasi.
        - LeftDrawer: Widget khusus yang mewakili laci kiri aplikasi.  ini termasuk dalam properti laci widget Scaffold.
        - FutureBuilder: Widget yang dibuat secara asinkron berdasarkan cuplikan interaksi terbaru dengan Masa Depan. ibutuhkan sebuah Future dan fungsi pembangun sebagai parameter.
        - Center: Memusatkan widget turunannya secara horizontal dan vertikal.
        - CircularProgressIndicator: Menampilkan indikator pemuatan melingkar.
        - Kolom: Widget yang menampilkan turunannya dalam susunan vertikal.
        - Teks: Menampilkan string teks dengan gaya tertentu. Widget ini menampilkan paragraf teks. Widget ini digunakan untuk menampilkan berbagai informasi tentang produk.
        - SizedBox: Kotak dengan ukuran tertentu, digunakan untuk membuat jarak antar widget. Widget ini membuat kotak dengan ukuran tertentu. Widget ini digunakan untuk menambahkan jarak antara widget.
        - ListView.builder: Membuat daftar widget yang dapat digulir dengan malas berdasarkan fungsi yang diindeks. Dibutuhkan itemCount dan itemBuilder sebagai parameter.
        - GestureDetector: Widget yang mendeteksi gerakan yang dilakukan oleh pengguna.
        - Kontainer: Widget yang menggabungkan widget pengecatan, pemosisian, dan ukuran umum.
        - ElevatedButton: Tombol timbul dengan desain material. Widget ini membuat tombol dengan tampilan terangkat. Widget ini digunakan untuk menavigasi ke halaman detail produk saat diklik.
        - Navigator: Widget yang mengelola sekumpulan widget anak dengan disiplin tumpukan.
        - MaterialPageRoute: Rute yang menggantikan seluruh layar dengan transisi adaptif platform.
        - ProductDetailPage: Widget khusus yang menampilkan detail produk.
        - Image.network: Widget ini menampilkan gambar dari URL jaringan.
    **3. File login**
        - MaterialApp: Widget ini adalah akar dari aplikasi Flutter dan menyiapkan keseluruhan judul, tema dan navigasi untuk aplikasi.
        - Scaffold: Widget ini menyediakan struktur tata letak dasar untuk aplikasi, termasuk bilah aplikasi dan isi.
        - AppBar: Widget ini mewakili bilah aplikasi di bagian atas layar dan menampilkan judul. Widget ini mewakili bilah aplikasi di bagian atas layar. Biasanya berisi judul dan tindakan opsional.
        - Container: Widget ini digunakan untuk membuat wadah yang dapat menampung widget lainnya. Ini digunakan di sini untuk memberikan padding dan penyelarasan untuk formulir login. Widget ini digunakan untuk membuat wadah yang dapat menampung widget lain. Widget ini memungkinkan penyesuaian padding, margin, dan warna latar belakang.
        - Kolom: Widget ini digunakan untuk menyusun widget turunannya dalam kolom vertikal.  Widget ini digunakan untuk menumpuk bidang teks, tombol, dan widget spasi secara vertikal di layar login.
        - TextField: Widget ini digunakan untuk membuat kolom input teks untuk nama pengguna dan kata sandi. Widget ini menyediakan bidang input teks. Widget ini digunakan untuk menangkap input nama pengguna dan kata sandi dari pengguna.
        - SizedBox: Widget ini digunakan untuk membuat ruang kosong antar widget. Ini digunakan di sini untuk menambahkan spasi vertikal antara bidang teks dan tombol login. Widget ini membuat kotak dengan tinggi tertentu. Widget ini digunakan untuk menambahkan jarak vertikal antara bidang teks dan tombol.
        - ElevatedButton: Widget ini digunakan untuk membuat tombol dengan tampilan terangkat. Ini digunakan di sini sebagai tombol login. Widget ini membuat tombol dengan tampilan yang ditinggikan. Widget ini digunakan sebagai tombol login.
        - Teks: Widget ini digunakan untuk menampilkan teks di layar. Widget ini menampilkan string teks. Dalam kode ini, digunakan untuk menampilkan judul bilah aplikasi dan pesan kegagalan masuk.
        - SnackBar: Widget ini digunakan untuk menampilkan pesan sementara di bagian bawah layar. Widget ini digunakan untuk menampilkan pesan selamat datang di bilah camilan setelah login berhasil.
        - AlertDialog: Widget ini digunakan untuk menampilkan kotak dialog dengan judul, konten, dan tindakan. Widget ini digunakan untuk menampilkan pesan kegagalan login dalam dialog peringatan.
        - TextButton: Widget ini digunakan untuk membuat tombol dengan label teks. Widget ini digunakan sebagai tombol tindakan dalam dialog peringatan.
        - showDialog: Widget ini menampilkan kotak dialog dengan judul, konten, dan tindakan. Widget ini digunakan untuk menampilkan dialog peringatan dengan pesan kegagalan login.
        - Penyedia: Paket ini digunakan untuk pengelolaan status di Flutter. Ini memungkinkan widget untuk mengakses dan memperbarui status bersama.
        - pbp_django_auth: Paket ini menyediakan fungsionalitas otentikasi untuk aplikasi Flutter menggunakan backend Django.
        - CookieRequest: Kelas ini adalah bagian dari paket pbp_django_auth dan digunakan untuk membuat permintaan HTTP dengan otentikasi berbasis cookie.
        - Navigator: Kelas ini digunakan untuk navigasi antar layar berbeda di aplikasi. Widget ini digunakan untuk mengelola tumpukan navigasi aplikasi. Widget ini digunakan untuk menavigasi ke halaman beranda setelah login berhasil.
        - PageRouteBuilder: Kelas ini digunakan untuk menentukan transisi halaman khusus saat bernavigasi antar layar.
        - MaterialPageRoute: Widget ini mendefinisikan rute yang bertransisi ke halaman baru. Widget ini digunakan untuk menentukan transisi dari halaman login ke halaman beranda.
        - ScaffoldMessenger: Widget ini menyediakan akses ke status perancah untuk menampilkan bilah makanan ringan. Widget ini digunakan untuk menampilkan snack bar dengan pesan selamat datang setelah login berhasil.
    **5. File Menu**
        - MaterialApp: Ini adalah widget root yang digunakan untuk menginisialisasi aplikasi Flutter.
        - Scaffold: Widget ini menyediakan struktur dasar untuk tata letak aplikasi, termasuk bilah aplikasi, badan, dan laci. Widget ini berfungsi sebagai wadah untuk widget lain dan membantu mengatur UI aplikasi.
        - AppBar: Widget ini mewakili bilah aplikasi di bagian atas layar. Biasanya berisi judul dan tindakan opsional.
        - Teks: Widget ini menampilkan teks di layar. Dalam kode ini, widget ini digunakan untuk menampilkan teks "Selamat Datang!".
        - SingleChildScrollView: Widget ini memungkinkan anak untuk digulir secara vertikal ketika konten melebihi ruang yang tersedia. Widget ini memastikan bahwa konten dapat terlihat sepenuhnya bahkan pada layar yang lebih kecil.
        - Padding: Widget ini menambahkan padding di sekitar widget turunannya. Widget ini digunakan untuk membuat jarak antara berbagai elemen di UI.
        - Kolom: Widget ini mengatur anak-anaknya secara vertikal dalam satu kolom. Widget ini digunakan untuk mengelompokkan beberapa widget.
        - GridView.count: Widget ini membuat kisi-kisi widget dengan jumlah kolom yang tetap. Widget ini digunakan untuk menampilkan item toko dalam tata letak kisi.
        - ShopCard: Ini adalah widget khusus yang mewakili kartu untuk setiap item toko. Widget ini digunakan di GridView untuk menampilkan masing-masing item.
        - LeftDrawer: Ini adalah widget khusus yang mewakili laci kiri aplikasi. Ini digunakan sebagai nilai untuk properti laci dari widget Perancah.
    **6. File product_detail_page**
        - MaterialApp: Ini adalah widget root yang digunakan untuk menginisialisasi aplikasi Flutter.
        - Scaffold: Ini adalah widget yang menyediakan struktur dasar untuk halaman, termasuk AppBar, Drawer, dan body.
        - AppBar: Ini adalah widget yang menampilkan bilah aplikasi di bagian atas halaman. Ia biasanya berisi judul halaman.
        - LeftDrawer: Ini adalah widget kustom yang digunakan sebagai konten drawer di sisi kiri halaman. Widget ini merupakan custom widget yang mungkin didefinisikan di file terpisah.
        - SingleChildScrollView: Ini adalah widget yang memungkinkan kontennya dapat di-scroll jika melebihi ukuran layar. Pada contoh ini, digunakan untuk memastikan konten halaman dapat di-scroll jika perlu.
        - Column: Ini adalah widget yang mengatur widget-child secara vertikal. Ia mengatur widget-widget di dalamnya menjadi satu kolom.
        - Text: Ini adalah widget yang digunakan untuk menampilkan teks. Pada contoh ini, digunakan untuk menampilkan judul produk, menu, jumlah, deskripsi, harga, dan kategori produk.
        - SizedBox: Ini adalah widget yang digunakan untuk memberikan ruang kosong dengan ukuran tertentu. Pada contoh ini, digunakan untuk memberikan jarak antara teks-teks.
        - ElevatedButton: Ini adalah widget yang digunakan untuk membuat tombol dengan latar belakang yang ditinggikan. Widget ini digunakan untuk membuat tombol dengan tampilan yang lebih menonjol. Pada contoh ini, digunakan untuk membuat tombol "Back to List" yang akan kembali ke halaman sebelumnya.
        - Image.network: Widget ini digunakan untuk menampilkan gambar dari URL. Pada contoh ini, digunakan untuk menampilkan gambar produk.
    **7. File shoplist_form**
        - MaterialApp: Widget ini adalah akar dari aplikasi Flutter dan mengonfigurasi properti tingkat atas aplikasi, seperti judul aplikasi, tema, dan rute awal.
        - Scaffold: Widget Perancah menyediakan struktur dasar untuk tata letak aplikasi dan mengimplementasikan struktur visual Desain Material. Widget ini mencakup bilah aplikasi, laci, dan badan aplikasi.
        - AppBar: Widget AppBar mewakili bilah aplikasi di bagian atas layar. Biasanya berisi judul dan tindakan opsional.
        - Center: Widget Tengah memusatkan widget anak baik secara horizontal maupun vertikal dalam ruang yang tersedia.
        - Teks: Widget Teks menampilkan string teks di layar.
        - Color: Kelas Warna mewakili warna di Flutter. Kelas ini digunakan untuk menentukan warna latar belakang bilah aplikasi.
        - LeftDrawer: Ini adalah widget khusus yang merepresentasikan isi laci.
        - Form: Widget Formulir digunakan untuk membuat formulir dengan bidang input dan validasi.
        - GlobalKey: Kelas GlobalKey digunakan untuk mengidentifikasi widget secara unik di seluruh pohon widget yang berbeda. Dalam kode ini, digunakan untuk membuat kunci untuk formulir.
        - TextFormField: Widget TextFormField digunakan untuk membuat bidang input teks dengan berbagai opsi kustomisasi, seperti dekorasi, pemanggilan kembali onChanged, dan validator.
        - ElevatedButton: Widget ElevatedButton mewakili tombol terangkat Desain Material. Widget ini digunakan untuk membuat tombol dengan gaya tertentu dan callback onPressed.
        - ButtonStyle: Kelas ButtonStyle digunakan untuk menentukan gaya tombol, seperti warna latar belakangnya.
        - MaterialStateProperty: Kelas MaterialStateProperty digunakan untuk mendefinisikan properti yang bergantung pada status widget, seperti warna latar belakang tombol dalam berbagai status.
        - ScaffoldMessenger: Kelas ScaffoldMessenger menyediakan metode untuk menampilkan snack bar dan pesan sementara lainnya di layar.
        - SnackBar: Widget SnackBar menampilkan pesan sementara di bagian bawah layar.
        - Navigator: Kelas Navigator digunakan untuk mengelola tumpukan navigasi aplikasi dan transisi di antara layar yang berbeda.
        - AlertDialog: Widget AlertDialog menampilkan kotak dialog dengan judul, konten, dan tindakan.
        - TextButton: Widget TextButton mewakili tombol teks Desain Material. Widget ini digunakan untuk membuat tombol dengan gaya tertentu dan pemanggilan balik saat ditekan.
        - SingleChildScrollView: Widget SingleChildScrollView memungkinkan widget turunannya untuk menggulir jika melebihi ruang yang tersedia.
        - Kolom: Widget Column mengatur widget anak dalam kolom vertikal.
        -Padding: Widget Padding menambahkan padding di sekitar widget turunannya.
        - Align: Widget Ratakan menyelaraskan widget turunannya di dalam widget itu sendiri.
        - Provider: Widget Penyedia digunakan untuk manajemen status di Flutter. Widget ini memungkinkan widget mengakses dan memperbarui data bersama.
        - BuildContext: Kelas BuildContext merepresentasikan lokasi sebuah widget dalam pohon widget.
        - BuildContext.watch: Metode watch digunakan untuk mendengarkan perubahan pada penyedia tertentu dan membangun ulang widget ketika data berubah.
        - BuildContext.read: Metode read digunakan untuk membaca nilai saat ini dari penyedia tertentu tanpa berlangganan pembaruan.
    **8. File left_drawer**
        - Drawer: Widget ini merupakan wadah utama untuk menu laci kiri. Ini adalah panel desain material yang meluncur dari sisi kiri layar ketika dipicu.
        - ListView: Widget ini digunakan untuk menampilkan daftar widget yang dapat digulir. Dalam hal ini, widget ini digunakan untuk menampilkan daftar item dalam laci.
        - DrawerHeader: Widget ini mewakili bagian header laci. Biasanya berisi judul dan informasi tambahan tentang aplikasi atau layar saat ini.
        - Kolom: Widget ini digunakan untuk mengatur widget anak dalam kolom vertikal. Dalam hal ini, widget ini digunakan untuk menumpuk teks judul dan deskripsi secara vertikal di header laci.
        - Teks: Widget ini digunakan untuk menampilkan teks. Widget ini digunakan untuk menampilkan teks judul dan deskripsi di header laci.
        - Padding: Widget ini digunakan untuk menambahkan padding di sekitar widget turunannya. Dalam hal ini, widget ini menambahkan padding di sekitar teks deskripsi di header laci.
        - ListTile: Widget ini mewakili satu item dalam daftar. Biasanya berisi ikon dan judul.
        - Ikon: Widget ini digunakan untuk menampilkan ikon. Widget ini digunakan untuk menampilkan ikon untuk setiap item daftar dalam laci.
        - Navigator.pushReplacement: Metode ini digunakan untuk menavigasi ke layar baru dan mengganti layar saat ini di tumpukan navigasi. Metode ini digunakan dalam pemanggilan balik onTap widget ListTile untuk menavigasi ke layar yang berbeda saat item daftar yang bersangkutan diketuk.
        - MaterialPageRoute: Kelas ini digunakan untuk menentukan rute navigasi. Kelas ini digunakan dalam metode Navigator.pushReplacement untuk menentukan layar tujuan navigasi.
        - MyHomePage: Widget ini mewakili halaman utama aplikasi. Ini adalah layar tujuan ketika item daftar "Halaman Utama" diketuk.
        - ProductListPage: Widget ini mewakili halaman yang menampilkan daftar item. Ini adalah layar tujuan ketika item daftar "Lihat Item" diketuk.
        - ShopFormPage: Widget ini mewakili halaman untuk menambahkan item baru. Ini adalah layar tujuan ketika item daftar "Tambah Item" diketuk.
        - ProductPage: Widget ini mewakili halaman yang menampilkan daftar produk. Ini adalah layar tujuan ketika item daftar "Daftar Produk" diketuk.
    **9. File shop_card**
        - Material: Widget ini digunakan untuk memberikan desain visual untuk aplikasi. Widget ini mengatur warna latar belakang widget ke item.buttonColor.
        - InkWell: Widget ini menyediakan area yang merespons peristiwa sentuhan. Widget ini digunakan untuk membungkus konten widget ShopCard dan memicu fungsi onTap saat disentuh.
        -ScaffoldMessenger: Widget ini digunakan untuk menampilkan widget SnackBar. Widget ini digunakan untuk menampilkan pesan ketika sebuah tombol ditekan.
        - SnackBar: Widget ini menampilkan pesan sementara di bagian bawah layar. Widget ini digunakan untuk menampilkan pesan saat tombol ditekan.
        - Navigator: Widget ini digunakan untuk menavigasi ke rute yang berbeda di dalam aplikasi. Widget ini digunakan untuk menavigasi ke halaman yang berbeda berdasarkan tombol yang ditekan.
        - PageRoute: Widget ini digunakan untuk menentukan rute navigasi. Widget ini digunakan untuk menentukan halaman tujuan saat bernavigasi.
        - BuildContext: Widget ini menyediakan akses ke konteks pohon widget. Widget ini digunakan untuk mengakses widget CookieRequest dan ScaffoldMessenger.
        - Container: Widget ini digunakan untuk membuat elemen visual persegi panjang. Widget ini digunakan untuk membungkus widget Ikon dan Teks.
        - Center: Widget ini digunakan untuk memusatkan widget turunannya di dalam widget itu sendiri. Widget ini digunakan untuk memusatkan widget Kolom di dalam widget Wadah.
        - Kolom: Widget ini digunakan untuk mengatur anak-anaknya dalam kolom vertikal. Widget ini digunakan untuk mengatur widget Ikon dan Teks secara vertikal.
        - Ikon: Widget ini menampilkan ikon. Widget ini digunakan untuk menampilkan item.icon dengan ukuran 30.0 dan warna putih.
        - Padding: Widget ini menambahkan padding di sekitar widget anaknya. Widget ini digunakan untuk menambahkan padding di sekitar widget Teks.
        - Teks: Widget ini menampilkan teks. Widget ini digunakan untuk menampilkan item.name dengan warna putih dan perataan tengah.
        - Provider: Widget ini digunakan untuk menyediakan data ke turunannya. Widget ini digunakan untuk menyediakan widget CookieRequest ke widget ShopCard.
        - CookieRequest: Widget ini digunakan untuk membuat permintaan HTTP dengan cookie. Widget ini digunakan untuk membuat permintaan logout dalam fungsi onTap.
        - ShopFormPage: Widget ini adalah halaman yang memungkinkan pengguna untuk menambahkan item. Halaman ini akan terbuka ketika tombol "Tambah Item" ditekan.
        - ProductListPage: Widget ini adalah halaman yang menampilkan daftar item. Halaman ini akan terbuka ketika tombol "Lihat Item" ditekan.
        - ProductPage: Widget ini adalah halaman yang menampilkan informasi produk. Halaman ini akan terbuka ketika tombol "Lihat Produk" ditekan.
        - LoginPage: Widget ini adalah halaman yang memungkinkan pengguna untuk masuk. Halaman ini akan terbuka ketika tombol "Logout" ditekan.
    **10. File item_list**
        - Scaffold: Widget Perancah menyediakan struktur dasar untuk tata letak aplikasi. Ini mencakup bilah aplikasi, laci, dan badan. Dalam hal ini, widget ini digunakan untuk membuat struktur utama halaman, termasuk bilah aplikasi, laci, dan konten isi.
        - AppBar: Widget AppBar mewakili bilah aplikasi di bagian atas layar. Biasanya berisi judul dan juga dapat menyertakan tindakan atau ikon. Dalam kasus ini, widget ini menampilkan judul "Daftar Menu" dan mengatur warna latar belakang dan latar depan.
        - Color: Widget Warna mewakili nilai warna. Widget ini digunakan untuk menentukan warna latar belakang bilah aplikasi.
        - LeftDrawer: Widget Baki Kiri adalah widget khusus yang ditentukan dalam file terpisah. Widget ini mewakili laci yang meluncur dari sisi kiri layar. Widget ini termasuk dalam properti laci Perancah dan menyediakan opsi navigasi tambahan.
        - ListView.builder: Widget ListView.builder digunakan untuk membuat daftar item yang dapat digulir. Dibutuhkan parameter itemCount untuk menentukan jumlah item dan fungsi itemBuilder untuk membuat setiap item. Dalam hal ini, widget ini digunakan untuk menampilkan daftar produk.
        - ListTile: Widget ListTile mewakili satu item dalam daftar. Biasanya mencakup judul, subjudul, dan widget terdepan atau belakang opsional. Dalam hal ini, widget ini digunakan untuk menampilkan detail setiap produk, termasuk nama, jumlah, dan deskripsi.
        - Teks: Widget Teks digunakan untuk menampilkan teks. Widget ini membutuhkan string sebagai turunannya dan dapat disesuaikan dengan berbagai properti seperti gaya, perataan, dan warna. Dalam hal ini, widget ini digunakan untuk menampilkan nama, jumlah, dan deskripsi setiap produk.
        - Produk: Widget Produk adalah widget khusus yang ditentukan dalam file terpisah. Widget ini mewakili item produk dan berisi properti seperti nama, jumlah, dan deskripsi. Widget ini digunakan untuk mengisi daftar produk di ListView.builder.
    **11. File main**
        - MaterialApp: Digunakan untuk membuat aplikasi Flutter dengan menggunakan material design. MaterialApp adalah root widget yang mengatur tema, judul aplikasi, dan halaman utama.
        - Provider: Digunakan untuk menyediakan objek atau data ke widget di bawahnya. Pada contoh kode yang diberikan, Provider digunakan untuk menyediakan objek CookieRequest ke widget di dalamnya.
        - CookieRequest: Objek yang digunakan untuk membuat permintaan HTTP dengan menggunakan cookie. Pada contoh kode yang diberikan, CookieRequest digunakan sebagai objek yang disediakan oleh Provider.
        - LoginPage: Widget yang digunakan sebagai halaman utama aplikasi. Pada contoh kode yang diberikan, LoginPage digunakan sebagai halaman utama yang ditampilkan oleh MaterialApp.

**6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).**
    1. Membuat halaman login yang terintegrasi dengan project tugas django. Proses ini dilakukan dengan menambahkan dan mengedit beberapa bagian di dalam tugas django dan tugas flutter
        Tahapannya: 
        - Membuat django-app bernama authentication pada project Django yang telah dibuat sebelumnya (file inventory)
        - Menambahkan authentication ke INSTALLED_APPS pada main project settings.py aplikasi Django inventory.
        - Menginstall django cors headers dengan perintah  pip install django-cors-headers pada terminal django app
        - Menambahkan corsheaders ke INSTALLED_APPS pada main project settings.py aplikasi Django inventory.
        - Menambahkan corsheaders.middleware.CorsMiddleware pada main project settings.py aplikasi Django inventory.
        - Menambahkan beberapa variabel pada main project settings.py aplikasi Django Inventory.
        - Membuat  sebuah metode view untuk login pada authentication/views.py.
        - Membuat file urls.py pada folder authentication dan menambahkan URL routing terhadap fungsi yang sudah dibuat dengan endpoint login/.
        - Menambahkan path('auth/', include('authentication.urls')), pada file shopping_list/urls.py.
        - Menginstall package dari pbp dengan perintah flutter pub add provider & flutter pub add pbp_django_auth pada terminal flutter inventory.
        - Memodifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider.
        - Membuat file baru pada folder screens dengan nama login.dart dan isi file dengan suatu kode.
        - Ubah file main.dart pada Widget MaterialApp(...), ubah home: MyHomePage() menjadi home: LoginPage()
    2. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter. Hal ini dilakukan dengan melakukan routing autentikasi di dalam tugas django dan routing ke tugas django dari tugas flutter.
    3. Membuat model kustom sesuai dengan proyek aplikasi Django. Hal ini dilakukan dengan mengubah data json dari tugas django menggunakan quicktype dan menyimpan kode hasil dari quicktype sebagai model untuk tugas flutter.
        Tahapannya:
        - Jalankan program django inventory
        - Buka localhost:8000/json
        - Copy data json
        - Buka situs web Quicktype
        - Setup name menjadi product, source type menjadi json, dan language menjadi dart
        - Tempel data JSON yang telah disalin sebelumnya ke dalam textbox yang tersedia pada Quicktype.
        - Klik pilihan Copy Code pada Quicktype.
        - Setelah mendapatkan kode model melalui Quicktype, buka kembali proyek Flutter, buatlah file baru pada folder lib/models dengan nama product.dart, dan tempel kode yang sudah disalin dari Quicktype.
    4. Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy. Hal ini dilakukan dengan menghubungkan web tugas django dengan tugas flutter dan membuat halaman berdasarkan data json yang telah diambil dari quicktype sebelumnya.
        Tahapan:
        - Membuat file baru pada folder lib/screens dengan nama list_product.dart.
        - Import pacakge yang dibutuhkan yaitu package:flutter/material.dart, 'package:http/http.dart' as http, 'dart::convert', dan 'package:<APP_NAME>/models/product.dart'
        - Salin kode yang diberikan pada screens/list_product
        - Menambahkan halaman list_product.dart ke widgets/left_drawer.dart
        - Mengubah fungsi tombol Lihat Produk pada halaman utama agar mengarahkan ke halaman ProductPage. Kamu dapat melakukan redirection dengan menambahkan else if setelah kode if(...){...} di bagian akhir onTap: () { } yang ada pada file widgets/shop_card.dart
        - Impor file yang dibutuhkan saat menambahkan ProductPage ke left_drawer.dart dan shop_card.dart.
    5. Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item. Hal ini dilakukan dengan membuat tombol detail dan mengarahkan pada halaman detail untuk tiap tiap itemnya. Proses ini dikerjakan dengan menambahkan file baru bernama product_detail_page. Dan disambungkan dengan file list_product_page.dart
    6. Melakukan git workflow (add, commit, push)

## TUGAS 8
**1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!**
Dalam Flutter, terdapat dua metode yang digunakan pada widget Navigator untuk melakukan navigasi antara halaman atau layar, yaitu Navigator.push() dan Navigator.pushReplacement(). Perbedaan utama antara keduanya adalah bahwa push() menambahkan layar baru ke bagian atas tumpukan navigasi, sementara pushReplacement() menggantikan layar saat ini dengan layar baru.
  - **Navigator.push()**
  = Metode Navigator.push() digunakan untuk menambahkan route lain ke atas tumpukan layar saat ini. Halaman baru akan ditampilkan di atas halaman sebelumnya. Dengan menggunakan metode ini, pengguna dapat kembali ke halaman sebelumnya dengan menggunakan tombol "back" atau dengan memanggil metode Navigator.pop().
  Contoh Penggunaan: 
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HalamanBaru()),
  );
  Pada contoh di atas, HalamanBaru ditambahkan ke tumpukan navigasi. Pengguna masih dapat kembali ke halaman sebelumnya dengan menekan tombol "back".

  - **Navigator.pushReplacement()**
  = Metode Navigator.pushReplacement() juga digunakan untuk menambahkan rute baru ke atas tumpukan layar saat ini. Namun, perbedaannya adalah bahwa metode ini akan menggantikan halaman saat ini dengan halaman baru, sehingga halaman sebelumnya tidak akan ditampilkan di tumpukan layar. Dengan menggunakan metode ini, pengguna tidak dapat kembali ke halaman sebelumnya dengan tombol "back" atau dengan memanggil metode Navigator.pop().
  Contoh Penggunaan:
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => HalamanBaru()),
  );
  Pada contoh di atas, HalamanBaru ditambahkan ke tumpukan navigasi, dan halaman sebelumnya dihapus dari tumpukan. Ini berguna ketika ingin menggantikan halaman saat pengguna menyelesaikan tindakan tertentu dan tidak ingin mereka kembali ke halaman sebelumnya dengan menekan tombol "back".

**2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!**
  - **Container**
   Widget Container digunakan untuk mengatur tampilan dan tata letak elemen-elemen didalamnya.  Container memiliki properti seperti padding, margin, warna latar belakang, dan sebagainya. Container juga dapat mengubah ukuran dan bentuk widget yang ada di dalamnya. Konteks Penggunaan container meliputi:
   - Mengatur ukuran dan posisi elemen.
   - Mengatur padding dan margin.
   - Mengatur dekorasi seperti warna latar belakang, border, dan bayangan.
   - Menyusun elemen-elemen dalam tata letak seperti Column atau Row.
   Contoh Penggunaan:
   Container(
    padding: EdgeInsets.all(16.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text('Ini adalah teks di dalam Container'),
  );
  - **Column**
  Column adalah widget yang mengatur widget lain secara vertikal dalam satu kolom. Widget dalam Column akan mengisi ruang vertikal secara berurutan. Column juga memiliki properti seperti mainAxisAlignment dan crossAxisAlignment untuk mengatur tata letak dan penempatan widget di dalamnya. Widget ini dapat digunakan untuk mengatur beberapa widget dalam satu kolom. Konteks penggunaan Column meliputi:
  - Menyusun elemen-elemen dalam tata letak vertikal.
  - Mengatur penempatan dan tata letak elemen-elemen dalam kolom.
  - Mengatur ruang antara elemen-elemen menggunakan mainAxisAlignment dan crossAxisAlignment.
  Contoh penggunaan:
  Column( 
    children: < Widget >
    [ Text('Nama:'), Text('John Doe'), ], 
  )
  - **Row**
  Row adalah widget yang mengatur widget lain secara horizontal dalam satu baris. Widget dalam Row akan mengisi ruang horizontal secara berurutan. Row memiliki properti seperti mainAxisAlignment dan crossAxisAlignment untuk mengatur tata letak dan penempatan widget di dalamnya. Widget ini dapat digunakan untuk mengatur beberapa widget dalam satu baris. Konteks penggunaan Row meliputi:
  - Menyusun elemen-elemen dalam tata letak horizontal.
  - Mengatur penempatan dan tata letak elemen-elemen dalam baris.
  - Mengatur ruang antara elemen-elemen menggunakan mainAxisAlignment dan crossAxisAlignment.
  Contoh penggunaan:
  Row( 
    children: < Widget >
    [ Icon(Icons.star), Text('5'),], 
  )
  - **Stack**
  Widget Stack digunakan untuk menumpuk elemen-elemen di atas satu sama lain. Stack adalah widget yang mengatur widget lain secara tumpukan (berlapis) di atas satu sama lain. Widget dalam Stack dapat ditempatkan di atas atau di bawah widget lain. Stack juga memiliki properti seperti alignment untuk mengatur posisi widget dalam tumpukan. Widget ini dapat digunakan untuk mengatur widget secara tumpukan atau berlapis. Konteks penggunaan Stack meliputi:
  - Menyusun elemen-elemen dalam tumpukan.
  - Mengatur penempatan dan tata letak elemen-elemen dalam tumpukan.
  - Mengatur urutan tampilan elemen-elemen menggunakan IndexedStack.
  Contoh penggunaan:
  Stack( 
    children: < Widget >
    [ Image(...), 
    Positioned( bottom: 10.0, right: 10.0, child: Text('Overlay Text'), ), 
    ], 
  )
  - **ListView**
  Widget ListView digunakan untuk menampilkan daftar elemen yang dapat di-scroll. ListView adalah widget yang digunakan untuk menampilkan daftar item secara berurutan. ListView dapat berupa daftar vertikal atau horizontal, dan dapat digunakan untuk menampilkan daftar item yang lebih panjang dari ruang yang tersedia di layar. Widget ini dapat digunakan untuk menampilkan daftar item secara berurutan. Konteks penggunaan ListView meliputi:
  - Menampilkan daftar elemen dalam bentuk daftar yang dapat di-scroll.
  - Mengatur penempatan dan tata letak elemen-elemen dalam daftar.
  - Mengatur perilaku scroll menggunakan scrollDirection dan physics.
  Contoh penggunaan:
  ListView( 
    children: < Widget >
    [ ListTile( title: Text('Item 1'), ), 
    ListTile( title: Text('Item 2'), ), // ... 
    ], 
  )
  - **Expanded**
  Widget Expanded digunakan untuk mengisi ruang yang tersedia dalam tata letak. Expanded adalah widget yang digunakan untuk mengisi ruang yang tersedia secara proporsional. Expanded digunakan dalam Row atau Column untuk memberikan ukuran yang sesuai kepada widget yang ada di dalamnya. Widget ini dapat digunakan untuk mengisi ruang yang tersedia secara proporsional. Konteks penggunaan Expanded meliputi:
  - Mengisi ruang yang tersedia dalam tata letak secara proporsional.
  - Mengatur ukuran elemen-elemen dalam tata letak menggunakan flex.
  Contoh penggunaan:
  Row( 
    children: < Widget >
    [ Expanded( child: Container(color: Colors.red), ), 
    Expanded( child: Container(color: Colors.green), ), 
    ], 
  )

**3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!**
    Pada tugas kali ini saya menggunakan TextFormField untuk nama, dekripsi, dan amount item. Dengan menggunakan elemen input seperti TextFormField, aplikasi dapat menerima input pengguna dengan mudah dan melakukan validasi untuk memastikan data yang dimasukkan sesuai dengan kebutuhan aplikasi. Alasan menggunakan TextFormField yaitu:
    - TextFormField untuk nama
        - Untuk mengambil input teks dari pengguna.
        - Untuk mendukung validasi input menggunakan properti validator.
        - Untuk memungkinkan pemantauan perubahan nilai input melalui properti onChanged.
        - Untuk menyediakan tampilan yang bersih dengan dekorasi input menggunakan properti decoration.
    
    - TextFormField untuk amount
        - Untuk mengambil input teks, namun dalam hal ini, nilainya diubah menjadi tipe data int.
        - Untuk mendukung validasi untuk memastikan input adalah angka.
    
    - TextFormField untuk dekripsi
        - Mirip dengan input nama produk, digunakan untuk mengambil input teks deskripsi produk.
        - Untuk mendukung validasi input untuk memastikan deskripsi tidak kosong.

**4. Bagaimana penerapan clean architecture pada aplikasi Flutter?**
    Clean Architecture adalah pola desain perangkat lunak yang membantu para pengembang menulis kode yang dapat dipelihara dan di-scale. Dengan memisahkan lapisan presentasi, lapisan domain, dan lapisan data, Clean Architecture memungkinkan pengembang untuk memodifikasi dan memperluas kode tanpa menambahkan kompleksitas yang tidak perlu .
    Penerapan Clean Architecture pada aplikasi Flutter dapat membantu meningkatkan kualitas dan skalabilitas aplikasi. Berikut adalah beberapa langkah yang dapat diikuti untuk menerapkan Clean Architecture pada aplikasi Flutter:
    **Pemisahan Lapisan**: 
    Dalam Clean Architecture, aplikasi dibagi menjadi tiga lapisan utama: lapisan presentasi, lapisan domain, dan lapisan data. Setiap lapisan memiliki tanggung jawab yang jelas dan terpisah satu sama lain.
      - **Lapisan Presentasi**: 
        - Bertanggung jawab untuk menampilkan data kepada pengguna dan menerima input dari pengguna. 
        - Di Flutter, lapisan presentasi dapat diimplementasikan menggunakan widget seperti StatelessWidget atau StatefulWidget.
        - Widget Flutter berperan sebagai tampilan (view) dalam lapisan presentasi.
        - State Management seperti BloC (Business Logic Component) atau Provider dapat digunakan untuk mengelola state dan logika bisnis pada lapisan presentasi.
        - Widget-widget presentasi tidak boleh memiliki logika bisnis yang kompleks, tetapi harus fokus pada tampilan dan interaksi dengan pengguna.
      - **Lapisan Domain**: 
        - Merupakan inti dari aplikasi dan berisi bisnis logika serta aturan domain. 
        - Lapisan ini tidak bergantung pada detail implementasi teknis dan dapat diuji secara terpisah.
        - Model-data, use case, dan repository-interface merupakan komponen utama dalam lapisan domain.
        - Model-data adalah representasi objek dalam domain aplikasi.
        - Use case adalah interaksi atau alur bisnis yang dapat dilakukan oleh pengguna.
        - Repository-interface adalah kontrak antara lapisan domain dengan lapisan data untuk mengakses dan menyimpan data.
      - **Lapisan Data**: 
        - Bertanggung jawab untuk mengakses sumber data eksternal, seperti API atau database. 
        - Lapisan ini berfungsi sebagai jembatan antara lapisan domain dan sumber data eksternal.
        - Lapisan data harus terisolasi dari implementasi teknis dan platform seperti Flutter.
        - Implementasi repository pada lapisan data harus mengimplementasikan repository-interface dari lapisan domain.
        - Penggunaan teknik Dependency Injection (DI) dapat membantu dalam menghubungkan lapisan domain dengan lapisan data.
    **Dependency Injection**: 
    Clean Architecture mendorong penggunaan Dependency Injection (DI) untuk mengelola dependensi antara lapisan. Dengan menggunakan DI, dependensi dapat disuntikkan ke dalam kelas yang membutuhkannya, sehingga memudahkan pengujian dan penggantian implementasi.
    **Test-Driven Development (TDD)**: 
    Clean Architecture juga mendorong penggunaan Test-Driven Development (TDD) untuk memastikan kualitas kode. Dengan TDD, pengembang menulis tes terlebih dahulu sebelum mengimplementasikan fitur, sehingga memastikan bahwa kode yang dihasilkan sudah diuji dengan baik.

    Cara Penerapan Clean Architecture pada Aplikasi Flutter:
        - Pisahkan kode ke dalam lapisan yang sesuai dengan konsep Clean Architecture.
        - Gunakan dependency injection untuk menyediakan implementasi yang diperlukan untuk setiap lapisan.
        - Pastikan bahwa setiap lapisan hanya bergantung pada lapisan yang berada di bawahnya (aturan arah tergantung).
    Dengan menerapkan Clean Architecture pada aplikasi Flutter, pengembang dapat memisahkan tanggung jawab dan meningkatkan kualitas serta skalabilitas aplikasi. Selain itu, penerapan Clean Architecture juga memudahkan pengujian dan pemeliharaan kode .
**5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)**
    1. **Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru dengan beberapa ketentuan**
      - Buat file baru bernama shoplist_form.dart.
      - Impor dependensi yang diperlukan, seperti flutter/material.dart dan inventory/widget/left_drawer.dart.
      - Buat sebuah StatefulWidget baru bernama ShopFormPage yang memperluas State<ShopFormPage>.
      - Implementasikan metode createState untuk mengembalikan sebuah instance baru _ShopFormPageState.
      - Di dalam kelas _ShopFormPageState, buat GlobalKey<FormState> yang disebut _formKey untuk mengelola status formulir.
      - Buat variabel _name, _amount, dan _description untuk menyimpan nilai dari input formulir.
      - Buat UI untuk halaman form menggunakan widget Scaffold, AppBar, Form, TextFormField, dan ElevatedButton.
      - Mengimplementasikan callback onChanged untuk setiap TextFormField untuk memperbarui variabel yang sesuai ketika nilai input berubah.
      - Mengimplementasikan callback validator untuk setiap TextFormField untuk memvalidasi nilai input.
      - Mengimplementasikan callback onPressed untuk ElevatedButton untuk menampilkan dialog dengan nilai form jika form tersebut valid.
      - Bungkus formulir dengan SingleChildScrollView untuk mengaktifkan pengguliran jika konten meluap.
      - Tambahkan widget LeftDrawer ke properti drawer Perancah untuk menyertakan drawer di halaman formulir.
    2. **Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.**
      Untuk menavigasi ke halaman form ketika tombol "Tambah Item" ditekan, perlu melakukan:
      - Di kelas MyHomePage, impor file shoplist_form.dart.
      - Modifikasi pemanggilan kembali onTap dari tombol "Tambah Item" di widget ShopCard untuk menggunakan Navigator.push untuk menavigasi ke rute ShopFormPage.
    3. **Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.**
      Untuk menampilkan nilai formulir dalam dialog pop-up setelah menyimpan, perlu melakukan:
      - Pada pemanggilan kembali onPressed dari ElevatedButton di kelas ShopFormPage, gunakan showDialog untuk menampilkan widget AlertDialog.
      - Di widget AlertDialog, tampilkan nilai formulir di dalam properti konten.
      - Tambahkan tombol "OK" ke properti tindakan widget AlertDialog untuk menutup dialog.
    4. **Membuat sebuah drawer pada aplikasi dengan beberapa ketentuan**
      Untuk membuat drawer dengan dua opsi, perlu:
      - Buat file baru bernama left_drawer.dart.
      - Impor dependensi yang diperlukan, seperti flutter/material.dart, inventory/screens/menu.dart, dan inventory/screens/shoplist_form.dart.
      - Buat StatelessWidget baru bernama LeftDrawer.
      - Buat UI untuk drawer menggunakan widget Drawer, ListView, DrawerHeader, dan ListTile.
      - Terapkan pemanggilan kembali onTap untuk setiap ListTile untuk menavigasi ke halaman yang sesuai menggunakan Navigator.push atau Navigator.pushReplacement.

## TUGAS 7
**1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?**
Perbedaan utama antara stateless dan stateful widget dalam pengembangan aplikasi Flutter adalah bagaimana mereka mengelola dan merespons perubahan dalam data atau keadaan aplikasi.
**a. Stateless Widget**
- Stateless widget adalah widget yang **tidak memiliki** keadaan internal (stateless) yang dapat berubah.
- Digunakan untuk bagian-bagian aplikasi yang **tidak memerlukan pembaruan berulang-ulang**. Contohnya adalah widget yang menampilkan teks statis, gambar, ikon, atau elemen UI lainnya yang tidak berubah selama waktu runtime.
- Stateless widget **tidak memiliki metode setState()**, sehingga tidak dapat memperbarui tampilan ketika data berubah.
- Stateless widget **lebih efisien** dalam hal kinerja daripada stateful widget karena mereka **tidak perlu merender ulang** diri mereka sendiri saat terjadi perubahan.
- Widget yang di-build hanya dengan konfigurasi yang telah diinisiasi sejak awal.

**b. Stateful Widget**
- Stateful widget adalah widget yang **memiliki** keadaan internal (state) yang dapat berubah selama waktu runtime.
- Digunakan untuk bagian-bagian aplikasi yang **memerlukan pembaruan berdasarkan perubahan data**, masukan pengguna, atau peristiwa lainnya.
- Stateful widget **memiliki metode setState()**, yang memungkinkan mereka untuk memicu pembaruan tampilan ketika data dalam keadaan internal berubah.
- Stateful widget **lebih fleksibel** dalam hal merespons perubahan dan memungkinkan untuk memperbarui UI sesuai dengan perubahan data atau input pengguna.
- Widget yang dapat berubah dinamis.

**2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.**
Dalam tugas ini, terdapat beberapa widget yang digunakan untuk membuat aplikasi Flutter yang sederhana. Berikut adalah daftar widget yang digunakan dan penjelasan fungsinya:
**a. Material**
- Widget ini digunakan untuk memberikan tampilan Material Design ke widget yang ada.
- Ini mencakup warna, ink splash effect, dan komponen tata letak seperti card.
- Dalam contoh ini, Material digunakan untuk mengatur latar belakang card.

**b. InkWell**
- Widget ini digunakan untuk membuat area yang responsif terhadap sentuhan pengguna. Widget ini digunakan untuk membuat area yang responsif terhadap sentuhan.
- Ketika pengguna menyentuh area ini, tindakan tertentu dapat diambil, seperti menampilkan SnackBar.
- Dalam contoh ini, InkWell digunakan untuk mendeteksi ketika pengguna menyentuh card.

**c. SnackBar**
- Widget ini digunakan untuk menampilkan pemberitahuan sementara di bagian bawah layar. Widget ini digunakan untuk menampilkan pesan singkat di bagian bawah layar.
- Dalam contoh ini, SnackBar digunakan untuk memberi tahu pengguna bahwa mereka telah menekan salah satu tombol di card.

**d. Container**
- Widget ini digunakan untuk mengelompokkan widget lain dan mengatur properti-properti seperti padding dan warna latar belakang. Widget ini digunakan untuk mengatur tata letak dan dekorasi widget lain.
- Dalam contoh ini, Container digunakan untuk mengelompokkan Icon dan Text dalam card.

**e. GridView.count**
- Widget ini digunakan untuk membuat tata letak grid dengan jumlah kolom yang ditentukan. Widget ini digunakan untuk menampilkan widget dalam bentuk grid.
- Ini digunakan untuk menampilkan beberapa card dalam grid layout.
- Dalam contoh ini, GridView.count digunakan untuk menampilkan card-card yang mewakili barang-barang yang dijual.

**f. Column**
- Widget ini digunakan untuk menata widget anak-anaknya secara vertikal.
- Ini digunakan untuk mengatur teks dan card dalam tata letak yang sesuai.
- Dalam contoh ini, Column digunakan untuk mengatur tampilan secara vertikal.

**g. Text**
- Widget ini digunakan untuk menampilkan teks dengan berbagai properti seperti ukuran font dan warna di layar.
- Dalam contoh ini, Text digunakan untuk menampilkan judul toko ("PBP Shop").

**h. Icon**
- Widget ini digunakan untuk menampilkan ikon di layar.
- Dalam contoh ini, Icon digunakan untuk menampilkan ikon yang mewakili barang-barang yang dijual.

Semua widget di atas digunakan untuk membangun tampilan aplikasi Flutter yang sederhana sesuai dengan deskripsi tugas yang diberikan. Mereka digunakan untuk mengatur teks, ikon, card, dan memberikan respons saat pengguna menyentuh card. Serta ada widget yang berdasarkan konvensi dalam pengembangan aplikasi Flutter, widget MaterialApp, Scaffold, dan AppBar biasanya digunakan dalam struktur dasar aplikasi.
**a. MaterialApp**
- Widget MaterialApp biasanya digunakan sebagai root widget dari aplikasi Flutter, dan ini digunakan untuk mengatur berbagai properti dan tema aplikasi, serta sebagai tempat utama untuk menentukan halaman awal aplikasi.
- Widget ini digunakan untuk membuat aplikasi Flutter.

**b. Scaffold**
- Widget Scaffold digunakan untuk membuat tata letak dasar aplikasi dengan elemen-elemen seperti AppBar, Drawer, dan BottomNavigationBar. Ini adalah wadah umum untuk berbagai komponen antarmuka pengguna dalam aplikasi.
- Widget ini digunakan untuk membuat tata letak dasar aplikasi, seperti AppBar dan body.

**c. AppBar**
- Widget AppBar digunakan untuk membuat bilah atas (app bar) yang biasanya berisi judul aplikasi dan fungsi-fungsi seperti tombol kembali. Ini adalah komponen penting dalam banyak aplikasi Flutter.
- Widget ini digunakan untuk membuat bilah aplikasi di bagian atas layar.

**3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)**
- **Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.**
    1. buat folder yang akan menyimpan program flutter, disini saya membuat folder dengan nama "tugas_flutter"
    2. buka cmd pada folder "tugas_flutter" lalu jalankan perintah "flutter create inventory" untuk membuat program flutter dengan tema inventory
    3. lalu kita pindah ke cmd inventory dengan perintah di cmd "cd inventory" dan untuk mengecek apakah flutter sudah terbuat bisa jalankan perintah "flutter run" pada cmd
- **Membuat tiga tombol sederhana dengan ikon dan teks untuk:**
    **Melihat daftar item (Lihat Item)**
    **Menambah item (Tambah Item)**
    **Logout (Logout)**
    1. Kita perlu menambahkan teks dan card, maka kita perlu define tipe pada list dengan mengubah file menu.dart dengan isi:
    class ShopItem {
        final String name;
        final IconData icon;

        ShopItem(this.name, this.icon);
    }
    2. Tambahkan barang-barang yang akan ditampilkan dan ingin dijual seperti nama, harga, dan icon barangnya
    final List<ShopItem> items = [
        ShopItem("Lihat Produk", Icons.checklist), -> ini digunakan untuk membuat card lihat product dengan icon didalam card berupa checklist
        ShopItem("Tambah Produk", Icons.add_shopping_cart), -> ini digunakan untuk membuat card tambah product dengan icon didalam card berupa shopping cart
        ShopItem("Logout", Icons.logout), -> ini digunakan untuk membuat card logout dengan icon didalam card berupa logout
    ];
    3. Menambahkan code dibawah ini dengan tujuan untuk membuat tampilan halaman utama aplikasi yang menampilkan daftar item barang dengan judul toko "PBP Shop" di bagian atas, dan item-item ini ditampilkan dalam bentuk grid. Jika pengguna menyentuh salah satu item, mereka akan melihat pemberitahuan (SnackBar) di bagian bawah layar.
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Shopping List',
        ),
      ),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'PBP Shop', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((ShopItem item) {
                  // Iterasi untuk setiap item
                  return ShopCard(item);
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
- **Memunculkan Snackbar dengan tulisan:**
    **"Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.**
    **"Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.**
    **"Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.**
    1. Tambahkan code ini:
        class ShopCard extends StatelessWidget {
        final ShopItem item;

        const ShopCard(this.item, {super.key}); // Constructor

        @override
        Widget build(BuildContext context) {
            return Material(
            color: Colors.indigo,
            child: InkWell(
                // Area responsive terhadap sentuhan
                onTap: () {
                // Memunculkan SnackBar ketika diklik
                ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(SnackBar(
                        content: Text("Kamu telah menekan tombol ${item.name}!")));
                },
                child: Container(
                // Container untuk menyimpan Icon dan Text
                padding: const EdgeInsets.all(8),
                child: Center(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Icon(
                        item.icon,
                        color: Colors.white,
                        size: 30.0,
                        ),
                        const Padding(padding: EdgeInsets.all(3)),
                        Text(
                        item.name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                        ),
                    ],
                    ),
                ),
                ),
            ),
            );
        }
        }
    Tujuan dari kode ini adalah membuat widget ShopCard yang mewakili setiap item barang dalam bentuk card yang berisi ikon dan teks. Saat pengguna menyentuh card, mereka akan melihat pemberitahuan (SnackBar) yang memberi tahu mereka tentang tindakan yang telah mereka lakukan, yaitu menekan tombol yang sesuai.