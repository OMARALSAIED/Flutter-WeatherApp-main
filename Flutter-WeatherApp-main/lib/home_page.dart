import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:orw/getLocation.dart';
import 'package:orw/wetherdata.dart';

class Myhomepage extends StatelessWidget {
  var client = wehterdtat();
  var Data;

  info() async {
    var position = await GetPosition();
    Data = await client.getDtat('33.5', '36.3');
    return Data;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: FutureBuilder(
            future: info(),
            builder: (context, snapshot) {
              return Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      height: size.height * 0.75,
                      width: size.width,
                      margin: EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 199, 92, 209),
                                Color.fromARGB(255, 47, 136, 238)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              stops: [0.2, 0.85])),
                      child: Column(children: [
                        Text(
                          '${Data?.cityname}',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 35,
                              fontFamily: 'Mavenpro'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Monday, 03 Mars",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 18,
                              fontFamily: 'Mavenpro'),
                        ),
                        Image.asset('assts/img/sun.png',
                            width: size.width * 0.4),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '${Data?.condition}',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 45,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Roboto'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "15°",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.9),
                              fontSize: 75,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'Roboto'),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Image.asset(
                                  "assts/img/storm.png",
                                  width: size.width * 0.15,
                                ),
                                Text(
                                  '${Data?.wind} km/h',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "wind",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontFamily: 'MavenPro',
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Image.asset(
                                  "assts/img/humidity.png",
                                  width: size.width * 0.15,
                                ),
                                Text(
                                  "81",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Humidity",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontFamily: 'MavenPro',
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )),
                            Expanded(
                                child: Column(
                              children: [
                                Image.asset(
                                  "assts/img/wind-direction.png",
                                  width: size.width * 0.15,
                                ),
                                Text(
                                  "SE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Roboto',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Wind Direction",
                                  style: TextStyle(
                                      color: Colors.white.withOpacity(0.6),
                                      fontFamily: 'MavenPro',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ))
                          ],
                        )
                      ]),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              'Gust',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'MavenPro',
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '32.0 kp/h',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'MavenPro',
                                  fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Pressure',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'MavenPro',
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '1025.0 hpa',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'MavenPro',
                                  fontSize: 25),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              'UV',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'MavenPro',
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '1.0',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'MavenPro',
                                  fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Preciptation',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'MavenPro',
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '0.0 mm',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'MavenPro',
                                  fontSize: 25),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: [
                            Text(
                              'Wind',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'MavenPro',
                                  fontSize: 20),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '19.1 Km/h',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'MavenPro',
                                  fontSize: 25),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Last Update',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontFamily: 'MavenPro',
                                  fontSize: 17),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '2023-03-5',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontFamily: 'MavenPro',
                                  fontSize: 17),
                            )
                          ],
                        ))
                      ],
                    )
                  ],
                ),
              );
            }));
  }
}
