import 'notifications.dart';
import 'userReportIssue.dart';
import '../user/widgetList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class userReportPage extends StatefulWidget {
  const userReportPage({super.key});
  

  @override
  State<userReportPage> createState() => _userReportPageState();
}


class _userReportPageState extends State<userReportPage> {
    int reportissue = 0;
    int reportissueChoosen = 1;
    int notificationsChoosen = 0;
    void toReportIssue(){

      setState(() {
        if(reportissueChoosen==0){
          reportissueChoosen = 1;
          notificationsChoosen = 0;
        }
        reportissue = 0;

    });
    }
     toNotifications(){
      setState(() {
      if(notificationsChoosen==0){
          notificationsChoosen = 1;
          reportissueChoosen = 0;
        }
      reportissue = 1;
    });
    }

    
  
  @override
  Widget build(BuildContext context) {

    final List<Widget> _tabs = [
    userReportIssue(),

    
    notifications()
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
          'Report',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24
              // fontWeight: FontWeight.bold
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
                  chooseOne(
                    boxColor: background[reportissueChoosen] ,
                    Textcolor: fontcolor[reportissueChoosen], 
                    title: 'Report Issue', 
                    func: toReportIssue
                    
                    ),
                  chooseOne(
                    Textcolor: fontcolor[notificationsChoosen], 
                    title: 'Notifications', 
                    func: toNotifications, 
                    boxColor: background[notificationsChoosen]
                    ),                 
                ],
              ),
            ),
            

           
            ],
              ),
            Column(
              children: [
                Container(
                  
                  child: _tabs[reportissue],
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
