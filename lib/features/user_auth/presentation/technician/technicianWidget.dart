
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'serviceDetails.dart';
import 'package:flutter_firebase/features/user_auth/presentation/user/widgetList.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:intl/intl.dart';


// Tech Home Page
class HiTech extends StatefulWidget {
  String TechName;

  HiTech({required this.TechName});

  @override
  State<HiTech> createState() => _HiTechState();
}
class _HiTechState extends State<HiTech> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Color.fromRGBO(181, 223, 220, 1),
        borderRadius: BorderRadius.circular(15)
      ),
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    'Hi,',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Text(
                    widget.TechName,
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                  Icon(
                    Icons.waving_hand,
                    color: Colors.yellow,
                    size: 36,
                  )
                ],
              ),
              Text(
                'Good Evening!',
                style: GoogleFonts.poppins(
                  color: Color.fromRGBO(136, 136, 136, 1),
                  fontSize: 20
                ),
              )
            ],
          ),
          Image.asset('assets/image/icon.png')
        ],
      ),
    );
  }
}

class HomePageGraph extends StatefulWidget {
  const HomePageGraph({super.key});

  @override
  State<HomePageGraph> createState() => _HomePageGraphState();
}
class _HomePageGraphState extends State<HomePageGraph> {
  
  @override
  Widget build(BuildContext context) {
    final List<IncomePerDay> chartData = <IncomePerDay>[
      IncomePerDay('day 20', 200),
      IncomePerDay('day 21', 100),
      IncomePerDay('day 22', 250),
      IncomePerDay('day 23', 50),
      IncomePerDay('day 24', 0),
      // IncomePerDay('day 25', 200),
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.25,
      padding: EdgeInsets.all(10),
      child: SfCartesianChart(
        backgroundColor: Colors.white,
        primaryXAxis: CategoryAxis(
          title: AxisTitle(
            text: 'Day',
            textStyle: GoogleFonts.poppins(fontSize: 16),
          ),
        ),
        primaryYAxis: NumericAxis(
          title: AxisTitle(
            text: 'Income',
            textStyle: GoogleFonts.poppins(fontSize: 16),
          ),
        ),
        series: <ChartSeries>[
          ColumnSeries<IncomePerDay, String>(
            dataSource: chartData,
            xValueMapper: (IncomePerDay data, _) => data.day,
            yValueMapper: (IncomePerDay data, _) => data.income,
            dataLabelSettings: DataLabelSettings(isVisible: true),
          )
        ],
      ),
    );
  }
  
}

class IncomePerDay{
  final int income;
  final String day;

  IncomePerDay(this.day, this.income);
}

class ReminderText extends StatelessWidget {
  const ReminderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          leftPadding(ratio: 0.1),
          Text(
            'Reminder',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          )
        ],
      ),
    );
  }
}

class ReminderBox extends StatefulWidget {
  String title;
  String description;

  ReminderBox({required this.title, required this.description});

  @override
  State<ReminderBox> createState() => _ReminderBoxState();
}
class _ReminderBoxState extends State<ReminderBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.14,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.notifications,
              color: Colors.black,
              size: 48,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width*0.5,
                  child: Text(
                    widget.title,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ),
                
                Container(
                  width: MediaQuery.sizeOf(context).width*0.5,
                  child: Text(
                  widget.description,
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.normal
                    
                  ),
                  textAlign: TextAlign.left,
                ),
                )
                
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomerDetailsBox extends StatefulWidget {
  String name;
  String phone;
  String address;

  CustomerDetailsBox({required this.name, required this.phone, required this.address});

  @override
  State<CustomerDetailsBox> createState() => _CustomerDetailsBoxState();
}
class _CustomerDetailsBoxState extends State<CustomerDetailsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.02),
              CustomerDetailsBoxText(input: 'Name : '),
              CustomerDetailsBoxText(input: widget.name),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.02),
              CustomerDetailsBoxText(input: 'Phone number : '),
              CustomerDetailsBoxText(input: widget.phone),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.02),
              CustomerDetailsBoxText(input: 'Address : '),
              Container(
                width: MediaQuery.sizeOf(context).width*0.5,
                child: CustomerDetailsBoxText(input: widget.address),
              )
              
            ],
          )
        ],
      ),
    );
  }
}

class CustomerDetailsBoxText extends StatefulWidget {
  String input;

  CustomerDetailsBoxText({required this.input});

