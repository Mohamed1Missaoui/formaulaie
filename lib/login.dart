
import 'package:flutter/material.dart';





void main() {
  runApp(MaterialApp(home:MyApp()));
}

String name="";
String lastname="";
String DateNissance="";
String  hf="";
String val="";

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
child:Scaffold(appBar: AppBar(
  backgroundColor: Colors.red,
  title: Text("formation", style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 40,
fontStyle: FontStyle.italic,
color: Color.fromARGB(255, 78, 237, 10),

),),

),
body:Center(
 
child: Column(
  children: [

Text("Inscripution",

textAlign: TextAlign.center,
style: TextStyle(
fontWeight: FontWeight.bold,
fontSize: 40,
fontStyle: FontStyle.italic,
color: Color.fromARGB(255, 15, 251, 23)

),
),
Center(

child: Column(
children: [
TextFormField(
  onChanged: (value) {
    setState(() {
      name=value;
    });
    
  },
keyboardType: TextInputType.name,
decoration: InputDecoration(
//labelText:"Name",
hintText: "Entre prenom",
prefixIcon: Icon(Icons.perm_identity),
border: OutlineInputBorder()

),

),


TextFormField(
  onChanged: (value) {
    setState(() {
      lastname=value;
    });
  },
keyboardType: TextInputType.emailAddress,
decoration: InputDecoration(
//labelText:"last name",
hintText: "Entre  nom",
prefixIcon: Icon(Icons.perm_identity),
border: OutlineInputBorder()

),

),

Padding(padding: EdgeInsets.all(8),


),



TextFormField(
  onChanged: (value) {
    setState(() {
      email=value;
    });
  },
keyboardType: TextInputType.emailAddress,
decoration: InputDecoration(
//labelText:"Email",
hintText: "Entre Date Nissance",
prefixIcon: Icon(Icons.data_array),
border: OutlineInputBorder()

),

),

TextField(
  onChanged: ((value) {
    setState(() {
    val=value;   
    });
   
  }),

),



ElevatedButton(
child: Text("validation",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Color.fromARGB(255, 186, 109, 14)),

),


onPressed:(){

   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Screen2()));
},

),





],

)

),


]),



)



)

    );
    backgroundColor:Colors.red;
  }
}
class Screen2 extends StatefulWidget {
  @override
  _Screen2State createState() => _Screen2State();
}
class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(172, 109, 10, 3),
      appBar: AppBar(
        
          title: const Text('Navigate to a new screen on Button click'),
          backgroundColor: Color.fromARGB(255, 140, 255, 68)),
      body: Center(
        child: Column(children: [
Text('Name is : $name',
style:TextStyle(
fontSize: 40

)

),
Text('lastname is : $lastname',
style:TextStyle(
fontSize: 40

)

),
Text('Email : $email',
style:TextStyle(
fontSize: 40

)

),
Text('Password : $val',
style:TextStyle(
fontSize: 40

)

),

Text('hom/fam  : $hf',
style:TextStyle(
fontSize: 40

)

),
           ElevatedButton(
      
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyApp()));
          },
          child: Text("valide",style: TextStyle(color:Colors.red),),
          
        ),
        
        ],)
       
      ),
    );
  }
}