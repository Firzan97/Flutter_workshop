import 'package:flutter/material.dart';

class PokemonHome extends StatefulWidget {
  @override
  _PokemonHomeState createState() => _PokemonHomeState();
}

class _PokemonHomeState extends State<PokemonHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height*1,
        width: size.width*1,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent
        ),
        child: Column(
          children: [
            SizedBox(height: size.height*0.08,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                ),
                Center(
                  child: Text("Ivysaur",style: TextStyle(
                      fontSize: size.height*0.025,
color: Colors.white,                    fontFamily: "Muli"
                  )),
                ),
              SizedBox(width: size.width*0.1,)

              ],
            ),
            Container(
              width: size.width*1,
              height: size.height*0.75,

              child: Stack(
                children: [
                  Positioned(
                    top: size.height*0.15,
                    left: size.width*0.1,
                    child: Container(
                      height: size.height*0.6,
                      width: size.width*0.8,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 5,
                                spreadRadius: 9
                            )
                          ],
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: size.height*0.1,),
                          Text("Ivysaur", style: TextStyle(
                            fontSize: size.height*0.025,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Muli"
                          ),),
                          SizedBox(height: size.height*0.03,),
                          Text("Height:   0.99m", style: TextStyle(
                              fontSize: size.height*0.015,
                              fontFamily: "Muli"
                          ),),
                          Text("Weight:   13.0kg", style: TextStyle(
                              fontSize: size.height*0.015,
                              fontFamily: "Muli"
                          ),),
                          SizedBox(height: size.height*0.03,),
                          Text("Types", style: TextStyle(
                            fontWeight: FontWeight.w700
                          ),),
                          SizedBox(height: size.height*0.03,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Grass", style: TextStyle(
                                      color: Colors.black
                                  ),),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.amber,
                                    borderRadius: BorderRadius.circular(20)

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text("Poison", style: TextStyle(
                                      color: Colors.black
                                  ),),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size.height*0.03,),

                          Text("Weakness", style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),),
                          SizedBox(height: size.height*0.03,),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                      borderRadius: BorderRadius.circular(20)

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Fire", style: TextStyle(
                                      color: Colors.white
                                    ),),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20)

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Ice", style: TextStyle(
                                        color: Colors.white

                                    ),),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(20)

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Flying", style: TextStyle(
                                        color: Colors.white

                                    ),),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.red,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5.0),
                                    child: Text("Psychic", style: TextStyle(
                                        color: Colors.white

                                    ),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: size.height*0.03,),

                          Text("Next Evolution", style: TextStyle(
                              fontWeight: FontWeight.w700
                          ),),
                          SizedBox(height: size.height*0.03,),

                          Container(
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text("Venusaur", style: TextStyle(
color: Colors.white                    ),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                        left: size.width*0.3,
                      top: size.height*0.01,
                      child: Image.asset("assets/images/pikacu.png",scale: 3,)),

                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
}