  @override
  State<CustomerDetailsBoxText> createState() => _CustomerDetailsBoxTextState();
}
class _CustomerDetailsBoxTextState extends State<CustomerDetailsBoxText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.input,
      style: GoogleFonts.poppins(
        fontSize: 16,
      ),
    );
  }
}

// service details page
class ServiceDetilsBox extends StatefulWidget {
  String date;
  String time;
  String repairItem;
  String Description;
  ImageProvider image; 

  ServiceDetilsBox({required this.date, required this.time, required this.repairItem, required this.Description, required this.image});

  @override
  State<ServiceDetilsBox> createState() => _ServiceDetilsBoxState();
}
class _ServiceDetilsBoxState extends State<ServiceDetilsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.30,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.02),
              CustomerDetailsBoxText(input: 'Date : '),
              Container(
                width: MediaQuery.sizeOf(context).width*0.45,
                child: CustomerDetailsBoxText(input: widget.date),
              ),
              
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.02),
              CustomerDetailsBoxText(input: 'Time : '),
              Container(
                width: MediaQuery.sizeOf(context).width*0.5,
                child:CustomerDetailsBoxText(input: widget.time),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.02),
              CustomerDetailsBoxText(input: 'Repair Item : '),
              Container(
                width: MediaQuery.sizeOf(context).width*0.45,
                child:
              CustomerDetailsBoxText(input: widget.repairItem),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.02),
              CustomerDetailsBoxText(input: 'Description : '),
              Container(
                width: MediaQuery.sizeOf(context).width*0.45,
              child:CustomerDetailsBoxText(input: widget.Description),)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.02),
              CustomerDetailsBoxText(input: 'Photo : '),
              Image(image: widget.image),
            ],
          ),
        ]
      )
    );
  }
}

class PriceBox extends StatefulWidget {
  double minprice;
  double maxprice;

  PriceBox({required this.minprice , required this.maxprice});

  @override
  State<PriceBox> createState() => _PriceBoxState();
}
class _PriceBoxState extends State<PriceBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Row(
        children: [
          Text(
            'RM ',
            style: GoogleFonts.poppins(
              fontSize: 16,
            ),
          ),
          Text(
            widget.minprice.toString(),
            style: GoogleFonts.poppins(
              fontSize: 16,
            ),
          ),
          Text(
            ' - RM ',
            style: GoogleFonts.poppins(
              fontSize: 16,
            ),
          ),
          Text(
            widget.maxprice.toString(),
            style: GoogleFonts.poppins(
              fontSize: 16,
            ),
          )
        ],
      ),
    );
  }
}

class ServiceWaitingAcceptance extends StatefulWidget {
  const ServiceWaitingAcceptance({super.key});

  @override
  State<ServiceWaitingAcceptance> createState() => _ServiceWaitingAcceptanceState();
}
class _ServiceWaitingAcceptanceState extends State<ServiceWaitingAcceptance> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          leftPadding(ratio: 0.1),
          Container(
            width: MediaQuery.sizeOf(context).width*0.35,
            height: MediaQuery.sizeOf(context).height*0.08,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(15),
            ),
            child:TextButton(
              onPressed: null, 
              child: Text(
                
                'Decline',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                ),
              )
              )
              
              
            ),
          
          leftPadding(ratio: 0.1),
          Container(
            width: MediaQuery.sizeOf(context).width*0.35,
            height: MediaQuery.sizeOf(context).height*0.08,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextButton(
              onPressed: null, 
              child: Text(
              'Accept',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),)
            
          ),
        ],
      ),
    );
  }
}

class cancelServiceButton extends StatefulWidget {
  const cancelServiceButton({super.key});

  @override
  State<cancelServiceButton> createState() => _cancelServiceButtonState();
}
class _cancelServiceButtonState extends State<cancelServiceButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.08,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // leftPadding(ratio: 0.1),
          TextButton(
            onPressed: null, 
            child: 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                // leftPadding(ratio: 0.1),
                Text(
                'Cancel',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
              ),
              // textAlign: TextAlign.center,
                )
              ]
              
            ))
        ],
      ),
    );
  }
}

// My service page
class DateNavigator extends StatefulWidget {
  DateTime day;

  DateNavigator({required this.day});

  @override
  State<DateNavigator> createState() => _DateNavigatorState();
}
class _DateNavigatorState extends State<DateNavigator> {
  final dateFormat = DateFormat('EEEE, MMM d, y');

