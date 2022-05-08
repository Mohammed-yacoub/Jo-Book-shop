import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jo_book_shop/+-button.dart';
import 'package:jo_book_shop/ButtonInCart.dart';
import 'package:jo_book_shop/background.dart';
import 'package:jo_book_shop/bookInCart.dart';
import 'package:jo_book_shop/constants.dart';
import 'package:jo_book_shop/homePage.dart';
import 'package:jo_book_shop/libraryName.dart';
import 'package:jo_book_shop/search.dart';
import 'package:jo_book_shop/textEnhanced.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<Map> _cartList = <Map>[];

  @override
  void initState(){
    getData();
  }

  Future getData() async{
    var url = 'https://jobookshop.000webhostapp.com/getBooksInCart.php';
    http.Response response = await http.get(Uri.parse(url));
    var data = jsonDecode(response.body);
    dataChang(data);
  }

  var x;
  var index;
  void dataChang(List data){
    x = data[0]['LibraryName'];
    index = 0;
    _cartList.add({'libraryName': x , "bookDetails" : [data[0]] });
    for (int i = 1; i < data.length ; i++)
      {
        if(x == data[i]['LibraryName']){
          _cartList[index]["bookDetails"].add(data[i]);
        }
        else{
          index = 1;
          x = data[i]['LibraryName'];
          _cartList.add({'libraryName': x , "bookDetails" : [data[i]] });
        }
      }

  }



  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(W,H*0.055),
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 3),
              )
            ],
          ),
          child: AppBar(
            elevation: 0.0,
            title: const Center(
              child: TextEnhanced(
                text: "My Cart",
                weight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.white,

          ),
        ),
      ),
      body: SafeArea(
        child: Background(
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.symmetric(vertical: H * 0.03),
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: _cartList.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  LibraryName(name: _cartList[index]["libraryName"]),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: _cartList[index]["bookDetails"].length,
                    itemBuilder: (BuildContext context, int index_2) {
                      return BookInCart(
                          bookIndex: index,
                          bookIndex_2: index_2,
                          imageURL: _cartList[index]["bookDetails"][index_2]
                              ["BookImg"],
                          bookName: _cartList[index]["bookDetails"][index_2]
                              ["BookName"],
                          bookPrice: _cartList[index]["bookDetails"][index_2]
                              ["BookPrice"]);
                    },
                  ),
                  const ButtonInCart(),
                ],
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const DividerDone(),
          ),
        ),
      ),
    );
  }
}

class DividerDone extends StatelessWidget {
  const DividerDone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double H = MediaQuery.of(context).size.height;
    double W = MediaQuery.of(context).size.width;
    return Divider(
      color: primaryBorderColor,
      thickness: 2,
      indent: W * 0.3,
      height: H * 0.1,
      endIndent: W * 0.3,
    );
  }
}
