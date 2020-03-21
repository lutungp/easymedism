import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFF2F2F2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              height: MediaQuery.of(context).size.height / 2.4,
              // decoration: BoxDecoration(
              //   color: Colors.white10,
              //   image: DecorationImage(
              //     image: AssetImage('images/fruit.png'),
              //     fit: BoxFit.fill,
              //   ),
              // ),
            ),
          
            Text(
              "WE WILL FIND THE BEST",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF53714B),
                  fontSize: 16),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "find the nearest places with the best organic foods and make your life healthier!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF53714B),
                ),
              ),
            ),
          
            Padding(
              //SET PADDING UNTUK MENENTUKAN BERAPA JARAK DARI OBJEK SEKITAR
              padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
              
              child: RaisedButton(
                onPressed: () {
                  //FUNGSI DARI CODE DIBAWAH ADALAH UNTUK BERPINDAH KE HALAMAN DENGAN ROUTE /LOGIN
                  //pushReplacementNamed BERARTI KETIKA BERPINDAH SCREEN, MAKA SCREEN SEBELUMNYA AKAN DIHAPUS SEHINGGA USER TIDAK MEMILIKI KEMAMPUAN UNTUK KEMBALI KE HALAMAN SEBELUMNYA
                
                  Navigator.pushReplacementNamed(context, '/login');
                
                  //JANGAN LUPA UNCOMMENT DI ATAS APABILA HALAMAN LOGIN SUDAH DIBUAT
                },
                  
                //MODIFIKASI BUTTONNYA MENJADI ROUNDED
                shape: RoundedRectangleBorder(
                  //KEMUDIAN BORDERNYA DIBUAT MELENGKUNG DENGAN BORDER RADIUS
                  borderRadius: BorderRadius.circular(80.0),
                ),
                padding: const EdgeInsets.all(0.0),
                //
                child: Container(
                  //MEMBUAT DEKORASI GRADIENT DENGAN CONTAINER
                  decoration: const BoxDecoration(
                    //GRADIENT INI BISA MENAMPUNG BANYAK WARNA UNTUK DIKOMBINASIKAN
                    gradient: LinearGradient( 
                      //SILAHKAN MASUKKAN CODE WARNANYA, JADI FORMATNYA JIKA INGIN MENGGUNAKAN HEXA COLOR ADALAH 0XFF DITAMBAHAN CODE HEXA, CONTOH HITAM: 0XFF000000 DIMANA 6 ANGKA 0 DIBELAKANG ADALAH HEXA COLOR UNTUK HITAM
                      colors: <Color>[Color(0xFF13E3D2), Color(0xFF5D74E2)],
                    ),
                    //DARI CONTAINER INI KITA SET BORDER RADIUSNYA DIMANA SETIAP SUDUTNYA MELENGKUNG SEBESAR 80
                    borderRadius: BorderRadius.all(
                      Radius.circular(80.0),
                    ),
                  ),
                  //KEMUDIAN TENTUKAN UKURANNYA AGAR MEMENUHI BUTTON
                  constraints: const BoxConstraints(
                    minWidth: 150.0, //SEBENARNYA WIDTH TIDAK PERLU DISET KARENA OTOMATIS MENGIKUTI 
                    minHeight: 36.0, //INI ADALAH UKURAN DEFAULT DARI RAISED BUTTON
                  ),
                  alignment: Alignment.center,
                  //SELANJUTNYA MASUKKAN TEKS UNTUK TOMBOL TERSEBUT
                  child: const Text(
                    'Get Started',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          
            Spacer(), //DIGUNAKAN UNTUK MEMBUAT JARAK DENGAN WIDGET LAIN
            Container(
              width: double.infinity, //LEBAR CONTAINERNYA DIBUAT SELEBAR MUNGKIN
              decoration: BoxDecoration(
                //KEMUDIAN DIBUAT MELENGKUNG PADA SUDUT ATAS KANAN-KIRI
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),

            )
            
          ],
        ),
      ),
    );
  }
}