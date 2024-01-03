import 'package:flutter/material.dart';

class SecondRoad extends StatelessWidget {
  const SecondRoad({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const  Column(
                  children: [  
                    Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.location_on,
                                color: Colors.red),
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("street  2"),
                            ],
                          ))
                        ],
                      ),
                      SizedBox(height:30),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.local_fire_department_outlined,
                                color: Colors.red),
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("1000"),
                              Text(
                                "calories",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ))
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.do_not_step, color: Colors.purple),
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                        
                            Text(
                            
                              '1400 steps', 
                              style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              ),
                            ),
                            ],
                          ))
                        ],
                      ),
                      SizedBox(height: 12),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Icon(Icons.hourglass_bottom,
                                color: Colors.lightBlueAccent),
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("20"),
                              Text(
                                "min",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ))
                        ],
                      ),
                    ],
                  );
  }
}

