import 'package:flutter/material.dart';
import 'core/app_colors.dart';
import 'errormsgbox.dart';
import 'title_value.dart';
// import 'package:get/get.dart';
// import '../../controller/controller.dart';
// import '../../core/app_colors.dart';
// import '../../controller/extensions.dart';
// import '../widgets/errormsgbox.dart';
// import '../widgets/logoutbttn.dart';
// import '../widgets/title_value.dart';

class StockDetails extends StatefulWidget {
  // StockDetails({super.key, required this.data});
  // var data;

  @override
  State<StockDetails> createState() => _StockDetailsState();
}

class _StockDetailsState extends State<StockDetails> {
  // final Controller c = Get.put(Controller());
  String? selectedItem;
  var role = 3;
  List subcontractorList = ["bala", "prakash", "krishna"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Stock List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            // fontSize: 20,
          ),
        ),
        toolbarHeight: 60,
        backgroundColor: AppColor.themeColor,
        // actions: const [Logout()],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CTitleValue(
                    title: "OrderId", value: '',
                    // value: widget.data["orderId"].toString()
                  ),
                  CTitleValue(
                    title: "Date", value: "12-12-1222",
                    // value: dategetDMY(widget.data["date"].toString()
                  ),
                  CTitleValue(
                    title: "Material Description", value: "sdfghj",
                    // value: widget.data["material Name"].toString()
                  ),
                  // CTitleValue(title: "Unit", value: data["unit"].toString()),
                ],
              ),

              const RTitleValue(
                  title: "Blaster", value: " null"
                  // widget.data["Blaster"].toString()
                  ),
              const CTitleValue(title: "Quantity", value: ""),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CTitleValue(
                      title: "Transferred",
                      value:
                      //  widget.data["transferred Qty"] != null  ? widget.data["transferred Qty"].toString():
                       "---"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          "Approvedby L&T",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            // fontSize: 20,
                          ),
                        ),
                        if (role == 3)
                          Container(
                            width: 100,
                            height: 40,
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: TextField(
                                textAlign: TextAlign.left,
                                style: const TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: AppColor.inputbgclr,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: AppColor.inputbgclr),
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  focusColor: Colors.black,
                                  focusedBorder: const UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ),
                              ),
                            ),
                          )
                        else
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            child: const Text(
                              "tyu",
                              // getSubcontractorName(widget.data["fromSubConId"]).toString(),
                              maxLines: 2,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
              const CTitleValue(title: "Sub Contractor", value: ""),

              const RTitleValue(title: "To", value: "sdfghjk"
                  // getSubcontractorName(widget.data["subConId"]).toString()
                  ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text(
                      "From  : ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        // fontSize: 20,
                      ),
                    ),
                    role == 3
                        ? Container(
                            width: 300,
                            height: 40,
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            padding: const EdgeInsets.only(right: 40, left: 10),
                            decoration: BoxDecoration(
                                color: AppColor.inputbgclr,
                                borderRadius: BorderRadius.circular(4)),
                            child: DropdownButton<String>(
                              value: selectedItem,
                              focusColor: AppColor.inputbgclr,
                              onChanged: (value) {
                                setState(() {
                                  selectedItem = value;
                                  // Findstate();
                                });
                              },
                              hint: const Center(
                                  child: Text(
                                'select Subcontractor',
                                style: TextStyle(color: Colors.black),
                              )),
                              underline: Container(),
                              dropdownColor: AppColor.inputbgclr,
                              icon: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.black,
                              ),
                              isExpanded: true,
                              items: subcontractorList.map((e) {
                                return DropdownMenuItem(
                                    value: e.toString(),
                                    //  capitalize(e["subConId"].toString()).toString(),
                                    child: Container(
                                      // margin: EdgeInsets.all(value),
                                      alignment: Alignment.centerLeft,

                                      child: Text(
                                        e.toString(),
                                        // capitalize(e["subConName"]).toString(),
                                        style: const TextStyle(
                                            // fontSize: 20,
                                            ),
                                      ),
                                    ));
                              }).toList(),
                              selectedItemBuilder: (BuildContext context) =>
                                  subcontractorList.map((e) {
                                return Center(
                                  child: Text(
                                    e.toString(),
                                    // capitalize(e["subConName"]).toString(),
                                    style: const TextStyle(
                                      // fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        : Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            child: const Text(""
                                // getSubcontractorName(widget.data["fromSubConId"]).toString(),
                                ),
                          ),
                  ],
                ),
              ),

              const RTitleValue(
                  title: "Status ",
                  value: 
                  // widget.data["status"] != null? widget.data["status"].toString():
                       "---"),
              const RTitleValue(
                  title: "Remarks",
                  value: 
                  // widget.data["remarks"] != null? widget.data["remarks"].toString() : 
                      "---"),
              // Flexible(child: Container(height: double.maxFinite,)),
              if (selectedItem != null)
                Padding(
                    padding: const EdgeInsets.only(bottom: 150),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            errormsgbox(context, "Successful approval");

                          },
                          // ignore: prefer_const_constructors
                          child: Card(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            color: AppColor.themeColor,
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 15),
                              child: Text(
                                "Approve",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                        const InkWell(
                          // onTap: () async { Navigator.pop(context);},
                          child: Card(
                            margin: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            color: AppColor.highlightclr,
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 15),
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ))

              // Container(height: double.maxFinite,),
            ],
          ),
        ),
      ),
    );
  }
}
