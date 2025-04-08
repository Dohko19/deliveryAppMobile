import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
                        _slideCards(),
                        _headers(context, 'Popular this week', 'Show all'),
                        _populars(context,'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=2680&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                        _populars(context,'https://images.unsplash.com/photo-1523049673857-eb18f1d7b578?q=80&w=2575&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                        _populars(context,'https://images.unsplash.com/photo-1484723091739-30a097e8f929?q=80&w=1547&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                        const SizedBox(height: 10.0),
                        _headers(context, 'Collections', 'Show all'),
                        _sliderCollections(),
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
        width: 290,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromRGBO(234, 236, 239, 1.0)),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Row(
          children: [
            const Icon(Icons.search, size: 20.0, color: grey),
            Container(
              margin: const EdgeInsets.only(left: 17),
              child: const Text('Search', style: TextStyle(
                color: grey,
                fontSize: 15.0
              )),
            )
          ],
        ),
      ),
      Container(
        width: 40.0,
        height: 40.0,
        margin: const EdgeInsets.only(left: 10.0),
        decoration: BoxDecoration(
          color: const Color.fromRGBO(209, 209, 214, 1.0),
          borderRadius: BorderRadius.circular(30)
        ),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list, size: 25.0, color: white)
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

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(textHeader, black, 20.0, FontWeight.bold),
      ),
      const Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(textAction, style: const TextStyle(
              color: black,
              fontWeight: FontWeight.w500,
              fontSize: 15.0
            )
            ),
            const Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _populars(BuildContext context, String photo) {
  return Column(
    children: [
      Container(
        margin: const EdgeInsets.only(left: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: NetworkImage(photo)
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 7.0),
                    child: headerText("Andy & Cindy's diner", black, 17, FontWeight.bold)
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.only(bottom: 5.0),
                    child: const Text("87 Botsford Circle Apt", style: TextStyle(
                      color: grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 13.0
                    )),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: yellow, size: 16),
                      const Text("4.8", style: TextStyle(
                        color: black,
                        fontWeight: FontWeight.w500,
                        fontSize: 13.0
                      )),
                      Container(
                        margin: const EdgeInsets.only(left: 5.0),
                        child: const Text("(230 ratings)", style: TextStyle(
                          color: grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13.0
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 30.0),
                        width: 100.0,
                        height: 18.0,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: orange,
                                elevation: 0.5,
                                shape: const StadiumBorder(),
                                textStyle: const TextStyle(
                                    color: white
                                )
                            ),
                            onPressed: () {},
                            child: const Text("Delivery", style: TextStyle(
                                fontSize: 11.0,
                                color: white
                            ))
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ],
  );
}

Widget _sliderCollections() {
  return SizedBox(
      height: 180.0,
      child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return _cardCollection(context);
          }));
}

Widget _cardCollection(BuildContext context){
  return Container(
    margin: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: const Image(
            width: 300.0,
            height: 150.0,
            fit: BoxFit.cover,
            image: NetworkImage(
                'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=2680&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
            ),
        )),
      ],
    ),
  );
}