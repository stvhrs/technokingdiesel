import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Update extends StatefulWidget {
  final Map data;
  final String id;
  Update(this.data, this.id);
  @override
  @override
  _UpdateState createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  String injectionPump = '';
  String governor = '';
  String timer = '';
  String manufacturer = '';
  String engineType = '';
  String vehicleType = '';
  String rotation = '';
  String injectionOrder = '';
  String injectionInterval = '';
  String preStroke = '';
  String tappetClearnce = '';
  String lockedTimmingLoction = '';
  String nuzzle = '';
  String nuzzleOpeningPressure = '';
  String testOil = '';
  String feedPressure = '';
  String highPressurePipe = '';
  String fuelTemperature = '';
  String onePumpSpeed1 = '';
  String onePumpSpeed2 = '';
  String onePumpSpeed3 = '';
  String onePumpSpeed4 = '';
  String oneNos1 = '';
  String oneNos2 = '';
  String oneNos3 = '';
  String oneNos4 = '';
  String twoNos1 = '';
  String twoNos2 = '';
  String twoNos3 = '';
  String twoNos4 = '';
  String oneRackTravel1 = '';
  String oneRackTravel2 = '';
  String oneRackTravel3 = '';
  String oneRackTravel4 = '';
  String oneDeliver1 = '';
  String oneDeliver2 = '';
  String oneDeliver3 = '';
  String oneDeliver4 = '';
  String oneMax1 = '';
  String oneMax2 = '';
  String oneMax3 = '';
  String oneMax4 = '';
  String lever1 = '';
  String lever2 = '';
  String lever3 = '';
  String lever4 = '';
  String twoRackTravel1 = '';
  String twoRackTravel2 = '';
  String twoRackTravel3 = '';
  String twoRackTravel4 = '';
  String twoDeliver1 = '';
  String twoDeliver2 = '';
  String twoDeliver3 = '';
  String twoDeliver4 = '';
  String oneRemark = '';
  String twoRemark = '';
  String overFlow = '';
  String adjustmentOfGoverner = '';

  String advanceAngle1 = '';
  String advanceAngle2 = '';
  String advanceAngle3 = '';
  String advanceAngle4 = '';
  String advanceAngle5 = '';
  String advanceAngle6 = '';
  String note = '';
  List<String> indexList = [];
  @override
  void initState() {
    log(widget.data.toString());
    injectionPump = widget.data['injectionPump'] ?? 'No Data';
    governor = widget.data['governor'] ?? 'No Data';
    timer = widget.data['timer'] ?? 'No Data';
    manufacturer = widget.data['manufacturer'] ?? 'No Data';
    engineType = widget.data['engineType'] ?? 'No Data';
    vehicleType = widget.data['vehicleType'] ?? 'No Data';
    rotation = widget.data['rotation'] ?? 'No Data';
    injectionOrder = widget.data['injectionOrder'] ?? 'No Data';
    injectionInterval = widget.data['injectionInterval'] ?? 'No Data';
    preStroke = widget.data['preStroke'] ?? 'No Data';
    tappetClearnce = widget.data['tappetClearnce'] ?? 'No Data';
    lockedTimmingLoction = widget.data['lockedTimmingLoction'] ?? 'No Data';
    nuzzle = widget.data['nuzzle'] ?? 'No Data';
    nuzzleOpeningPressure = widget.data['nuzzleOpeningPressure'] ?? 'No Data';
    testOil = widget.data['testOil'] ?? 'No Data';
    feedPressure = widget.data['feedPressure'] ?? 'No Data';
    highPressurePipe = widget.data['highPressurePipe'] ?? 'No Data';
    fuelTemperature = widget.data['fuelTemperature'] ?? 'No Data';
    onePumpSpeed1 = widget.data['onePumpSpeed1'] ?? 'No Data';
    onePumpSpeed2 = widget.data['onePumpSpeed2'] ?? 'No Data';
    onePumpSpeed3 = widget.data['onePumpSpeed3'] ?? 'No Data';
    onePumpSpeed4 = widget.data['onePumpSpeed4'] ?? 'No Data';
    oneNos1 = widget.data['oneNos1'] ?? 'No Data';
    oneNos2 = widget.data['oneNos2'] ?? 'No Data';
    oneNos3 = widget.data['oneNos3'] ?? 'No Data';
    oneNos4 = widget.data['oneNos4'] ?? 'No Data';
    twoNos1 = widget.data['twoNos1'] ?? 'No Data';
    twoNos2 = widget.data['twoNos2'] ?? 'No Data';
    twoNos3 = widget.data['twoNos3'] ?? 'No Data';
    twoNos4 = widget.data['twoNos4'] ?? 'No Data';
    oneRackTravel1 = widget.data['oneRackTravel1'] ?? 'No Data';
    oneRackTravel2 = widget.data['oneRackTravel2'] ?? 'No Data';
    oneRackTravel3 = widget.data['oneRackTravel3'] ?? 'No Data';
    oneRackTravel4 = widget.data['oneRackTravel4'] ?? 'No Data';
    oneDeliver1 = widget.data['oneDeliver1'] ?? 'No Data';
    oneDeliver2 = widget.data['oneDeliver2'] ?? 'No Data';
    oneDeliver3 = widget.data['oneDeliver3'] ?? 'No Data';
    oneDeliver4 = widget.data['oneDeliver4'] ?? 'No Data';
    oneMax1 = widget.data['oneMax1'] ?? 'No Data';
    oneMax2 = widget.data['oneMax2'] ?? 'No Data';
    oneMax3 = widget.data['oneMax3'] ?? 'No Data';
    oneMax4 = widget.data['oneMax4'] ?? 'No Data';
    lever1 = widget.data['lever1'] ?? 'No Data';
    lever2 = widget.data['lever2'] ?? 'No Data';
    lever3 = widget.data['lever3'] ?? 'No Data';
    lever4 = widget.data['lever4'] ?? 'No Data';
    twoRackTravel1 = widget.data['twoRackTravel1'] ?? 'No Data';
    twoRackTravel2 = widget.data['twoRackTravel2'] ?? 'No Data';
    twoRackTravel3 = widget.data['twoRackTravel3'] ?? 'No Data';
    twoRackTravel4 = widget.data['twoRackTravel4'] ?? 'No Data';
    twoDeliver1 = widget.data['twoDeliver1'] ?? 'No Data';
    twoDeliver2 = widget.data['twoDeliver2'] ?? 'No Data';
    twoDeliver3 = widget.data['twoDeliver3'] ?? 'No Data';
    twoDeliver4 = widget.data['twoDeliver4'] ?? 'No Data';
    oneRemark = widget.data['oneRemark'] ?? 'No Data';
    twoRemark = widget.data['twoRemark'] ?? 'No Data';
    overFlow = widget.data['overFlow'] ?? 'No Data';
    adjustmentOfGoverner = widget.data['adjustmentOfGoverner'] ?? 'No Data';
    advanceAngle1 = widget.data['advanceAngle1'] ?? 'No Data';
    advanceAngle2 = widget.data['advanceAngle2'] ?? 'No Data';
    advanceAngle3 = widget.data['advanceAngle3'] ?? 'No Data';
    advanceAngle4 = widget.data['advanceAngle4'] ?? 'No Data';
    advanceAngle5 = widget.data['advanceAngle5'] ?? 'No Data';
    advanceAngle6 = widget.data['advanceAngle6'] ?? 'No Data';
    note = widget.data['note'] ?? 'No Data';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var title1 = TextStyle(fontSize: 16, fontWeight: FontWeight.w700);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(onPressed: () async {
        if (manufacturer != '') {
          List<String> manu = (manufacturer.toString()).split(' ');

          for (int i = 0; i < manu.length; i++) {
            for (int y = 1; y < manu[i][i].length + 1; y++) {
              indexList.add(manu[i].substring(0, y).toLowerCase());
            }
          }
        }
        if (vehicleType != '') {
          List<String> vehi = (vehicleType.toString()).split(' ');

          for (int i = 0; i < vehi.length; i++) {
            for (int y = 1; y < vehi[i][i].length + 1; y++) {
              indexList.add(vehi[i].substring(0, y).toLowerCase());
            }
          }
        }
        if (governor != '') {
          List<String> gover = (governor.toString()).split(' ');
          for (int i = 0; i < gover.length; i++) {
            for (int y = 1; y < gover[i].length + 1; y++) {
              indexList.add(gover[i].substring(0, y).toLowerCase());
            }
          }
        }
        if (engineType != '') {
          List<String> engi = (engineType.toString()).split(' ');

          for (int i = 0; i < engi.length; i++) {
            for (int y = 1; y < engi[i].length + 1; y++) {
              indexList.add(engi[i].substring(0, y).toLowerCase());
            }
          }
        }
        if (timer != '') {
          List<String> time = (timer.toString()).split(' ');

          for (int i = 0; i < time.length; i++) {
            for (int y = 1; y < time[i].length + 1; y++) {
              indexList.add(time[i].substring(0, y).toLowerCase());
            }
          }
        }
        if (injectionPump != '') {
          List<String> inj = (injectionPump.toString()).split(' ');

          for (int i = 0; i < inj.length; i++) {
            for (int y = 1; y < inj[i].length + 1; y++) {
              indexList.add(inj[i].substring(0, y).toLowerCase());
              log(indexList.toString());
            }
          }
        }
        setState(() {});
        await FirebaseFirestore.instance
            .collection('data')
            .doc(widget.id)
            .update({
          'injectionPump': injectionPump,
          'governor': governor,
          'timer': timer,
          'manufacturer': manufacturer,
          'engineType': engineType,
          'vehicleType': vehicleType,
          'rotation': rotation,
          'injectionOrder': injectionOrder,
          'injectionInterval': injectionInterval,
          'preStroke': preStroke,
          'tappetClearnce': tappetClearnce,
          'lockedTimmingLoction': lockedTimmingLoction,
          'nuzzle': nuzzle,
          'nuzzleOpeningPressure': nuzzleOpeningPressure,
          'testOil': testOil,
          'feedPressure': feedPressure,
          'highPressurePipe': highPressurePipe,
          'fuelTemperature': fuelTemperature,
          'onePumpSpeed1': onePumpSpeed1,
          'onePumpSpeed2': onePumpSpeed2,
          'onePumpSpeed3': onePumpSpeed3,
          'onePumpSpeed4': onePumpSpeed4,
          'oneNos1': oneNos1,
          'oneNos2': oneNos2,
          'oneNos3': oneNos3,
          'oneNos4': oneNos4,
          'twoNos1': twoNos1,
          'twoNos2': twoNos2,
          'twoNos3': twoNos3,
          'twoNos4': twoNos4,
          'oneRackTravel1': oneRackTravel1,
          'oneRackTravel2': oneRackTravel2,
          'oneRackTravel3': oneRackTravel3,
          'oneRackTravel4': oneRackTravel4,
          'oneDeliver1': oneDeliver1,
          'oneDeliver2': oneDeliver2,
          'oneDeliver3': oneDeliver3,
          'oneDeliver4': oneDeliver4,
          'oneMax1': oneMax1,
          'oneMax2': oneMax2,
          'oneMax3': oneMax3,
          'oneMax4': oneMax4,
          'lever1': lever1,
          'lever2': lever2,
          'lever3': lever3,
          'lever4': lever4,
          'twoRackTravel1': twoRackTravel1,
          'twoRackTravel2': twoRackTravel2,
          'twoRackTravel3': twoRackTravel3,
          'twoRackTravel4': twoRackTravel4,
          'twoDeliver1': twoDeliver1,
          'twoDeliver2': twoDeliver2,
          'twoDeliver3': twoDeliver3,
          'twoDeliver4': twoDeliver4,
          'oneRemark': oneRemark,
          'twoRemark': twoRemark,
          'overFlow': overFlow,
          'adjustmentOfGoverner': adjustmentOfGoverner,
          'advanceAngle1': advanceAngle1,
          'advanceAngle2': advanceAngle2,
          'advanceAngle3': advanceAngle3,
          'advanceAngle4': advanceAngle4,
          'advanceAngle5': advanceAngle5,
          'advanceAngle6': advanceAngle6,
          'note': note,
          'searchArray': indexList,
          'date': DateTime.now().toIso8601String()
        });

        Navigator.of(context).pop();
      }),
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Update Document'),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border.all(color: Colors.black)),
        width: width,
        margin: EdgeInsets.only(left: 140, right: 140),
        child: ListView(
          children: [
            Container(
              height: width / 7,
              child: Container(
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(),
                )),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: width / 1.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 160, left: 15),
                                  child: Text(
                                    'INJECTION PUMP',
                                    style: title1,
                                  )),
                              Container(
                                width: width / 8,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: injectionPump,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          injectionPump = value.toString();
                                        })),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 160, left: 15),
                                  child: Text(
                                    'GOVERNOR          ',
                                    style: title1,
                                  )),
                              Container(
                                width: width / 8,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: governor,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          governor = value.toString();
                                        })),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                  margin: EdgeInsets.only(right: 160, left: 15),
                                  child: Text(
                                    'TIMER                    ',
                                    style: title1,
                                  )),
                              Container(
                                width: width / 8,
                                child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: timer,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          timer = value.toString();
                                        })),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: width / 10,
                              height: width / 21.4,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(),
                                      left: BorderSide())),
                              child: Text(
                                'MANU-\nMFACTURER',
                                style: title1,
                              ),
                            ),
                            Container(
                              width: width / 8,
                              height: width / 21.4,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(),
                                      bottom: BorderSide())),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: manufacturer,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      manufacturer = value.toString();
                                    }),
                              )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: width / 10,
                              height: width / 21.4,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(),
                                      left: BorderSide())),
                              child: Text(
                                'ENGINE\nTYPE',
                                style: title1,
                              ),
                            ),
                            Container(
                              width: width / 8,
                              height: width / 21.4,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border(
                                      left: BorderSide(),
                                      bottom: BorderSide())),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: engineType,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      engineType = value.toString();
                                    }),
                              )),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: width / 10,
                              height: width / 21.4,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border(left: BorderSide())),
                              child: Text(
                                'VEHICLE\nMODEL',
                                style: title1,
                              ),
                            ),
                            Container(
                              width: width / 8,
                              height: width / 21.4,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  border: Border(
                                left: BorderSide(),
                              )),
                              child: Center(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: vehicleType,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      vehicleType = value.toString();
                                    }),
                              )),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                '1. INJECTION TIMMING',
                style: title1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Row(
                        children: [
                          Text('1) Rotation              '),
                        ],
                      ),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: rotation,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      rotation = value.toString();
                                    })),
                          )),
                      Spacer(),
                      Text('4) Prestroke                                    '),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: preStroke,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      preStroke = value.toString();
                                    })),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Text('2) Injection Order'),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: injectionOrder,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      injectionOrder = value.toString();
                                    })),
                          )),
                      Spacer(),
                      Text('5) Tappet Clearence                      '),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: tappetClearnce,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      tappetClearnce = value.toString();
                                    })),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Text('3) Injection Interval'),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: injectionInterval,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      injectionInterval = value.toString();
                                    })),
                          )),
                      Spacer(),
                      Text('6) Locked Timming Loctaion        '),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: lockedTimmingLoction,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      lockedTimmingLoction = value.toString();
                                    })),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                '2. ADJUSTMENT OF DELIVERY QUANTITY',
                style: title1,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Test Condition',
                  ),
                  Row(
                    children: [
                      Text('1) Nozzle                                   '),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: nuzzle,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      nuzzle = value.toString();
                                    })),
                          )),
                      Spacer(),
                      Text('4) Feed Preasure                            '),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: feedPressure,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      feedPressure = value.toString();
                                    })),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Text('2) Nozzle Opening Preassure'),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: nuzzleOpeningPressure,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      nuzzleOpeningPressure = value.toString();
                                    })),
                          )),
                      Spacer(),
                      Text('5) High Preassure Pipe                 '),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: highPressurePipe,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      highPressurePipe = value.toString();
                                    })),
                          ))
                    ],
                  ),
                  Row(
                    children: [
                      Text('3) Test Oil                                 '),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: testOil,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      testOil = value.toString();
                                    })),
                          )),
                      Spacer(),
                      Text('6) Fuel Temperature                     '),
                      Container(
                          width: width / 8,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                    initialValue: fuelTemperature,
                                    onChanged: (value) {setState(() {
                                                                              
                                                                            });
                                      fuelTemperature = value.toString();
                                    })),
                          ))
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: DataTable(
                            border: TableBorder.all(),
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text(
                                  'Pump Speed',
                                  style: title1,
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Rack Travel',
                                  style: title1,
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Number of Strokes',
                                  style: title1,
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Delivery Quantity',
                                  style: title1,
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  'Max Spread',
                                  style: title1,
                                ),
                              ),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: onePumpSpeed1,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            onePumpSpeed1 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneRackTravel1,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneRackTravel1 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneNos1,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneNos1 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneDeliver1,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneDeliver1 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneMax1,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneMax1 = value.toString();
                                            ;
                                          }))),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: onePumpSpeed2,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            onePumpSpeed2 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneRackTravel2,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneRackTravel2 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneNos2,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneNos2 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneDeliver2,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneDeliver2 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneMax2,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneMax2 = value.toString();
                                            ;
                                          }))),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: onePumpSpeed3,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            onePumpSpeed3 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneRackTravel3,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneRackTravel3 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneNos3,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneNos3 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneDeliver3,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneDeliver3 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneMax3,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneMax3 = value.toString();
                                          }))),
                                ],
                              ),
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: onePumpSpeed4,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            onePumpSpeed4 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneRackTravel4,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneRackTravel4 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneNos4,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneNos4 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneDeliver4,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneDeliver4 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: oneMax4,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            oneMax4 = value.toString();
                                          }))),
                                ],
                              ),
                            ],
                          ))),
                  DataTable(
                      dataRowHeight: width * 0.125,
                      border: TableBorder.all(),
                      columns: [
                        DataColumn(
                          label: Text(
                            'Remarks',
                            style: title1,
                          ),
                        ),
                      ],
                      rows: [
                        DataRow(
                          cells: <DataCell>[
                            DataCell(SizedBox(
                              width: width * 0.1383,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  initialValue: oneRemark,
                                  onChanged: (value) {setState(() {
                                                                            
                                                                          });
                                    oneRemark = value.toString();
                                  },
                                  maxLines: 10,
                                  keyboardType: TextInputType.multiline,
                                ),
                              ),
                            )),
                          ],
                        ),
                      ])
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Overflow Valve opening  :  '),
                  Container(
                      width: width * 0.4,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              initialValue: overFlow,
                              onChanged: (value) {setState(() {
                                                                        
                                                                      });
                                overFlow = value.toString();
                              })))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20, top: 40, left: 15),
              child: Row(
                children: [
                  Text(
                    '3.ADJUSTMENT OF GOVERNOR... ',
                    style: title1,
                  ),
                  Container(
                      width: width * 0.6,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              initialValue: adjustmentOfGoverner,
                              onChanged: (value) {setState(() {
                                                                        
                                                                      });
                                adjustmentOfGoverner = value.toString();
                              })))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 15),
              child: Text(
                '4.ADJUSTMENT OF PUMP WITH GOVERNOR OPERTAION : ',
                style: title1,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: DataTable(
                          border: TableBorder.all(),
                          columns: <DataColumn>[
                            DataColumn(
                              label: Text(
                                'Lever Position',
                                style: title1,
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Rack Travel (mm)',
                                style: title1,
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Number of Strokes',
                                style: title1,
                              ),
                            ),
                            DataColumn(
                              label: Text(
                                'Delivery Quantity',
                                style: title1,
                              ),
                            ),
                          ],
                          rows: <DataRow>[
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: lever1,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          lever1 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoRackTravel1,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoRackTravel1 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoNos1,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoNos1 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoDeliver1,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoDeliver1 = value.toString();
                                        }))),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: lever2,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          lever2 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoRackTravel2,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoRackTravel2 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoNos2,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoNos2 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoDeliver2,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoDeliver2 = value.toString();
                                        }))),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: lever3,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          lever3 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoRackTravel3,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoRackTravel3 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoNos3,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoNos3 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoDeliver3,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoDeliver3 = value.toString();
                                        }))),
                              ],
                            ),
                            DataRow(
                              cells: <DataCell>[
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: lever4,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          lever4 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoRackTravel4,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoRackTravel4 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoNos4,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoNos4 = value.toString();
                                        }))),
                                DataCell(Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                        initialValue: twoDeliver4,
                                        onChanged: (value) {setState(() {
                                          
                                        });
                                          twoDeliver4 = value.toString();
                                        }))),
                              ],
                            ),
                          ],
                        ))),
                DataTable(
                    dataRowHeight: width * 0.125,
                    border: TableBorder.all(),
                    columns: [
                      DataColumn(
                        label: Text(
                          'Remarks',
                          style: title1,
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(
                        cells: <DataCell>[
                          DataCell(SizedBox(
                            width: width * 0.1383,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                initialValue: twoRemark,
                                onChanged: (value) {setState(() {
                                                                          
                                                                        });
                                  twoRemark = value.toString();
                                },
                                maxLines: 10,
                                keyboardType: TextInputType.multiline,
                              ),
                            ),
                          )),
                        ],
                      ),
                    ])
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 15, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'NOTE : ',
                    style: title1,
                  ),
                  Container(
                      width: width * 0.6,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              initialValue: note,
                              onChanged: (value) {setState(() {
                                                                        
                                                                      });
                                note = value.toString();
                              })))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15, top: 20, bottom: 20),
              child: Text(
                '5.ADJUSTMENT OF TIMER',
                style: title1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: DataTable(
                            border: TableBorder.all(),
                            columns: <DataColumn>[
                              DataColumn(
                                label: Text(
                                  'Pump Speed (rpm)',
                                  style: title1,
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  '1400',
                                  style: title1,
                                ),
                              ),
                              DataColumn(
                                label: Text(
                                  '1700',
                                  style: title1,
                                ),
                              ),
                              DataColumn(
                                  label: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox())),
                              DataColumn(
                                  label: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox())),
                              DataColumn(
                                  label: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox())),
                              DataColumn(
                                  label: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox())),
                            ],
                            rows: <DataRow>[
                              DataRow(
                                cells: <DataCell>[
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        'Average Angle',
                                        style: title1,
                                      ))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: advanceAngle1,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            advanceAngle1 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: advanceAngle2,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            advanceAngle2 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: advanceAngle3,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            advanceAngle3 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: advanceAngle4,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            advanceAngle4 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: advanceAngle5,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            advanceAngle5 = value.toString();
                                          }))),
                                  DataCell(Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                          initialValue: advanceAngle6,
                                          onChanged: (value) {setState(() {
                                                                                    
                                                                                  });
                                            advanceAngle6 = value.toString();
                                          }))),
                                ],
                              ),
                            ],
                          ))),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
