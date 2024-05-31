
import 'package:custom_searchable_dropdown/Custom_Searchable_Dropdown.dart';
import 'package:flutter/material.dart';





class MyCustomSD extends StatefulWidget {

  final InputDecoration? decoration;
  final ValueChanged onChanged;
  final List listToSearch;
  final String? label;
  final String valFrom;
  final Widget? prefixIcon;
  final List? initialValue;
  final bool? hideSearch;
  final double? height;
  final Color? borderColor;

  const MyCustomSD({Key? key,

    this.decoration,
    this.label,
    this.prefixIcon,
    required this.listToSearch,
    this.initialValue,
    this.hideSearch,
    this.height,
    this.borderColor,
    required this.valFrom,
    required this.onChanged,}) : super(key: key);

  @override
  _MyCustomSDState createState() => _MyCustomSDState();
}

class _MyCustomSDState extends State<MyCustomSD> {

  bool obscure=false;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border=const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(5)),
      borderSide: BorderSide(
          color: Colors.grey,
          width: 1
      ),
    );
    return CustomSearchableDropDown(
      prefixIcon: widget.prefixIcon,
      searchBarHeight: 40,
      padding: const EdgeInsets.all(0),
      initialValue: widget.initialValue,
      primaryColor:Colors.grey,
      hideSearch: widget.hideSearch?? false,
      menuHeight: widget.height??80,
      menuMode: true,
      labelStyle: const TextStyle(fontSize: 17),
      items: widget.listToSearch,
      label: widget.label??'Select Name',
      dropdownItemStyle: const TextStyle(fontSize: 16),


      dropDownMenuItems: widget.listToSearch.map((item) {
        return item[widget.valFrom];
      }).toList(),
      onChanged: (val){

        widget.onChanged(val);

      },
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, 1.0), //(x,y)
              blurRadius: 6.0,
            ),
          ],
        )


    );
  }
}


