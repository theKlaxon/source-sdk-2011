#pragma once
#include "utlvector.h"
#include <xmmintrin.h>

class Point3D {
public:

	Point3D();
	Point3D(float p1, float p2, float p3);
	Point3D(Vector p1) { Point3D(p1.x, p1.y, p1.z); }

	Point3D		operator*(float p1) const;
	Point3D		operator+(Point3D p1) { return *this + p1; };
	Point3D		operator-(const Point3D& p1) const;
	Point3D		operator/(Point3D* p1);
	Point3D		operator/(float p1);
	float&		operator[](int index);
	const float	operator[](int index) const;
	void		operator=(Vector p1) {}

	Point3D&	normalize();
	Point3D&	mult(float p1);
	Point3D	crossProduct(const Point3D& p1) const;
	Point3D	unit() { return Point3D(this->AsVector() / length()); }
	float	dot(Point3D p1);
	//float	length(Point3D p1);
	float	length() const;

	void set(float p1, float p2, float p3);

	Vector AsVector() { return Vector(p[0], p[1], p[2]); }

private:

	//float x, y, z;
	/*DECL_ALIGN(4)*/ union
	{
		__m128 sse_vec3;
		float p[4];
	};
};
