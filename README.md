**TUGAS 7**
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