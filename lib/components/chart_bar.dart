import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final double value;
  final String day;
  final double percentage;

  ChartBar({
    @required this.value,
    @required this.day,
    @required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 20,
          child: FittedBox(
            child: Text(
              '${value.toStringAsFixed(2)}',
            ),
          ),
        ),
        SizedBox(height: 5),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
              ),
              FractionallySizedBox(
                heightFactor: percentage,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 5),
        Text(day),
      ],
    );
  }
}
