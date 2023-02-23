import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hamo/constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: GoogleFonts.rubik().fontFamily),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        elevation: 0,
        shadowColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Good morning👋",
              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontFamily: GoogleFonts.rubik().fontFamily,
                  color: Theme.of(context).hintColor),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              "Andrew Tade",
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  fontFamily: GoogleFonts.rubik().fontFamily,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          SvgPicture.asset(
            "assets/svg/Notification.svg",
            width: 20,
          ),
          const SizedBox(
            width: 20,
          ),
          SvgPicture.asset(
            "assets/svg/Bookmark.svg",
            width: 20,
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                style: TextStyle(fontFamily: GoogleFonts.rubik().fontFamily),
                decoration: InputDecoration(
                  filled: true,
                  isDense: true,
                  prefixIcon: IconButton(
                    onPressed: null,
                    icon: SvgPicture.asset(
                      "assets/svg/Search.svg",
                      width: 20,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                  hintText: "Search",
                  suffixIcon: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(
                        "assets/svg/Filter.svg",
                        width: 20,
                        color: kColor,
                      )),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Spaecial Offers",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See All",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                          color: kColor,
                        ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: kColor,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
