import 'dart:math';

class Point{
  late double x;
  late double y;
  late double z;
  
  static final cachePoint = <Point>[
    Point(0, 0, 0),
    Point(1, 1, 1),
    Point(2, 2, 2),
    Point(3, 3, 3),
  ];

  Point(this.x, this.y, this.z);

  factory Point.cache(double x, double y, double z){
    if(x == 1 && y == 1 && z == 1){
        return cachePoint[1];
    } else if(x == 0 && y == 0 && z ==0){
      return cachePoint[0];
    } else if(x == 3 && y == 3 && z ==3){
      return cachePoint[3];
    } else {
      return Point(x,y,z);
    }
  }

  distanceTo(Point another){
    double answer = sqrt(pow((another.x - 0), 2) + pow((another.y - 0), 2) + pow((another.z - 0), 2)); 

    return(answer);
  }

  squareOfTriangle(Point a, Point b, Point c){
    var AB = (pow((a.x-b.x), 2) + pow((a.y-b.y),2) + pow((a.z-b.z),2));
    var ab = sqrt(AB);
 
    var BC = (pow((b.x-c.x), 2) + pow((b.y-c.y),2) + pow((b.z-c.z),2));
    var bc = sqrt(BC);
 
    var AC = (pow((a.x-c.x), 2) + pow((a.y-c.y),2) + pow((a.z-c.z),2));
    var ac = sqrt(AC);
 
    var p = ((ab + ac + bc)/3);
    //print(p);
    var S = ((p - AB) * (p - AC) * ( p - BC ) * p);
    //print(S);
    var s = sqrt(S.abs()).round();

    return(s);
  }
}