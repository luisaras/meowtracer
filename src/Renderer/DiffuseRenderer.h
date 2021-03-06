#ifndef __DIFR__
#define __DIFR__

#include "Renderer.h"

class DiffuseRenderer : public Renderer {
protected:
	int rayCount;
	Color getObjectColor(Scene &scene, Ray &ray, RayHit &hr);
public:
	DiffuseRenderer (int s, int d, int r) : Renderer(s, d), rayCount(r) {}
	Color getColor(Scene &scene, Ray &ray, float &x, float &y);
};

#endif