  int passInd = 3;
  void _goToPreviousDay() {
    setState(() {
      widget.day = widget.day.subtract(Duration(days: 1));
      passInd = passInd -1;
    });
  }

  void _goToNextDay() {
    setState(() {
      widget.day = widget.day.add(Duration(days: 1));
      passInd = passInd +1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height*0.7,
       
       child: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height*0.05,
            child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  ),

                onPressed: _goToPreviousDay,
              ),
              Text(
                dateFormat.format(widget.day),
                style: GoogleFonts.poppins(fontSize: 24),
              ),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 25,
                  ),
                onPressed: _goToNextDay,
              ),
            ],
          ),
          ),
          
          ServicesEventBox(currentPage: passInd),
        ],
       )
      
    
    );
    
  }
}

class ServicesEventBox extends StatefulWidget {
  int currentPage;

  ServicesEventBox({required this.currentPage});

  @override
  State<ServicesEventBox> createState() => _ServicesEventBoxState();
}
class _ServicesEventBoxState extends State<ServicesEventBox> {

  List<List<List<String>>> eventsPerDay = [
    [['11:50', 'kipas rosak']],
    [['11:50', 'lampu rosak'],['16:30', 'pipe rosak']],
    [['09:30', 'peti sejuk rosak']],
    [['20:20', 'meja rosak, i dunno why i didnt hit mytable but still rosak :(']],
    [['19:25', 'tingkap rosak'],['08:25', 'plug rosak']],
    [['11:50', 'kipas ok']],
    [['11:50', 'tukar kipas']],
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          columnSpace(ratio: 0.03),
          for(int i = 0 ; i < eventsPerDay[widget.currentPage].length; i++)
            Container(
              
              child: Column(
                children: [
                  ServiceEvents(typeOfService: eventsPerDay[widget.currentPage][i][1], time: eventsPerDay[widget.currentPage][i][0]),
                  columnSpace(ratio: 0.05)
                ],
              ),
            )
            
          
        ],
      ),
    );
  }
}

class ServiceEvents extends StatefulWidget {
  String typeOfService;
  String time;

  ServiceEvents({required this.typeOfService, required this.time});

  @override
  State<ServiceEvents> createState() => _ServiceEventsState();
}
class _ServiceEventsState extends State<ServiceEvents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.23,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: TextButton(
        
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ServiceDetails(accepted: true,user: 0,)),
            );
        },
        child: Column(
        children: [
          Row(
            children: [
              Text(
                'Time : ',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black
                ),
              ),
              Text(
                widget.time,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black
                ),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Type Of Service : ',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black
                ),
              ),
              
              
            ],
          ),
          Row(
            children: [
                Container(
                width: MediaQuery.sizeOf(context).width*0.7,
                child: Text(
                widget.typeOfService,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.black
                ),
                maxLines: 3,
              ),
              )
            ],
          )
          
        ],
      ),
      )
      
    );
  }
}

// performance page
class chooseDayWeekMonth extends StatefulWidget {
  const chooseDayWeekMonth({super.key});

  @override
  State<chooseDayWeekMonth> createState() => _chooseDayWeekMonthState();
}
class _chooseDayWeekMonthState extends State<chooseDayWeekMonth> {

  int currentIndex = 0;

  List<bool> index = [true, false, false];

  int returnColor(bool a){
    if(a)
      return 0;
    else 
      return 1;
  }

  void selected(int a){
    for(int i = 0; i < index.length; i++)
      index[i] = false;
    index[a] = true;
    for(int i = 0; i < index.length; i++){
      setState(() {
        returnColor(index[i]);
        currentIndex = a;
      });
    }
  }

  List<Color> Buttoncolor = [
    Color.fromRGBO(67, 136, 131, 1), Color.fromRGBO(0, 0, 0, 0)
  ];

  List<Color> Textcolor = [
    Colors.white,Color.fromRGBO(102, 102, 102, 1)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.38,
      child:Column(
        children: [
          Container(
          width: MediaQuery.sizeOf(context).width*0.8,
          height: MediaQuery.sizeOf(context).height*0.08,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // day
              dayweekmonthButton(
                Buttoncolor: Buttoncolor[returnColor(index[0])], 
                input: 'Day', 
                textColor: Textcolor[returnColor(index[0])], 
                onPressed:() =>  selected(0),
                ),
              dayweekmonthButton(
                Buttoncolor: Buttoncolor[returnColor(index[1])], 
                input: 'Week', 
                textColor: Textcolor[returnColor(index[1])], 
                onPressed: () =>  selected(1),
                ),  
              dayweekmonthButton(
                Buttoncolor: Buttoncolor[returnColor(index[2])], 
                input: 'Month', 
                textColor: Textcolor[returnColor(index[2])], 
                onPressed: () =>  selected(2),
                ),
            ],
          ),
          ),
          Container(
            child: performanceGraph(index: currentIndex),
          )
        ],
      )
        
      
    );
  }
}

