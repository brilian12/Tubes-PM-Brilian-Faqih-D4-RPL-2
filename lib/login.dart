import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {

Dio dio=new Dio();

  TextEditingController _us = TextEditingController();
  TextEditingController _pw = TextEditingController();

  
  
  Future<void> logins() async{
  print("OK ${_us.text}");

 Response response;
    response = await dio.post("http://192.168.100.236/absensi/login.php", data:FormData.fromMap(
        {
          "username": "${_us.text}",
          "password": "${_pw.text}",
        }
    ));
    print(response.data);
 if(response.data['status']==1){
 print("login berhasil");
 //print(response.data['data']['nim']);
 setState(() {
 _us.text="";
 _pw.text="";
 });
 }
 else if (response.data['status']==0){
print("login gagal");
Navigator.pushNamed(context, '/login');
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
        Text("Login",style: TextStyle(height: 3,fontSize: 20,fontWeight: FontWeight.bold, color: Colors.blueAccent,)),
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
          logins()
          },
          child: Text("Login",style: TextStyle(fontSize: 18)),
          )
        ],
     )
     )
      ],
      ),
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