import 'package:flutter/material.dart';

class Recent extends StatefulWidget {
  const Recent({Key? key}) : super(key: key);

  @override
  State<Recent> createState() => _RecentState();
}

class _RecentState extends State<Recent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            color: Colors.grey.shade400,
            padding: const EdgeInsets.all(10),
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 75,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Search",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 12),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "21 Transaction",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          textAlign: TextAlign.end,
                          "Filter",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.deepPurple.shade600),
                        ),
                        const Icon(
                          Icons.filter_list,
                          color: Colors.black,
                        ),
                      ],
                    ))
              ],
            ),
          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: 3,
            color: Colors.grey.shade300,
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.7,
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 21,
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  Container(
                    padding: EdgeInsets.only(top: 8, right: 8, left: 8),
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Tue,June 28,2022",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(3),
                                      decoration: BoxDecoration(
                                        color: Color(0xFF00D258),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text("133.00Rs.  54.0Rs.",
                                      style: TextStyle(
                                          color: Colors.black
                                      ),),),
                                    Icon(Icons.keyboard_arrow_up,
                                    color: Colors.blue,)
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.account_balance_wallet_sharp,
                                color: Colors.grey,),
                                Column(
                                  children: [
                                    Text("Account Four",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),),
                                    SizedBox(height: 3,),
                                    Text('Saving'),
                                  ],
                                ),
                                Column(children: [
                                  Text("10.2 Rs."),
                                  Text("1000 Rs."),
                                ],),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
