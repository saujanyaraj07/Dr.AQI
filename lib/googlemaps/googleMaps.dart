import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GoogleMapsScreen extends StatefulWidget {
  const GoogleMapsScreen({Key? key}) : super(key: key);

  @override
  _GoogleMapsScreenState createState() => _GoogleMapsScreenState();
}

class _GoogleMapsScreenState extends State<GoogleMapsScreen> {
  // Set<Marker> _marker={};
  // void _onMapCreated(GoogleMapController controller){
  //   setState(() {
  //     _marker.add(
  //       Marker(markerId: MarkerId('id-1'),position: )
  //     )
  //   });
  //
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Center(child: Text('Dr.AQi Maps')),
      ),
      body: GoogleMap(

        initialCameraPosition: CameraPosition(target:LatLng(22.5448131,88.34036991),zoom: 15,
        ),
      ),
    );
  }
}
