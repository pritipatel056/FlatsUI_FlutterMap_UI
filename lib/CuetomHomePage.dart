import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';


class CustomHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.location_on),
            SizedBox(width: 8),
            Text('Saint Petersburg'),
          ],
        ),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/avatar.jpg'), // Add your avatar image to assets
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Expanded(
          child: SingleChildScrollView(
          
            child: ConstrainedBox(
              constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Marina',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "let's select your perfect place",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      _buildOfferCardCircle('BUY', '1 034'),
                      SizedBox(width: 16),
                      _buildOfferCard('RENT', '2 212'),
                    ],
                  ),
                  SizedBox(height: 24),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,  physics: ClampingScrollPhysics(),
                      children: [
                        _buildPropertyCard('Gladkova St., 25', 'assets/images/property1.jpg'), // Add your property images to assets
                        SizedBox(height: 16),
                        _buildPropertyCardRow('Trofimova St., 43', 'assets/images/property2.jpg'),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }

  Widget _buildOfferCard(String title, String count) {
    return Expanded(
      child: Container(
        height: 150,
        width: 150,
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: title == 'BUY' ? Colors.orange : Colors.grey[200],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Center(
              child: Text(
                count,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 8),
            Text(title),
          ],
        ),
      ),
    );
  }
  Widget _buildOfferCardCircle(String title, String count) {
    return Expanded(

      child: Container(
        height: 150,
        width: 150,
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: title == 'BUY' ? Colors.orange : Colors.grey[200],
          shape: BoxShape.circle,

        ),
        child: Center(
          child: Column(
            children: [
              Text(
                count,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 3),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPropertyCard(String address, String imagePath) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(

            alignment: Alignment.bottomCenter,
            children: [
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            )
            ,

            Center(

              child: Container(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 15),

                child: SliderButton(
                  height: 70,
                  width: 300,

                  action: () async{
                    ///Do something here OnSlide
                    return false;
                  },
                  label: Text(
                    "GladCova st 25",
                    style: TextStyle(
                        color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                  icon: Text(
                    "<",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 34,
                    ),
                  ),


                ),
              ),
            )

          ],
          ),

        ],
      ),
    );
  }
  Widget _buildPropertyCardRow(String address, String imagePath) {
    return Row(
      children: [
        Container(
          width: 200,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(

                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  )
                  ,

                  Center(

                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 15),

                      child: SliderButton(
                        height: 70,
                        width: 150,
                        buttonWidth: 40,
                        action: () async{
                          ///Do something here OnSlide
                          return false;
                        },
                        label: Text(
                          "GladCova 25",
                          style: TextStyle(
                              color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 8),
                        ),
                        icon: Text(
                          "<",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 34,
                          ),
                        ),


                      ),
                    ),
                  )

                ],
              ),

            ],
          ),
        ),
        Container(
          width: 200,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(

                alignment: Alignment.bottomCenter,
                children: [
                  Image.asset(
                    'assets/images/property1.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 200,
                  )
                  ,

                  Center(

                    child: Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 15),

                      child: SliderButton(
                        height: 70,
                        width: 150,
                        buttonWidth: 40,

                        action: () async{
                          ///Do something here OnSlide
                          return false;
                        },
                        label: Text(
                          "GladCova 25",
                          style: TextStyle(
                              color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 8),
                        ),
                        icon: Text(
                          "<",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w400,
                            fontSize: 25,
                          ),
                        ),


                      ),
                    ),
                  )

                ],
              ),

            ],
          ),
        ),
      ],
    );
  }

}