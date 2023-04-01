import 'package:flutter/material.dart';
import 'package:lasithnew/Screens/Home.dart';

class loading extends StatefulWidget {
  const loading({Key? key}) : super(key: key);

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> {
  int numb=0;
  final List<Map<String,dynamic>> drugs=[
    {'name':'Panadol','Introduction':"Paracetamol is a commonly used medicine that can help treat pain and reduce a high temperature (fever).",'Dose':'1.5 mg for adults','Link':'lib/assets/panadol.png'},
    {'name':'Paracitamol','Introduction':'Like Pandol','Dose':'1.0 mg for adults','Link':'lib/assets/medicine.png'},
    {'name':'Omeprazole','Introduction':'For gastrities','Dose':'1.8 mg for adults','Link':'lib/assets/omeprozole.webp'},
    {'name':'Citrazine','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/medicine.png'},
    {'name':'Albendazole','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/albendazole.png'},
    {'name':'Mebendazole','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/logo.png'},
    {'name':'Panadol','Introduction':"Paracetamol is a commonly used medicine that can help treat pain and reduce a high temperature (fever).",'Dose':'1.5 mg for adults','Link':'lib/assets/panadol.png'},
    {'name':'Paracitamol','Introduction':'Like Pandol','Dose':'1.0 mg for adults','Link':'lib/assets/medicine.png'},
    {'name':'Omeprazole','Introduction':'For gastrities','Dose':'1.8 mg for adults','Link':'lib/assets/omeprozole.webp'},
    {'name':'Citrazine','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/medicine.png'},
    {'name':'Albendazole','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/albendazole.png'},
    {'name':'Mebendazole','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/logo.png'},
    {'name':'Panadol','Introduction':"Paracetamol is a commonly used medicine that can help treat pain and reduce a high temperature (fever).",'Dose':'1.5 mg for adults','Link':'lib/assets/panadol.png'},
    {'name':'Paracitamol','Introduction':'Like Pandol','Dose':'1.0 mg for adults','Link':'lib/assets/medicine.png'},
    {'name':'Omeprazole','Introduction':'For gastrities','Dose':'1.8 mg for adults','Link':'lib/assets/omeprozole.webp'},
    {'name':'Citrazine','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/medicine.png'},
    {'name':'Albendazole','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/albendazole.png'},
    {'name':'Mebendazole','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/logo.png'},
    {'name':'Panadol','Introduction':"Paracetamol is a commonly used medicine that can help treat pain and reduce a high temperature (fever).",'Dose':'1.5 mg for adults','Link':'lib/assets/panadol.png'},
    {'name':'Paracitamol','Introduction':'Like Pandol','Dose':'1.0 mg for adults','Link':'lib/assets/medicine.png'},
    {'name':'Omeprazole','Introduction':'For gastrities','Dose':'1.8 mg for adults','Link':'lib/assets/omeprozole.webp'},
    {'name':'Citrazine','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/medicine.png'},
    {'name':'Albendazole','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/albendazole.png'},
    {'name':'Mebendazole','Introduction':'Pain killer','Dose':'1.5 mg for adults','Link':'lib/assets/logo.png'},
  ];
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {
    // at the beginning, all users are shown
    _foundUsers = drugs;
    super.initState();
  }
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = drugs;
    } else {
      results = drugs
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Color.fromRGBO(54, 47, 217, 100),
                  Colors.white,
                ]
            ),
          ),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 215,
                        child:Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0.0,0.0,50.0,0.0),
                                      child:
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            Navigator.push(context, MaterialPageRoute(builder:(context)=>const home()));
                                          });
                                        },
                                        child:Container(
                                          alignment: Alignment.topLeft,
                                          child: const Text('Back'),
                                       ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(30.0, 0.0, 120.0, 0.0),
                                      child: Container(
                                        alignment: Alignment.topCenter,
                                        child: const Text('Search your Drug',style: TextStyle(fontSize: 20),),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(45.0, 40.0, 45.0, 10.0),
                                  child: Container(
                                    width: 334,
                                    height: 49,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(0, 0, 0, 0.2),
                                      borderRadius: BorderRadius.circular(10),
                                        border: Border.all(color: Colors.black)
                                    ),
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                      child: TextField(
                                        onChanged: (value) => _runFilter(value),
                                        decoration: const InputDecoration(
                                          hintText: "Please enter drug name",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //choose your drug from here
                      ),
                      SizedBox(
                        width: 500,
                        height: 600,
                        child:Padding(
                          padding: const EdgeInsets.fromLTRB(45.0, 40.0, 45.0, 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(68, 68, 68, 0.4),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)
                            ),
                            child: _foundUsers.isNotEmpty?
                            ListView.builder(
                              itemCount: _foundUsers.length,
                                itemBuilder: (context,index){
                                return ListTile(
                                  title:GestureDetector(
                                    onTap: (){
                                      setState(() {
                                        numb=_foundUsers.length;
                                        Navigator.push(context, MaterialPageRoute(builder:(context)=>det(id: index,filteredList: _foundUsers,)));
                                      });
                                    },
                                    child: Container(
                                      width: 131,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: const Color.fromRGBO(68, 68, 68, 0.2),
                                          borderRadius: BorderRadius.circular(3),
                                          border: Border.all(color: const Color.fromRGBO(158,136,249, 1))
                                      ),
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                            child: Image.asset('lib/assets/medicine.png'),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0),
                                            child: Text(_foundUsers[index]['name'],style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1)),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                                }
                            )
                                : const Text(
                              'No results found',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class det extends StatefulWidget {
  final id;
  det({super.key, this.id,required this.filteredList});
  List<Map<String, dynamic>> filteredList=[];

  @override
  State<det> createState() => _detState(id,filteredList);
}

class _detState extends State<det> {
  int id;

  var filteredList;
  _detState(this.id, this.filteredList);
  @override

  Widget build(BuildContext context) {
    return Placeholder(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Color.fromRGBO(54, 47, 217, 100),
                    Colors.white,
                  ]
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 215,
                        child:Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(10.0,0.0,0.0,0.0),
                                      child:
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            Navigator.push(context, MaterialPageRoute(builder:(context)=>const loading()));
                                          });
                                        },
                                        child:Container(
                                          alignment: Alignment.center,
                                          child: const Text('Back'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(45.0, 0.0, 0.0, 0.0),
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 250,
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: const Color.fromRGBO(75, 126, 255, 0.7),
                                              borderRadius: BorderRadius.circular(20),
                                              border: Border.all(color: Colors.black)
                                            ),
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(filteredList[id]['name'],style: const TextStyle(color:Color.fromRGBO(51, 0, 255, 1),fontSize: 35 ),),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(90.0, 10.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width: 250,
                                    height: 150,
                                    child:Image.asset(filteredList[id]['Link']),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        //choose your drug from here
                      ),
                      SizedBox(
                        height: 600,
                        child:Padding(
                          padding: const EdgeInsets.fromLTRB(45.0, 40.0, 45.0, 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(68, 68, 68, 0.4),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.black)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: const [
                                      Text('Introduction',style: TextStyle(color: Color.fromRGBO(0, 0, 255, 1),fontSize:20 ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Text(filteredList[id]['Introduction'],style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1),fontSize:16 ),),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: const [
                                      Text('Dose',style: TextStyle(color: Color.fromRGBO(0, 0, 255, 1),fontSize:20 ),),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(filteredList[id]['Dose'],style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 1),fontSize:16 ),),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

