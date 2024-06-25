import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';


class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Stack(
          children: [

            FlutterMap(

              options: const MapOptions(
                initialCenter: LatLng(59.9342802, 30.3350986), // Example coordinates for Saint Petersburg
                initialZoom: 13.0,
              ),
              children: [
                TileLayer(
                  urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                  subdomains: ['a', 'b', 'c'],
                ),
                const MarkerLayer(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point:  LatLng(59.9342802, 30.3350986),
                      child: const Icon(
                        Icons.location_history_sharp,
                        color: Colors.black,
                        size: 40.0,
                      ),),
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point:  LatLng(59.956824, 30.319905),
                      child: const Icon(
                        Icons.location_history_sharp,
                        color: Colors.black,
                        size: 40.0,
                      ),),
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point:  LatLng(59.925153, 30.326845),
                      child: const Icon(
                        Icons.location_history_sharp,
                        color: Colors.black,
                        size: 40.0,
                      ),),

                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point:  LatLng(59.959221, 30.307299),
                      child: const Icon(
                        Icons.location_history_sharp,
                        color: Colors.black,
                        size: 40.0,
                      ),),
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point:  LatLng(59.939416, 30.357248),
                      child: const Icon(
                        Icons.location_history_sharp,
                        color: Colors.black,
                        size: 40.0,
                      ),)

                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 20,
              left: 200,
              right: 20,
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.arrow_circle_right,
                  color: Colors.green,
                  size: 30.0,
                ),
                label: Text('List of variants'),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  foregroundColor  : Colors.black,
                  backgroundColor: Colors.white,
                ),

              ),
            )
          ],
        ),
        Row(
          children: [
            Container(
              width: 250,
              height: 50,
              margin: EdgeInsets.fromLTRB(80, 60, 0, 80),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.search
                    ,color: Colors.black,),
                    onPressed: () {},
                  ), Text(
                    "Saint Peterburg",
                    style: TextStyle(
                        color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              width: 80,
              height: 50,
              margin: EdgeInsets.fromLTRB(10, 0, 0, 10),

              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.tune
                      ,color: Colors.black,),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        )

      ],
    );
  }
  Marker buildMarker(LatLng coordinates) {
    return Marker(
      width: 80.0,
      height: 80.0,
      point: coordinates,
      child: const Icon(
        Icons.location_history_sharp,
        color: Colors.orange,
        size: 40.0,
      ),
    );
  }
}
