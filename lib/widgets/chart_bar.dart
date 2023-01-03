import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double spendingAmount;
  final double spendingPctOftotal;
  ChartBar(this.label, this.spendingAmount, this.spendingPctOftotal);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraint) {
      return Column(
        children: [
          Container( height: constraint.maxHeight*0.10,child: FittedBox(child: Text('₹ ${spendingAmount.toStringAsFixed(0)}'))),
          SizedBox(
            height: constraint.maxHeight *0.05,
          ),
          Container(
            height: constraint.maxHeight*0.7,
            width: 10,
            child: Stack(
              children: [
                //bottom to top
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1.0),
                    color: Color.fromRGBO(220, 220, 220, 1), //0-255
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                FractionallySizedBox(
                  heightFactor: spendingPctOftotal,
                  child: Container(decoration: BoxDecoration(color: Theme.of(context).primaryColor,borderRadius: BorderRadius.circular(10),),),),
              ]
                ),
            ),
          SizedBox(
            height: constraint.maxHeight*0.05,
          ),
          Container(child: Text(label),height: constraint.maxHeight*0.1,),
        ],
      );
    },);
      
    
  }
}
