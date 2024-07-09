import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:grocery_app/models/grocery_model.dart';

class ItemDetails extends StatelessWidget {
  final Item item;

  ItemDetails({
    required this.item,
  });
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: item.bgColor,
        appBar: AppBar(
          backgroundColor: item.bgColor,
          title: GestureDetector(
            onTap: () => Navigator.pop(context),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Hero(
                    tag: item.imageUrl,
                    child: Image.asset(item.imageUrl),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(35),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(item.title,
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                        SizedBox(height: 10),
                        Text(
                          item.lb,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                buildCounterButton(Icons.remove),
                                Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.grey[100],
                                  child: Center(
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                buildCounterButton(Icons.add),
                              ],
                            ),
                            Text(
                              "\$${item.price}",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 35),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Text(
                                  "Product Description",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  item.description,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 22),
                        Row(
                          children: [
                            buildActionButton(Icons.favorite, item.color, true),
                            SizedBox(width: 15),
                            Expanded(
                              child: buildActionButton(Icons.shopping_cart,
                                  item.color, false, "Add to cart"),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

Widget buildCounterButton(IconData icon) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      color: Colors.grey[100],
      borderRadius: icon == Icons.remove
          ? BorderRadius.only(
              topLeft: Radius.circular(15), bottomLeft: Radius.circular(15))
          : BorderRadius.only(
              topRight: Radius.circular(15), bottomRight: Radius.circular(15)),
    ),
    child: Icon(icon),
  );
}

Widget buildActionButton(IconData icon, Color color, bool outline,
    [String? text]) {
  return Container(
    height: 75,
    decoration: BoxDecoration(
      color: outline ? Colors.white : color,
      borderRadius: BorderRadius.circular(20),
      border: outline ? Border.all(width: 2, color: color) : null,
    ),
    child: Center(
      child: text == null
          ? Icon(icon, size: 45, color: color)
          : Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
    ),
  );
}
