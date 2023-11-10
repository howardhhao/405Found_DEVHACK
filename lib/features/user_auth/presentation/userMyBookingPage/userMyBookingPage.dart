import 'past.dart';
import 'upcoming.dart';
import 'package:flutter/material.dart';

class userMyBookingPage extends StatefulWidget {
  const userMyBookingPage({super.key});
  

  @override
  State<userMyBookingPage> createState() => _userMyBookingPageState();
}

class _userMyBookingPageState extends State<userMyBookingPage> {
    int tab = 0;
    int upcoming = 1;
    int past = 0;
    void toUpcoming(){

      setState(() {
        if(upcoming==0){
          upcoming = 1;
          past = 0;
        }
        tab = 0;

    });
    }
     toPast(){
      setState(() {
      if(past==0){
          past = 1;
          upcoming = 0;
        }
      tab = 1;
    });
    }

    
  
  @override
  Widget build(BuildContext context) {

    final List<Widget> _tabs = [
    Upcoming(),

    
    Past()
  ];

    

    final List<Color> background = [
   Color.fromRGBO(242, 242, 242, 1),
    Color.fromRGBO(198, 124, 78, 1),
    ]   ;

    final List<Color> fontcolor = [
      Color.fromRGBO(0, 0, 0, 1),
   Color.fromRGBO(255, 255, 255, 1),
    
    ]   ;
    

    return Scaffold(
      appBar:  AppBar(
        toolbarHeight: MediaQuery.sizeOf(context).height*0.1,
          title: Text(
          'My Bookings',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24
            ),
            
          ),
          centerTitle: true,
        backgroundColor: Color.fromRGBO(255, 213, 139, 1),
        
        
      ),
      
      body: SafeArea(
        
        child: Container(
        
        decoration:  BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.01, 1.2], // Three stops for three colors
            colors: [
              Colors.white,
              Color.fromRGBO(255, 168, 0, 0),
            ],
          ),
          
        
       ),
       
        child: Column(
          children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          

          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width*0.82,
              
              decoration:  BoxDecoration(
                color: Color.fromRGBO(242, 242, 242, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(20)
                )
              ),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: [
                  
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.4,
                    height: MediaQuery.sizeOf(context).height*0.07,
                    decoration:  BoxDecoration(
                      color: background[upcoming],
                      borderRadius: BorderRadius.all(
                        Radius.circular(14)
                      )
                    ),
                    child: TextButton(                
                      onPressed: toUpcoming,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Upcoming',
                            style: TextStyle(
                              color: fontcolor[upcoming],
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                              
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width*0.4,
                    height: MediaQuery.sizeOf(context).height*0.07,
                    decoration:  BoxDecoration(
                      color: background[past],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10)
                      )
                    ),
                    child: TextButton(
                    onPressed: toPast,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Past',
                          style: TextStyle(
                            color: fontcolor[past],
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                  
                  

                ],
              ),
            ),
            ],
              ),
            Column(
              children: [
                Container(
                  
                  child: _tabs[tab],
                )
              ],
            )
          ],
              ),
          
        )
      ),
      );
      
    
  }
}
