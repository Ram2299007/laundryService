import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClothesBlanketsLaundry extends StatefulWidget {
  const ClothesBlanketsLaundry({super.key});

  @override
  State<ClothesBlanketsLaundry> createState() => _ClothesBlanketsLaundryState();
}

class _ClothesBlanketsLaundryState extends State<ClothesBlanketsLaundry> {
  final List<itemModel> itemList = [
    itemModel("https://fastly.picsum.photos/id/26/200/300.jpg?hmac=E9i_aIqa_ifLvxqI2b1QTLCnhGQYJ83IpvaDfFM54bU","one"),
    itemModel("https://fastly.picsum.photos/id/558/200/300.jpg?hmac=RQvEcTitB2RoOqzwdtXcjckM1FybfSHIq676zecLvkw","two"),
    itemModel("https://fastly.picsum.photos/id/64/200/300.jpg?hmac=9MtSCC-H4DQRFtYARRhBDmbZhrJlRQJ2NQLowTY7A-s","three"),
    itemModel("https://fastly.picsum.photos/id/558/200/300.jpg?hmac=RQvEcTitB2RoOqzwdtXcjckM1FybfSHIq676zecLvkw","four"),
    itemModel("https://fastly.picsum.photos/id/26/200/300.jpg?hmac=E9i_aIqa_ifLvxqI2b1QTLCnhGQYJ83IpvaDfFM54bU","five"),
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Center(
                  child: Column(
        children: [


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 8.0, // Space between columns
                mainAxisSpacing: 8.0, // Space between rows
              ),
              itemCount: itemList.length,
              // Number of items in the grid
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.white,
                  child: Center(
                    child: Column(
                      children: [
                        Image(
                          image: NetworkImage(itemList[index].imgUrl),
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) {
                              return child;
                            }
                            return CircularProgressIndicator();
                          },
                          errorBuilder: (context, error, stackTrace) {
                            // Handle image loading errors (e.g., display error message)
                            return Text('Error loading image');
                          },
                          height: 148,
                          width: 173,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          itemList[index].textData,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

        ],
      )))),
    );
  }


}


class itemModel{
  late String imgUrl;
  late String textData;

  itemModel(this.imgUrl, this.textData);


}