class dayweekmonthButton extends StatefulWidget {
  Color Buttoncolor;
  String input;
  Color textColor; 
  VoidCallback onPressed;
  dayweekmonthButton({
    required this.Buttoncolor,
    required this.input,
    required this.textColor,
    required this.onPressed,
    });

  @override
  State<dayweekmonthButton> createState() => _dayweekmonthButtonState();
}
class _dayweekmonthButtonState extends State<dayweekmonthButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.26,
      height: MediaQuery.sizeOf(context).height*0.07,
      decoration: BoxDecoration(
        color: widget.Buttoncolor,
        borderRadius: BorderRadius.circular(9.23)
      ),

      child: TextButton(
        onPressed: widget.onPressed, 
        child: Text(
          widget.input,
          style: GoogleFonts.poppins(
            color: widget.textColor,
          ),
        )
      ),
    );
  }
}

class performanceGraph extends StatefulWidget {
  int index;

  performanceGraph({required this.index});

  @override
  State<performanceGraph> createState() => _performanceGraphState();
}
class _performanceGraphState extends State<performanceGraph> {

  List<List<performanceData>> data = <List<performanceData>>[
    [
      performanceData(200, 'day 20'),
      performanceData(100, 'day 21'),
      performanceData(250, 'day 22'),
      performanceData(50, 'day 23'),
      performanceData(0, 'day 24'),
      performanceData(100, 'day 25'),
    ],

    [
      performanceData(750, 'WEEK 20'),
      performanceData(1050, 'WEEK 21'),
      performanceData(860, 'WEEK 22'),
      performanceData(910, 'WEEK 23'),
      performanceData(200, 'WEEK 24'),
      performanceData(500, 'WEEK 25'),
    ],

    [
      performanceData(2000, 'MAY'),
      performanceData(1050, 'JUN'),
      performanceData(2250, 'JUL'),
      performanceData(3500, 'AUG'),
      performanceData(1600, 'SEP'),
      performanceData(2000, 'OCT'),
    ]
  ];

  List<String> Duration = [
    'DAY', 'WEEK', 'MONTH'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.3,
      padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
      child: SfCartesianChart(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0),
        primaryXAxis: CategoryAxis(
          title: AxisTitle(
            text: Duration[widget.index],
            textStyle: GoogleFonts.poppins(fontSize: 16),
          ),
          majorGridLines: MajorGridLines(width: 0),
        ),
        primaryYAxis: NumericAxis(
          title: AxisTitle(
            text: 'Income',
            textStyle: GoogleFonts.poppins(fontSize: 16),
          ),
          isVisible: false,
        ),
        series: <ChartSeries>[
          SplineAreaSeries<performanceData, String>(
            dataSource: data[widget.index],
            xValueMapper: (performanceData data, _) => data.time,
            yValueMapper: (performanceData data, _) => data.income,
            dataLabelSettings: DataLabelSettings(isVisible: true),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(0, 61, 56, 0.3), // Start color
                Color.fromRGBO(0, 79, 73, 0), // End color
              ],
            ),
            borderColor: Color.fromRGBO(67, 136, 131, 100), // Line color
            borderWidth: 2,
          )
        ],
      ),
    );
  }
}

class performanceData{
  String time;
  int income;

  performanceData(this.income, this.time);
}

class TotalIncomeBox extends StatefulWidget {
  double income;

  TotalIncomeBox({required this.income});

