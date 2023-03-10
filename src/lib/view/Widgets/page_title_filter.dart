import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uni/view/Widgets/exam_filter_menu.dart';

class PageTitleFilter extends StatelessWidget {
  final String name;
  final StatefulWidget filter;
  final StatefulWidget order;
  const PageTitleFilter({Key key, @required this.name, this.filter, this.order}) :
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style:
            Theme.of(context).textTheme.headline6.apply(fontSizeDelta: 7),
          ),
          Row(
            children: [this.filter == null ? Text("") : Material(child: this.filter),
              this.order == null ? Text("") : Material(child: this.order)],
          )


        ],
      ),
    );
  }
}
