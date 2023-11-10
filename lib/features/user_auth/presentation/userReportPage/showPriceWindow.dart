import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class showPriceWindow extends StatefulWidget {
  const showPriceWindow({super.key});

  @override
  State<showPriceWindow> createState() => _showPriceWindowState();
}

class _showPriceWindowState extends State<showPriceWindow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.7,
      decoration: BoxDecoration(
        color: Color.fromRGBO(234, 234, 234, 1),
      ),
      child: Column(
        children: [
          Expanded(
            child: LineChartSample(),
            
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height*0.02,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    TechniciansPriceRangeAndRating(name: 'Chacha', rating: 5, max: '80', min: '70'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'howard', rating: 4.5, max: '85', min: '65'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'joyee', rating: 4, max: '95', min: '70'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'ney', rating: 5, max: '70', min: '60'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'ali', rating: 3, max: '75', min: '50'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'abu', rating: 4, max: '78', min: '64'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'atan', rating: 3.5, max: '65', min: '55'),
                    lineUnderTechnicians(),
                    TechniciansPriceRangeAndRating(name: 'apek', rating: 5, max: '68', min: '45'),
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





class TechniciansPriceRangeAndRating extends StatefulWidget {
  String name;
  double rating;
  String min;
  String max;

  TechniciansPriceRangeAndRating({required this.name, required this.rating, required this.max, required this.min});

  @override
  State<TechniciansPriceRangeAndRating> createState() => _TechniciansPriceRangeAndRatingState();
}
class _TechniciansPriceRangeAndRatingState extends State<TechniciansPriceRangeAndRating> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(Icons.photo),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              StarRating(rating: widget.rating),
              Text(
                'RM'+widget.min+'-RM'+widget.max,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  final double rating;

  StarRating({required this.rating});

  @override
  Widget build(BuildContext context) {
    final int totalStars = 5; // You can change this to the desired number of stars
    final int filledStars = rating.floor();
    final bool isHalfStar = (rating - filledStars) >= 0.5;

    return Row(
      children: List.generate(totalStars, (index) {
        if (index < filledStars) {
          return Icon(
            Icons.star,
            color: Colors.yellow,
          );
        } else if (isHalfStar && index == filledStars) {
          return Icon(
            Icons.star_half,
            color: Colors.yellow,
          );
        } else {
          return Icon(
            Icons.star,
            color: Colors.grey,
          );
        }
      }),
    );
  }
}

class lineUnderTechnicians extends StatelessWidget {

  const lineUnderTechnicians({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width*0.6,
      height: MediaQuery.sizeOf(context).height*0.001,
      decoration: BoxDecoration(
        color: Colors.grey
      ),
    );
  }
}

class LineChartSample extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
        final List<ChartData> chartData = <ChartData>[
            ChartData(60, 21),
            ChartData(65, 32),
            ChartData(70, 45),
            ChartData(75, 55),
            ChartData(80, 56),
            ChartData(85, 49),
            ChartData(90, 45),
            ChartData(95, 36),
            ChartData(100, 23),
        ];
        return Scaffold(
            body: Center(
                child: Container(
                    width: MediaQuery.sizeOf(context).width*0.8,
                    // height: MediaQuery.sizeOf(context).width*0.3,
                    child: SfCartesianChart(
                      backgroundColor: Color.fromRGBO(234, 234, 234, 1), // Set the background color
                      primaryYAxis: NumericAxis(
                        title: AxisTitle(
                          text: 'Number of Technicians',
                          textStyle: TextStyle(
                            fontSize: 12
                          )
                        ), // Set the title for the X-axis
                      ),
                      primaryXAxis: NumericAxis(
                        title: AxisTitle(text: 'Price suggested',
                        textStyle: TextStyle(
                            fontSize: 12
                          )), // Set the title for the Y-axis
                      ),
                        series: <ChartSeries>[
                            SplineAreaSeries<ChartData, int>(
                                dataSource: chartData,
                                splineType: SplineType.cardinal,
                                cardinalSplineTension: 0.9,
                                xValueMapper: (ChartData data, _) => data.year,
                                yValueMapper: (ChartData data, _) => data.value
                            )
                        ]
                    )
                )
            )
        );
    }
}

class ChartData {
  final int year;
  final double value;

  ChartData(this.year, this.value);
}