  @override
  State<TotalIncomeBox> createState() => _TotalIncomeBoxState();
}
class _TotalIncomeBoxState extends State<TotalIncomeBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      height: MediaQuery.sizeOf(context).height*0.15,
      decoration: BoxDecoration(
        color: Color.fromRGBO(27, 92, 88, 100),
        borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftPadding(ratio: 0.05),
              Text(
                'Total Income',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          // columnSpace(ratio: 0.02),
          Row(
            children: [
              leftPadding(ratio: 0.05),
              Text(
                'RM'+ widget.income.toString(),
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              leftPadding(ratio: 0.08),
              Container(
                width: MediaQuery.sizeOf(context).width*0.25,
                height: MediaQuery.sizeOf(context).height*0.045,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                // padding: EdgeInsets.all(10),
                child: TextButton(
                  onPressed : null,
                  child: Text(
                    'Withdrawal',
                    style: GoogleFonts.poppins(
                      color: Colors.black
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class transactionhistoryboxes extends StatefulWidget {
  bool income;
  String date;
  double amount;

  transactionhistoryboxes({required this.income, required this.date, required this.amount});

  @override
  State<transactionhistoryboxes> createState() => _transactionhistoryboxesState();
}
class _transactionhistoryboxesState extends State<transactionhistoryboxes> {
  List<String> title = [
    'Service', 'Withdrawal'
  ];

  List<Color> Textcolor = [
    Colors.green, Colors.red
  ];

  List<String> addOrMinus = [
    '+ RM', '- RM'
  ];

  int index (bool a){
    if(a)
      return 0;
    else
      return 1;
  }
  @override
  Widget build(BuildContext context) {
    return Container(

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              leftPadding(ratio: 0.1),
              Container(
                width: MediaQuery.sizeOf(context).width*0.13,
                height: MediaQuery.sizeOf(context).width*0.13,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                
                child: Visibility(
                  visible: true, // Always visible
                  child: Icon(
                    widget.income ? Icons.handyman : Icons.attach_money_outlined,
                    size: 30,
                  ),
                ),
              ),
              leftPadding(ratio: 0.02),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    title[index(widget.income)],
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16
                    ),               
                  ),
                  Text(
                    widget.date,
                    style: GoogleFonts.poppins(
                      color: Colors.grey,
                      fontSize: 16
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Text(
            addOrMinus[index(widget.income)]+ widget.amount.toString(),
            style: GoogleFonts.poppins(
              color: Textcolor[index(widget.income)],
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
          leftPadding(ratio: 0.1)
            ],
          )
          
        ],
      ),
    );
  }
}

class seeAll extends StatefulWidget {
  const seeAll({super.key});

  @override
  State<seeAll> createState() => _seeAllState();
}
class _seeAllState extends State<seeAll> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.20,
      height: MediaQuery.sizeOf(context).height*0.05,
      child: TextButton(
        onPressed: null,
        child: Text(
          'Show All',
          style: GoogleFonts.poppins(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

// customer request page
class requestDetailsBox extends StatefulWidget {
  bool exclusive;
  String customerName;
  String date;
  String time;
  String typeOfService;

  requestDetailsBox({
    required this.exclusive, 
    required this.customerName,
    required this.date,
    required this.time,
    required this.typeOfService
    });

  @override
  State<requestDetailsBox> createState() => _requestDetailsBoxState();
}

class _requestDetailsBoxState extends State<requestDetailsBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.8,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child:TextButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ServiceDetails(accepted: false, user: 0),
            ),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: widget.exclusive,
            child: exclusiveRequest(CustomerName: widget.customerName),
            ),

          Row(
            children: [
              leftPadding(ratio: 0.02),
              Text(
                'Date : ',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16
                ),
              ),
              Text(
                widget.date,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 16
                ),
              )
            ],
            
          ),
          Row(
            children: [
              leftPadding(ratio: 0.02),
              Text(
                'Time : ',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16
                ),
              ),
              Text(
                widget.time,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 16
                ),
              )
            ],
            
          ),
          Row(
            children: [
              leftPadding(ratio: 0.02),
              Text(
                'Type of Service : ',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16
                ),
              ),
            ],
            
          ),
          Row(
            children: [
              leftPadding(ratio: 0.02),
              Text(
                widget.typeOfService,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 16
                ),
              )
            ],
          )
          
        ],
      ),
      )
      
    );
  }
}

class exclusiveRequest extends StatefulWidget {
  String CustomerName;

  exclusiveRequest({required this.CustomerName});

  @override
  State<exclusiveRequest> createState() => _exclusiveRequestState();
}
class _exclusiveRequestState extends State<exclusiveRequest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Exclusive Service Request',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16                
                  ),                 
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width*0.7,
                  child: Text(
                  'Customer' + widget.CustomerName+' has requested your expertise for a service.',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 16
                  ),
                  ),
                ),
                columnSpace(ratio: 0.02)
              ],
            )
    );
  }
}

