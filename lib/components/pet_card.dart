import 'package:flutter/material.dart';
import 'package:petify/constants.dart';
import 'package:petify/screens/pet_profile.dart';

class PetCard extends StatefulWidget {
  final Image image;
  final String name;
  final String location;
  final String away;
  final String age;
  bool isLiked;
  PetCard({
    Key? key,
    required this.image,
    required this.name,
    required this.location,
    required this.away,
    required this.age,
    required this.isLiked,
  }) : super(key: key);

  @override
  State<PetCard> createState() => _PetCardState();
}

class _PetCardState extends State<PetCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          PetProfile.id,
          arguments: {
            "image": widget.image,
            "name": widget.name,
            "location": widget.location,
            "away": widget.away,
            "isLiked": widget.isLiked,
            "age": widget.age,
          },
        );
      },
      onDoubleTap: () {
        setState(() {
          widget.isLiked = !widget.isLiked;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: Material(
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          elevation: 20,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      widget.image,
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 4.0),
                              child: Text(
                                widget.name,
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on,
                                    color: kPrimaryColor, size: 15),
                                Text(
                                  "${widget.location}, (${widget.away} km)",
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text(widget.age,
                                  style: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.normal)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.isLiked = !widget.isLiked;
                      });
                    },
                    child: Icon(Icons.favorite,
                        color: widget.isLiked ? kLikedColor : kPrimaryWhite),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
