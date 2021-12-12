import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sampleproject/models/movie.dart';

class Film extends StatefulWidget {
  @override
  // ignore: no_logic_in_create_state
  _FilmState createState() => _FilmState();
}

class _FilmState extends State<Film> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PAYEMENT',
          style: TextStyle(
            color: Colors.purple,
            letterSpacing: 1.0,
            fontSize: 20.0,
          ), //textstyle
        ), //TEXT
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            /* Write listener code here */
          },
          child: Icon(
            Icons.arrow_back_outlined, // add custom icons also
            color: Colors.purple,
          ), //icon
        ), //gesture
      ), //AppBar
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height * 2,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.purple,
                  Colors.deepPurple,
                  Colors.purple,
                  Colors.deepPurple,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: movieList.length,
                  itemBuilder: (BuildContext context, index) =>
                      movieTile(context, movie: movieList[index]),
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal:MediaQuery.of(context).size.width * 0.04 ,
                      vertical:MediaQuery.of(context).size.width * 0.09
                       ),
                    height: MediaQuery.of(context).size.width * 0.90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Image.asset('assets/images/05.png', width: 50, height: 50,)
                        ),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Image.asset('assets/images/6.jpg' , width: 50, height: 50,),

                              )
                            ],
                            



                        )
                          ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'CARD NUMBER : ',
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 16.0,
                            ),


                          
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 13.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.purple,
                                width: 2.0,
                              )
                            )
                          ),
                          child: Text(
                            '1234   5678   3456   2456',
                            style: TextStyle(
                              fontSize: 20.0,
                            ) ,
                            textAlign: TextAlign.center,)
                            ,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:<Widget> [
                              Row(
                                children: [
                                  
                                  
                                  Text('EXPIRE DATE : ')]
                                  ,
                              ),
                              Row(

                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: <Widget>[
                                   Row(
                                     children: [
                                       Text('CVV :')
                                     ],
                                   )
                                 ],



                              )
                            ],
                          ),
                        ),
                        Container(
                          
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 13.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.purple,
                                width: 2.0,
                              )
                            )
                          ),
                          child: Row(
                           children: [
                             Text('05 / 21                                                                         123')
                           ],
                          ),
                          
                          
                          

                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Text('CARHOLDER NAME :')
                            ],
                          ),

                        ),
                        Container(
                           width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(bottom: 13.0),
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.purple,
                                width: 2.0,
                              )
                            )
                          ),
                          child: Text(
                            '      John Doe',
                            style: TextStyle(
                              fontSize: 20.0,
                            ) ,
                            )
                            ,

                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Icon(Icons.crop_din_rounded),
                              ),
                              Container(
                                child: Text('SAVE CARD '),

                              )
                            ],
                          ),
                          

                        )
                      
                      ],
                    ),
                    ),
                    Container(
                    margin: EdgeInsets.symmetric(
                      horizontal:MediaQuery.of(context).size.width * 0.33 ,
                      vertical:MediaQuery.of(context).size.width * 0.09
                       ),
                    height: MediaQuery.of(context).size.width * 0.19,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                     child: Column(
                       children: <Widget>[
                         Container(
                        margin: EdgeInsets.only(top: 10),
                        child: RaisedButton(
                          onPressed: () {  },
                          child: Text('PAY SECURE'),
                          color: Colors.white,
                          textColor: Colors.purple,
                        )
                        
                      )
                         
                       ],
                     ),
                  
                    
                    ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container movieTile(BuildContext context, {required Movie movie}) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: Colors.white,
      ), //box
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 1.0),
                clipBehavior: Clip.antiAlias,
                height: MediaQuery.of(context).size.width*0.5,
                width: MediaQuery.of(context).size.width*0.3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage('assets/images/4.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'RON DEBLOQUE',
                    style: TextStyle(
                      color: Colors.purple,
                      fontSize: 20.0,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.009),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: Text(
                              'DAY : 20/09/2021',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 18.0,
                              ), //textstyle
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.009),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: Text(
                              'PLACE : PATHE',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 18.0,
                              ), //textstyle
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.009),
                        Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: Text(
                              'DATE : 18:00',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 18.0,
                              ), //textstyle
                            ),
                          ),
                          SizedBox(
                              height: MediaQuery.of(context).size.width * 0.009),
                              Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            child: Text(
                              'PRIX : 16.00DT',
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 18.0,
                              ), //textstyle
                            ),
                          ),
                          
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
