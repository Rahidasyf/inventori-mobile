Nama    : Rahida Syafa Nurdya

NPM     : 2206829023

Kelas   : PBP B

------------------------------------------------------------------------------------------------

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