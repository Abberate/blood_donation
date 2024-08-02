import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kBottomContainerHeight = 80.0;
const kPrimaryRougeA = Color(0xFFD60033);
const kPrimaryRougeB = Color(0xFFde335c);
const kBlancA = Color(0xFFffffff);
const kGreyBtn = Color(0xFFf9d9e1);
const kGrey = Color(0xFFfdf2f5);

final TextStyle kTextStyle = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: kPrimaryRougeB,
);

final TextStyle kTextTitre = GoogleFonts.poppins(
  fontSize: 25,
  fontWeight: FontWeight.w900,
  color: Colors.black,
);

final TextStyle kTextChampSaisie = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: Colors.black,
);

final TextStyle kTextSousTitre = GoogleFonts.poppins(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: Colors.grey[600],
);

final TextStyle kBTN = GoogleFonts.poppins(
  fontSize: 18,
  letterSpacing: 3.0,
  fontWeight: FontWeight.w600,
  color: Colors.white,
);
