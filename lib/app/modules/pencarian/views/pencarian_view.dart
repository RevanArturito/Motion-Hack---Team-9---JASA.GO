import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/pencarian_controller.dart';

// final List<String> imagepath = [
//   "assets/image/sliders_cat.png",
//   "assets/image/sliders_kebocoran.png",
//   "assets/image/sliders_toilet.png",
// ];
// late List<Widget> _pages;

class PencarianView extends GetView<PencarianController> {
  // //@override
  // void initState() {
  //   initState();
  //   _pages = List.generate(
  //     imagepath.length,
  //     (index) => ImagePlaceHolder(
  //       imagepath: imagepath[index],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                  ),
                  iconSize: 32,
                  color: Colors.white,
                ),
              ],
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                hintText: 'Tukang keramik',
                hintStyle: TextStyle(color: Colors.grey),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/image/icon_sliders.png', scale: 4),
                ),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/image/icon_search.png', scale: 4),
                ),
                fillColor: Colors.white,
                isDense: true,
                contentPadding:
                    const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        toolbarHeight: 130,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            SizedBox(
              height: 18,
            ),
            // ListView(
            //   children: [
            //     SizedBox(
            //       height: 18,
            //     ),
            //     SizedBox(
            //       width: double.infinity,
            //       height: MediaQuery.of(context).size.height / 4,
            //       child: PageView.builder(
            //         itemCount: imagepath.length,
            //         itemBuilder: (context, index) {
            //           //return image widget
            //           return _pages[index];
            //         },
            //       ),
            //     ),
            //   ],
            // ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/image/sliders_cat.png",
                    scale: 4,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/image/sliders_kebocoran.png",
                    scale: 4,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/image/sliders_genteng.png",
                    scale: 4,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/image/sliders_toilet.png",
                    scale: 4,
                  ),
                ),
              ],
            ),

            Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage(
                          "assets/image/image_tukang.png",
                        ),
                        height: 92,
                      ),
                      Column(
                        children: [
                          Text(
                            "Andi Suherman",
                          ),
                          Text(
                            "Spesialis cat",
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    "penilaian",
                                  ),
                                  Icon(
                                    Icons.star_rate_rounded,
                                    color: Colors.amber,
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Total Kerja Selesai",
                                  ),
                                  Text(
                                    "78",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              color: Colors.yellow,

              //alignment: Alignment.topRight,
            ),
          ],
        ),
      ),
    );
  }
}

// class ImagePlaceHolder extends StatelessWidget {
//   final String? imagepath;
//   const ImagePlaceHolder({super.key, this.imagepath});

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       imagepath!,
//       fit: BoxFit.cover,
//     );
//   }
// }

// Center(
//         child: Text(
//           'PencarianView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
