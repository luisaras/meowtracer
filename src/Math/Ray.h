#ifndef __RAY__
#define __RAY__

#include "Vec3.h"

class Ray {     
public:        
  Point3 origin; 
  Vec3 direction;
  Vec3 invdir;
  int sign[3];
	Ray(Point3 o = Point3(), Vec3 d = Vec3()) : origin(o), direction(d) {
    invdir.x = 1 / direction.x;
    invdir.y = 1 / direction.y;
    invdir.z = 1 / direction.z;
    sign[0] = (invdir.x < 0); 
    sign[1] = (invdir.y < 0); 
    sign[2] = (invdir.z < 0); 
  }
	Point3 at(float n) { return origin + direction * n; }
	void normalize() { direction = direction * (1.0 / direction.Length()); }
};

#endif