import 'package:flutter/material.dart';

class ThirdRoad extends StatelessWidget {
  const ThirdRoad({super.key});

  @override
  Widget build(BuildContext context) {
    return const 
                  Column(
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
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text("Reach to company"),
                            ],
                          ))
                        ],
                      ),
                      
                      SizedBox(height: 20),
                      Row(
                        children: [
                          
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                        
                            Text(
                            
                              'Entering From Gate ......................', 
                              style: TextStyle(
                              color: Color.fromARGB(255, 169, 9, 9),
                              fontSize: 12,
                              ),
                            ),
                            ],
                          ))
                        ],
                      ),
                    
                    ],
                  );
  }
}
