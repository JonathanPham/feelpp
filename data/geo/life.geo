h=0.1;
d=0.4;
xmin=0;
xmax=4+d;
ymin=0;
ymax=2;
// Box
Point(1) = {xmin-d, ymin-d, 0,h};
Point(2) = {xmax+d, ymin-d, 0,h};
Point(3) = {xmax+d, ymax+d, 0,h};
Point(4) = {xmin-d, ymax+d, 0,h};

// L
Point(10) = {0, 0, 0,h};
Point(11) = {1, 0, 0,h};
Point(12) = {1, 0.2, 0,h};
Point(13) = {0.2, 0.2, 0,h};
Point(14) = {0.2, 2, 0,h};
Point(15) = {0, 2, 0,h};

// I
Point(20) = {1.4, 0, 0,h};
Point(21) = {1.6, 0, 0,h};
Point(22) = {1.6, 2, 0,h};
Point(23) = {1.4, 2, 0,h};

// F
Point(30) = {2, 0, 0,h};
Point(31) = {2.2, 0, 0,h};
Point(32) = {2.2, 0.9, 0,h};
Point(33) = {2.8, 0.9, 0,h};
Point(34) = {2.8, 1.1, 0,h};
Point(35) = {2.2, 1.1, 0,h};
Point(36) = {2.2, 1.8, 0,h};
Point(37) = {3, 1.8, 0,h};
Point(38) = {3, 2, 0,h};
Point(39) = {2, 2, 0,h};

// E

Point(40) = {d+3, 0, 0,h};
Point(41) = {d+4, 0, 0,h};
Point(42) = {d+4, 0.2, 0,h};
Point(43) = {d+3.2, 0.2, 0,h};
Point(44) = {d+3.2, 0.9, 0,h};
Point(45) = {d+3.6, 0.9, 0,h};
Point(46) = {d+3.6, 1.1, 0,h};
Point(47) = {d+3.2, 1.1, 0,h};
Point(48) = {d+3.2, 1.8, 0,h};
Point(49) = {d+4,   1.8, 0,h};
Point(50) = {d+4,   2, 0,h};
Point(51) = {d+3,   2, 0,h};

// box
Line(1) = {1, 2};
Line(2) = {2, 3};
Line(3) = {3, 4};
Line(4) = {4, 1};

// L
Line(5) = {10, 10};
Line(6) = {11, 12};
Line(7) = {10, 11};
Line(8) = {12, 13};
Line(9) = {13, 14};
Line(10) = {14, 15};
Line(11) = {15, 10};

// I
Line(12) = {20, 21};
Line(13) = {21, 22};
Line(14) = {22, 23};
Line(15) = {23, 20};

// F
Line(16) = {30, 31};
Line(17) = {31, 32};
Line(18) = {32, 33};
Line(19) = {33, 34};
Line(20) = {34, 35};
Line(21) = {35, 36};
Line(22) = {36, 37};
Line(23) = {37, 38};
Line(24) = {38, 39};
Line(25) = {39, 30};

// E
Line(26) = {40, 41};
Line(27) = {41, 42};
Line(28) = {42, 43};
Line(29) = {43, 44};
Line(30) = {44, 45};
Line(31) = {45, 46};
Line(32) = {46, 47};
Line(33) = {47, 48};
Line(34) = {48, 49};
Line(35) = {49, 50};
Line(36) = {50, 51};
Line(37) = {51, 40};

// surfaces
Line Loop(38) = {4, 1, 2, 3};
Line Loop(39) = {11, 7, 6, 8, 9, 10};
Line Loop(40) = {15, 12, 13, 14};
Line Loop(41) = {25, 16, 17, 18, 19, 20, 21, 22, 23, 24};
Line Loop(42) = {37, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36};
Plane Surface(43) = {38, 39, 40, 41, 42};

// Physical
Physical Line("box") = {1,2,3,4};
Physical Line("feel") = {6, 11, 9, 8, 7, 10,14, 15, 13, 12, 16, 25, 17, 18, 19,
	 	     20, 21, 22, 24, 23, 36, 34, 35, 37, 33, 32, 30,
		     31, 29, 28, 27, 26};

Physical Surface("domain") = {43};
