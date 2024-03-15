import 'dart:convert';

import 'package:faradasrapp/model/list_data.dart';
import 'package:faradasrapp/model/weathermodel.dart';
import 'package:faradasrapp/textStyels_Colors/my_text_styles.dart';
import 'package:faradasrapp/widgets/daily_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:http/http.dart' as http;


import '../gen/assets.gen.dart';
import '../widgets/listView_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  WeatherModel? curerentWeather;

  Future<void> getApi() async{
    String path = "https://api.openweathermap.org/data/2.5/weather?lat=35.94132389972976&lon=50.7884216&appid=a3f011e7dd81cf23ae2b44bf079fef93";
    Uri url = Uri.parse(path);
    http.Response response = await http.get(url);
    if(response.statusCode==200) {
      Map<String, dynamic> res= jsonDecode(response.body);

      WeatherModel weatherModel = WeatherModel.fromJson(res);

      setState(() {
        curerentWeather = weatherModel;
      });


    }
  }

  @override
  initState(){
    super.initState();
    getApi();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              //****** First Widget **********************************************
              Container(
                height: Adaptive.h(28),
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 83, 168, 245),
                      Color.fromARGB(255, 4, 92, 176),
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///*********** City Name ********************************
                        Text(
                           curerentWeather!=null ? curerentWeather!.cityname : "",
                          style: MyTextStyles.medium_white,
                        ),
                        Text(
                          curerentWeather!=null ? curerentWeather!.dt : "",
                          style: MyTextStyles.medium_white,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.network(
                          curerentWeather!=null ? curerentWeather!.icon : "https://cdn-icons-png.flaticon.com/128/1304/1304037.png",
                          height: Adaptive.h(10),
                        ),
                        Column(
                          children: [
                            Text(
                              "20",
                              style: MyTextStyles.large_white,
                            ),
                            Text(
                              "Sunday",
                              style: MyTextStyles.small_white,
                            )
                          ],
                        ),
                        Text("/", style: MyTextStyles.large_white),
                        Text(curerentWeather!=null ? curerentWeather!.temp+" C" :"17 0C", style: MyTextStyles.large_white),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        myCardWidget(
                            imagePath: Assets.images.wind.path, txt:curerentWeather!=null? curerentWeather!.WindSpeed : ""),
                        myCardWidget(
                            imagePath: Assets.images.drop.path, txt:curerentWeather!=null? curerentWeather!.Humidity : ""),
                        myCardWidget(
                            imagePath: Assets.images.rain.path, txt:curerentWeather!=null? curerentWeather!.Rain.toString() : ""),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  widthFactor: 6,
                  child: Text("Hourly", style: MyTextStyles.medium_black)),
              //****** Second Widget *************************************************************************
              SizedBox(
                height: Adaptive.h(18),
                width: double.infinity,
                child: ListView.builder(
                  itemCount: myData.length,
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MyListViewWidget(
                      time: myData[index].timeData,
                      imagePath: myData[index].imageData,
                      degree: myData[index].degreeData,
                    );
                  },
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  widthFactor: 3.5,
                  child: Text("Next 6 Days", style: MyTextStyles.medium_black)),
              //****** Third Widget **************************************************************************
              Container(
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Color.fromARGB(80, 80, 80, 80), width: 3),
                    borderRadius: BorderRadius.circular(16)),
                height: Adaptive.h(25),
                width: double.infinity,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return DailyDataWidget(index: index);
                    },
                    separatorBuilder: (context, index) {
                      return Divider(thickness: 2,color: Color.fromARGB(100, 8, 80, 80),);
                    },
                    itemCount: myData.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class myCardWidget extends StatelessWidget {
  const myCardWidget({
    super.key,
    required this.imagePath,
    required this.txt,
  });

  final String imagePath;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          height: Adaptive.h(5),
        ),
        Text(txt, style: MyTextStyles.small_white),
      ],
    );
  }
}
