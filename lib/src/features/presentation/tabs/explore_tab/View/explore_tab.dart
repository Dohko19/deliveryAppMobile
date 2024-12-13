import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        _topBar(context),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 20.0),
                          alignment: Alignment.centerLeft,
                          child: headerText('Discover new places', black, 30.0, FontWeight.bold),
                        ),
                        _slideCards()
                      ],
                    ),
                  )
                ]
              )
          )
        ],
      )
    );
  }
}

Widget _topBar(BuildContext context){
  return Row(
    children: [
      Container(
        width: 310,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(234, 236, 239, 1.0)),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Row(
          children: [
            Icon(Icons.search, size: 20.0, color: grey),
            Container(
              margin: const EdgeInsets.only(left: 16),
              child: Text('Search', style: TextStyle(
                color: grey,
                fontSize: 17.0
              )),
            )
          ],
        ),
      ),
      Container(
        width: 45.0,
        height: 45.0,
        margin: const EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(209, 209, 214, 1.0),
          borderRadius: BorderRadius.circular(30)
        ),
        child: IconButton(
            onPressed: () {}, 
            icon: Icon(Icons.filter_list, size: 30.0, color: white)
        ),
      )
    ],
  );
}

Widget _slideCards() {
  return SizedBox(
      height: 350.0,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _card(context);
          }));
}

Widget _card(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, 'place-detail');
    },
    child: Container(
      margin: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const Image(
                width: 210.0,
                height: 250.0,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8Zm9vZHxlbnwwfDF8MHw%3D&auto=format&fit=crop&w=500&q=60')),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: const Text("Andy & Cindy's Diner",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17.0)),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text("87 Botsford Circle Apt",
                    style: TextStyle(
                        color: grey,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0)),
              ),
              Row(
                children: [
                  const Icon(Icons.star, color: yellow, size: 16),
                  const Text("4.8",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  const Text("(233 ratings)",
                      style: TextStyle(
                          color: grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0)),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: 80.0,
                    height: 18.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0.5,
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.orange,
                        textStyle: const TextStyle(
                          color: white
                        )
                        ),
                        onPressed: () {},
                        child:
                        const Text('Delivery', style: TextStyle(fontSize: 9.1, color: white))),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),
  );
}