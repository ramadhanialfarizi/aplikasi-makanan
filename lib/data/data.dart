class DataFood {
  String nama;
  String harga;
  String description;
  String imageAssets;

  DataFood({
    this.nama,
    this.harga,
    this.description,
    this.imageAssets,
  });
}

var dataList = [
  DataFood(
    nama: 'Burger Daging',
    harga: 'Rp 20.000',
    description:
        'Hamburger (atau sering kali disebut dengan burger) adalah sejenis makanan berupa roti berbentuk bundar yang diiris dua dan di tengahnya diisi dengan patty yang biasanya diambil dari daging, kemudian sayur-sayuran berupa selada, tomat dan bawang bombay.',
    imageAssets: 'assets/burger.jpg',
  ),
  DataFood(
    nama: 'Mie Yamin',
    harga: 'Rp 30.000',
    description:
        'Mi yamin adalah masakan Indonesia yang terbuat dari mi kuning direbus mendidih kemudian ditaburi saus kecap khusus beserta daging ayam dan sayuran. Mi yamin terkadang ditambahi dengan bakso, pangsit, dan jamur. ',
    imageAssets: 'assets/mieYamin.jpg',
  ),
  DataFood(
    nama: 'Mie Yamin Bakso',
    harga: 'Rp 15.000',
    description:
        'Mi yamin adalah masakan Indonesia yang terbuat dari mi kuning direbus mendidih kemudian ditaburi saus kecap khusus beserta daging ayam dan sayuran. Mi yamin terkadang ditambahi dengan bakso, pangsit, dan jamur. ',
    imageAssets: 'assets/mieYaminBakso.jpg',
  ),
  DataFood(
    nama: 'Ayam Goreng',
    harga: 'Rp 30.000',
    description:
        'Ayam goreng adalah hidangan yang dibuat dari daging ayam dicampur tepung bumbu yang digoreng dalam minyak goreng panas. Beberapa rumah makan siap saji secara khusus menghidangkan ayam goreng, misalnya Kentucky Fried Chicken.',
    imageAssets: 'assets/ayamGoreng.jpg',
  ),
  DataFood(
    nama: 'Ayam Mentega',
    harga: 'Rp 30.000',
    description:
        'Ayam goreng mentega adalah makanan yang sering dijual di restoran chinese food. Sajian ini terkenal nikmat dan mudah dibuat. Ciri khas dari ayam goreng mentega adalah ayam yang dipotong 12 bagian agar bumbu serta saus menyerap sempurna.',
    imageAssets: 'assets/ayamMentega.jpg',
  ),
];
