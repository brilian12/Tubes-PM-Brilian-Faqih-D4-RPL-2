import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class register extends StatefulWidget {
  const register({ Key? key }) : super(key: key);
  @override
  State<register> createState() => register_state();
}

Dio dio = new Dio();

class register_state extends State<register>{
TextEditingController _nama = TextEditingController();
  TextEditingController _jk = TextEditingController();
  TextEditingController _kelas = TextEditingController();
  TextEditingController _us = TextEditingController();
  TextEditingController _pw = TextEditingController();
  GlobalKey<ScaffoldState> _al = new GlobalKey<ScaffoldState>();

  Future<void> insertdata() async{
  print("OK ${_nama.text}");

 Response response;
    response = await dio.post("http://192.168.100.236/absensi/insert.php", data:FormData.fromMap(
        {
          "nama": "${_nama.text}",
          "gender": "${_jk.text}",
          "kelas": "${_kelas.text}",
          "username": "${_us.text}",
          "password": "${_pw.text}",
        }
    ));
    print(response.data);
 if(response.data['status']==1){
 print("data disimpan");
 setState(() {
 _nama.text="";
 _jk.text="";
 _kelas.text="";
 _us.text="";
 _pw.text="";
 });
 }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Stack(
      children: <Widget>[header()],
      ),
     SizedBox(
     child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        Text("Register",style: TextStyle(height: 3,fontSize: 20,fontWeight: FontWeight.bold, color: Colors.blueAccent,)),
        TextFormField( 
            controller: _nama,
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Masukan Nama Lengkap',  
              labelText: 'Nama Lengkap',  
            ),  
          ), 
        TextFormField( 
            controller: _jk,
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'jenis kelamin',  
              labelText: 'Jenis Kelamin',  
            ),  
          ),  
        TextFormField(  
            controller: _kelas,
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Masukan Kelas',  
              labelText: 'Kelas',  
            ),  
          ), 
          TextFormField( 
            controller: _us, 
            decoration: const InputDecoration(  
              icon: const Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Username',  
            ),  
          ),  
        TextField( 
            controller: _pw, 
            decoration: const InputDecoration(  
              icon: const Icon(Icons.lock),  
              hintText: 'Enter your password',  
              labelText: 'Password',
               
            ),  
            autofocus: false,
            obscureText: true,
          ),
          Text("",style: TextStyle(height: 2)),  
          ElevatedButton(onPressed: () => {
            //insertdata(),
            //Navigator.pushNamed(context, '/login')
            insertdata()
          },
          child: Text("Daftar",style: TextStyle(fontSize: 18)),
          )
        ],
     )
     )
      ],
    )
    
    
    );
  }
}

Widget header(){
  return Container(
  height: 150,
           width: double.infinity,
           decoration: BoxDecoration(
            color: Colors.lightBlue
           ), 
  );
}

