import 'package:cartify/ui/widgets/cart_widget.dart';
import 'package:flutter/material.dart';

class ScreenCart extends StatelessWidget {
  const ScreenCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            size: 28,
            color: Color(0xFF317773),
          ),
        ),
        title: const Text("My Cart",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => const CartWidget(),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: 2),
            const SizedBox(
              height: 15,
            ),
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(14),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Promo code",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xff317773))),
                          onPressed: () {},
                          child: const Text(
                            "Apply",
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Price",
                    style: TextStyle(
                        color: Color(0xFF717171),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "₹12,000.00",
                    style: TextStyle(
                        color: Color(0xFF717171), fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Discount",
                    style: TextStyle(
                        color: Color(0xFF717171),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "₹0",
                    style: TextStyle(
                        color: Color(0xFF717171),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shipping",
                    style: TextStyle(
                        color: Color(0xFF717171),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "₹12.00",
                    style: TextStyle(
                        color: Color(0xFF717171),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Total Amount",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Text(
                    "₹120000.00",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  )
                ],
              ),
            ),
            ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Color(0xff317773))),
                          onPressed: () {},
                          child: const Text(
                            "Proceed To Payment",
                            style: TextStyle(color: Colors.white),
                          ))
          ],
        ),
      ),
    );
  }
}
