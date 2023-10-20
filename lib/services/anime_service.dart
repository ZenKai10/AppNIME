import 'package:appnime/models/anime.dart';

class ProductService {
  Future<List<Anime>> getAnime() async {
    // simulate API request delay
    await Future.delayed(Duration(seconds: 2));

    return [
      Anime(
          id: 1,
          title: 'Hunter X Hunter',
          image: 'assets/hunter.png',
          description:
              "'Ceritanya berfokus pada seorang anak laki-laki bernama Gon Freecss yang menemukan bahwa ayahnya, yang meninggalkannya di usia muda, sebenarnya adalah seorang Hunter yang terkenal di dunia, seorang profesional berlisensi yang berspesialisasi dalam kegiatan fantastik seperti menemukan spesies hewan langka atau tidak teridentifikasi.'",
          genre: 'Action'),
      Anime(
          id: 2,
          title: 'One Punch Man',
          image: 'assets/man.png',
          description:
              "'Ini menceritakan kisah Saitama, seorang pahlawan super yang, karena dia bisa mengalahkan lawan mana pun dengan satu pukulan, menjadi bosan karena kurangnya tantangan.'",
          genre: 'Action'),
      Anime(
          id: 3,
          title: 'Akame Ga Kill',
          image: 'assets/akame.png',
          description:
              "'Mengikuti kisah Tatsumi, seorang pejuang muda yang berangkat bersama kedua temannya untuk mencari uang guna dikirim kembali ke desa kecilnya. Tatsumi (disuarakan oleh Corey Hartzog) melakukan perjalanan ke ibu kota untuk bergabung dengan militer dengan harapan mendapatkan kehidupan yang lebih baik. Namun, dia segera mengetahui bahwa ibu kotanya sangat korup.'",
          genre: 'Action'),
      Anime(
          id: 4,
          title: 'Attack On Titan',
          image: 'assets/attack.png',
          description:
              "'Ini berlatar dunia di mana umat manusia terpaksa tinggal di kota-kota yang dikelilingi oleh tiga tembok besar yang melindungi mereka dari makhluk humanoid pemakan manusia raksasa yang disebut Titan; ceritanya mengikuti Eren Yeager, yang bersumpah untuk memusnahkan para Titan setelah mereka menghancurkan kampung halamannya.'",
          genre: 'Action'),
      Anime(
          id: 5,
          title: 'Bleach',
          image: 'assets/bleach.png',
          description:
              "'Ini mengikuti petualangan seorang remaja Ichigo Kurosaki, yang mewarisi takdir orang tuanya setelah ia memperoleh kekuatan Soul Reaper—personifikasi kematian yang mirip dengan Grim Reaper—dari Soul Reaper lain, Rukia Kuchiki.'",
          genre: 'Action'),
      Anime(
          id: 6,
          title: 'Blue Lock',
          image: 'assets/blue.png',
          description:
              "'Pemain sepak bola sekolah menengah dari seluruh Jepang berkumpul untuk sebuah proyek kontroversial yang dirancang untuk menciptakan striker terbaik dan paling egois di dunia. Jepang terus menerus kalah di Piala Dunia.'",
          genre: 'Sports'),
      Anime(
          id: 7,
          title: 'Cowboy Bebop',
          image: 'assets/boy.png',
          description:
              "'Di tengah meningkatnya tingkat kejahatan, Polisi Antar Tata Surya (ISSP) membuat sistem kontrak yang dilegalkan, di mana pemburu hadiah terdaftar mengejar penjahat dan membawa mereka hidup-hidup dengan imbalan hadiah. Protagonis serial ini adalah pemburu hadiah yang bekerja dari pesawat luar angkasa Bebop.'",
          genre: 'Comdey'),
      Anime(
          id: 8,
          title: 'Death Note',
          image: 'assets/death.png',
          description:
              "'Seorang siswa sekolah menengah bernama Light Turner menemukan buku catatan misterius yang memiliki kekuatan untuk membunuh siapa pun yang namanya tertulis di halaman-halamannya, dan meluncurkan perang rahasia untuk menyingkirkan dunia penjahat.'",
          genre: 'Drama'),
      Anime(
          id: 9,
          title: 'Demon Slayer',
          image: 'assets/demon.png',
          description:
              "'Sebuah keluarga diserang oleh iblis dan hanya dua anggota yang selamat – Tanjiro dan saudara perempuannya Nezuko, yang perlahan berubah menjadi iblis. Tanjiro bertekad menjadi pembunuh iblis untuk membalaskan dendam keluarganya dan menyembuhkan saudara perempuannya.'",
          genre: 'Action'),
      Anime(
          id: 10,
          title: 'Dragon Ball',
          image: 'assets/dragon.png',
          description:
              "'Dragon Ball menceritakan kisah seorang pejuang muda bernama Son Goku, seorang anak laki-laki aneh dengan ekor yang memulai pencarian untuk menjadi lebih kuat dan belajar tentang Bola Naga, ketika, setelah ketujuh orang itu berkumpul, mengabulkan permintaan apa pun. pilihan.'",
          genre: 'Action'),
      Anime(
          id: 11,
          title: 'Haikyuu',
          image: 'assets/haykiu.png',
          description:
              "' Siswa sekolah menengah pertama, Shoyo Hinata, menjadi terobsesi dengan bola voli setelah melihat sekilas SMA Karasuno bermain di Nationals di TV. Bertubuh pendek, Hinata terinspirasi oleh pemain yang dijuluki komentator 'Raksasa Kecil', spiker sayap Karasuno yang pendek namun berbakat.'",
          genre: 'Sports'),
      Anime(
          id: 12,
          title: 'My Hero Academia',
          image: 'assets/hero.png',
          description:
              "'Seorang anak laki-laki pecinta superhero tanpa kekuatan apa pun bertekad untuk mendaftar di akademi pahlawan bergengsi dan mempelajari apa artinya menjadi pahlawan. Seorang anak laki-laki pecinta superhero tanpa kekuatan apa pun bertekad untuk mendaftar di akademi pahlawan bergengsi dan mempelajari apa artinya menjadi pahlawan.'",
          genre: 'Action'),
      Anime(
          id: 13,
          title: 'Jujutsu Kaisen',
          image: 'assets/juju.png',
          description:
              "'Yuji Itadori, seorang remaja yang baik hati, bergabung dengan Klub Ilmu Gaib di sekolahnya untuk bersenang-senang, tetapi menemukan bahwa anggotanya adalah penyihir sungguhan yang dapat memanipulasi energi antar makhluk untuk digunakan sendiri. Dia mendengar tentang jimat terkutuk - jari Sukuna, iblis - dan menjadi sasaran makhluk terkutuk lainnya.'",
          genre: 'Action'),
      Anime(
          id: 14,
          title: 'One Piece',
          image: 'assets/one.png',
          description:
              "'Serial ini berfokus pada Monkey D. Luffy—seorang pemuda yang terbuat dari karet setelah secara tidak sengaja memakan Buah Iblis—yang memulai perjalanan dari Laut Biru Timur untuk menemukan harta karun utama mendiang Raja Bajak Laut Gol D. Roger yang dikenal sebagai (One Piece), dan mengambil alih gelar sebelumnya.",
          genre: 'Action'),
      Anime(
          id: 15,
          title: 'Naruto Shippuden',
          image: 'assets/naruto.png',
          description:
              "' Ini menceritakan kisah Naruto Uzumaki, seorang ninja muda yang mencari pengakuan dari teman-temannya dan bercita-cita menjadi Hokage, pemimpin desanya.'",
          genre: 'Drama'),
      Anime(
          id: 16,
          title: 'Tokyo Ghoul',
          image: 'assets/tokyo.png',
          description:
              "'Terletak di dunia di mana manusia hidup dalam ketakutan terus-menerus terhadap hantu - makhluk humanoid berkekuatan super yang memakan daging manusia untuk bertahan hidup, seorang mahasiswa pemalu bernama Kaneki Ken, yang hampir terbunuh dalam serangan salah satu monster ini, menjadi setengah hantu. dirinya sendiri setelah menerima transplantasi organ dari ghoul.'",
          genre: 'Drama'),
      Anime(
          id: 17,
          title: 'Spy X Family',
          image: 'assets/spy.png',
          description:
              "'Seorang mata-mata dalam misi penyamaran menikah dan mengadopsi seorang anak sebagai bagian dari penyamarannya. Istri dan putrinya mempunyai rahasia masing-masing, dan ketiganya harus berusaha untuk tetap bersama.'",
          genre: 'Comdey'),
    ];
  }

  final List<Map<String, String>> categories = [
    {
      "name": "Action",
      "image": "action.jpg",
      "description": "Anime dengan adegan aksi dan pertarungan yang intens."
    },
    {
      "name": "Drama",
      "image": "drama.jpg",
      "description": "Anime dengan alur cerita yang emosional dan serius."
    },
    {
      "name": "Comedy",
      "image": "comedy.jpg",
      "description": "Anime dengan momen lucu dan ringan."
    },
    {
      "name": "Romance",
      "image": "romance.jpg",
      "description": "Anime dengan hubungan romantis sebagai tema sentralnya."
    },
  ];
}
