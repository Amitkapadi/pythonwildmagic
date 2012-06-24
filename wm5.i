//////////////////////////////////////////////////
//
//  SWIG Library File for building Python wrappers
//  of Geometric Tools' Wild Magic C++ Libraries.
//
//////////////////////////////////////////////////

%module wm5

%{
#include "Wm5CoreLIB.h"
#include "Wm5MathematicsLIB.h"
#include "Wm5Tuple.h"
#include "Wm5GVector.h"
#include "Wm5Vector2.h"
#include "Wm5Vector3.h"
#include "Wm5Vector4.h"
#include "Wm5Arc2.h"

#include "Wm5AxisAlignedBox2.h"
#include "Wm5AxisAlignedBox3.h"

#include "Wm5Box2.h"
#include "Wm5Box3.h"

#include "Wm5Capsule3.h"
#include "Wm5Circle2.h"
#include "Wm5Circle3.h"
#include "Wm5Cone3.h"
#include "Wm5ConformalMap.h"

#include "Wm5ContEllipse2MinCR.h"
#include "Wm5ContEllipsoid3MinCR.h"
#include "Wm5ConvexHull1.h"
#include "Wm5ConvexHull2.h"
#include "Wm5ConvexHull3.h"
#include "Wm5ConvexHull.h"

#include "Wm5Polynomial1.h"
#include "Wm5PolynomialCurve2.h"
#include "Wm5PolynomialCurve3.h"
#include "Wm5PolynomialRoots.h"
#include "Wm5PolynomialRootsR.h"

#include "Wm5BezierCurve2.h"
#include "Wm5BezierCurve3.h"
#include "Wm5Bisect1.h"
#include "Wm5Bisect2.h"
#include "Wm5Bisect3.h"
#include "Wm5BoxManager.h"
#include "Wm5BrentsMethod.h"

#include "Wm5CubicPolynomialCurve2.h"
#include "Wm5CubicPolynomialCurve3.h"
#include "Wm5Curve2.h"
#include "Wm5Curve3.h"
#include "Wm5Cylinder3.h"
#include "Wm5Delaunay.h"
#include "Wm5Delaunay1.h"
#include "Wm5Delaunay2.h"
#include "Wm5Delaunay3.h"
#include "Wm5Ellipse2.h"
#include "Wm5Ellipse3.h"
#include "Wm5Ellipsoid3.h"
    //#include "Wm5FileIO.h"
#include "Wm5Frustum3.h"
#include "Wm5Line2.h"
#include "Wm5Line3.h"
#include "Wm5Lozenge3.h"
#include "Wm5Plane3.h"
#include "Wm5Query.h"
#include "Wm5Ray2.h"
#include "Wm5Ray3.h"
#include "Wm5Rectangle3.h"
#include "Wm5Segment2.h"
#include "Wm5Segment3.h"
#include "Wm5Sphere3.h"
#include "Wm5Tetrahedron3.h"
#include "Wm5Torus3.h"
#include "Wm5Triangle2.h"
#include "Wm5Triangle3.h"

////////////////////
// B-spline
////////////////////
#include "Wm5BSplineBasis.h"
#include "Wm5BSplineCurve2.h"
#include "Wm5BSplineCurve3.h"
#include "Wm5BSplineCurveFit.h"
#include "Wm5BSplineFitBasis.h"
#include "Wm5BSplineGeodesic.h"
#include "Wm5BSplineRectangle.h"
#include "Wm5BSplineReduction.h"
#include "Wm5BSplineSurfaceFit.h"
    //#include "Wm5BSplineSurfacePatch.h"
#include "Wm5BSplineVolume.h"

////////////////////
// Distances
////////////////////
#include "Wm5Distance.h"
#include "Wm5DistCircle3Circle3.h"
#include "Wm5DistLine2Line2.h"
#include "Wm5DistLine2Ray2.h"
#include "Wm5DistLine2Segment2.h"
#include "Wm5DistLine3Box3.h"
#include "Wm5DistLine3Circle3.h"
#include "Wm5DistLine3Line3.h"
#include "Wm5DistLine3Ray3.h"
#include "Wm5DistLine3Rectangle3.h"
#include "Wm5DistLine3Segment3.h"
#include "Wm5DistLine3Triangle3.h"
#include "Wm5DistPoint2Box2.h"
#include "Wm5DistPoint2Ellipse2.h"
#include "Wm5DistPoint2Line2.h"
#include "Wm5DistPoint2Ray2.h"
#include "Wm5DistPoint2Segment2.h"
#include "Wm5DistPoint3Box3.h"
#include "Wm5DistPoint3Circle3.h"
#include "Wm5DistPoint3Ellipsoid3.h"
#include "Wm5DistPoint3Frustum3.h"
#include "Wm5DistPoint3Line3.h"
#include "Wm5DistPoint3Plane3.h"
#include "Wm5DistPoint3Ray3.h"
#include "Wm5DistPoint3Rectangle3.h"
#include "Wm5DistPoint3Segment3.h"
#include "Wm5DistPoint3Tetrahedron3.h"
#include "Wm5DistPoint3Triangle3.h"
#include "Wm5DistSegment2Segment2.h"
#include "Wm5DistSegment3Segment3.h"

////////////////////
// Interpolations
////////////////////
#include "Wm5IntpAkima1.h"
#include "Wm5IntpAkimaNonuniform1.h"
#include "Wm5IntpAkimaUniform1.h"
#include "Wm5IntpAkimaUniform2.h"
#include "Wm5IntpAkimaUniform3.h"
#include "Wm5IntpBSplineUniform1.h"
#include "Wm5IntpBSplineUniform2.h"
#include "Wm5IntpBSplineUniform3.h"
#include "Wm5IntpBSplineUniform4.h"
#include "Wm5IntpBSplineUniform.h"
#include "Wm5IntpBSplineUniformN.h"
#include "Wm5IntpBicubic2.h"
#include "Wm5IntpBilinear2.h"
#include "Wm5IntpLinearNonuniform2.h"
#include "Wm5IntpLinearNonuniform3.h"
#include "Wm5IntpQdrNonuniform2.h"
#include "Wm5IntpSphere2.h"
#include "Wm5IntpThinPlateSpline2.h"
#include "Wm5IntpThinPlateSpline3.h"
#include "Wm5IntpTricubic3.h"
#include "Wm5IntpTrilinear3.h"
#include "Wm5IntpVectorField2.h"

////////////////////
// Intersectors
////////////////////
#include "Wm5Intersector.h"
#include "Wm5IntrArc2Arc2.h"
#include "Wm5IntrArc2Arc2.h"
#include "Wm5IntrArc2Circle2.h"
#include "Wm5IntrArc2Circle2.h"
#include "Wm5IntrBox2Box2.h"
#include "Wm5IntrBox2Box2.h"
#include "Wm5IntrBox2Circle2.h"
#include "Wm5IntrBox2Circle2.h"
#include "Wm5IntrBox3Box3.h"
#include "Wm5IntrBox3Box3.h"
#include "Wm5IntrBox3Frustum3.h"
#include "Wm5IntrBox3Frustum3.h"
#include "Wm5IntrBox3Sphere3.h"
#include "Wm5IntrBox3Sphere3.h"
#include "Wm5IntrCapsule3Capsule3.h"
#include "Wm5IntrCapsule3Capsule3.h"
#include "Wm5IntrCircle2Circle2.h"
#include "Wm5IntrCircle2Circle2.h"
#include "Wm5IntrCircle3Plane3.h"
#include "Wm5IntrCircle3Plane3.h"
#include "Wm5IntrEllipse2Ellipse2.h"
#include "Wm5IntrEllipse2Ellipse2.h"
#include "Wm5IntrEllipsoid3Ellipsoid3.h"
#include "Wm5IntrEllipsoid3Ellipsoid3.h"
#include "Wm5IntrHalfspace3Box3.h"
#include "Wm5IntrHalfspace3Box3.h"
#include "Wm5IntrHalfspace3Segment3.h"
#include "Wm5IntrHalfspace3Segment3.h"
#include "Wm5IntrHalfspace3Sphere3.h"
#include "Wm5IntrHalfspace3Sphere3.h"
#include "Wm5IntrHalfspace3Triangle3.h"
#include "Wm5IntrHalfspace3Triangle3.h"
#include "Wm5IntrLine2Arc2.h"
#include "Wm5IntrLine2Arc2.h"
#include "Wm5IntrLine2Box2.h"
#include "Wm5IntrLine2Box2.h"
#include "Wm5IntrLine2Circle2.h"
#include "Wm5IntrLine2Circle2.h"
#include "Wm5IntrLine2Line2.h"
#include "Wm5IntrLine2Line2.h"
#include "Wm5IntrLine2Ray2.h"
#include "Wm5IntrLine2Ray2.h"
#include "Wm5IntrLine2Segment2.h"
#include "Wm5IntrLine2Segment2.h"
#include "Wm5IntrLine2Triangle2.h"
#include "Wm5IntrLine2Triangle2.h"
#include "Wm5IntrLine3Box3.h"
#include "Wm5IntrLine3Box3.h"
#include "Wm5IntrLine3Capsule3.h"
#include "Wm5IntrLine3Capsule3.h"
#include "Wm5IntrLine3Cone3.h"
#include "Wm5IntrLine3Cone3.h"
#include "Wm5IntrLine3Cylinder3.h"
#include "Wm5IntrLine3Cylinder3.h"
#include "Wm5IntrLine3Ellipsoid3.h"
#include "Wm5IntrLine3Ellipsoid3.h"
#include "Wm5IntrLine3Lozenge3.h"
#include "Wm5IntrLine3Lozenge3.h"
#include "Wm5IntrLine3Plane3.h"
#include "Wm5IntrLine3Plane3.h"
#include "Wm5IntrLine3Sphere3.h"
#include "Wm5IntrLine3Sphere3.h"
#include "Wm5IntrLine3Torus3.h"
#include "Wm5IntrLine3Torus3.h"
#include "Wm5IntrLine3Triangle3.h"
#include "Wm5IntrLine3Triangle3.h"
#include "Wm5IntrLozenge3Lozenge3.h"
#include "Wm5IntrLozenge3Lozenge3.h"
#include "Wm5IntrPlane3Box3.h"
#include "Wm5IntrPlane3Box3.h"
#include "Wm5IntrPlane3Capsule3.h"
#include "Wm5IntrPlane3Capsule3.h"
#include "Wm5IntrPlane3Cylinder3.h"
#include "Wm5IntrPlane3Cylinder3.h"
#include "Wm5IntrPlane3Ellipsoid3.h"
#include "Wm5IntrPlane3Ellipsoid3.h"
#include "Wm5IntrPlane3Lozenge3.h"
#include "Wm5IntrPlane3Lozenge3.h"
#include "Wm5IntrPlane3Plane3.h"
#include "Wm5IntrPlane3Plane3.h"
#include "Wm5IntrPlane3Sphere3.h"
#include "Wm5IntrPlane3Sphere3.h"
#include "Wm5IntrPlane3Triangle3.h"
#include "Wm5IntrPlane3Triangle3.h"
#include "Wm5IntrRay2Arc2.h"
#include "Wm5IntrRay2Arc2.h"
#include "Wm5IntrRay2Box2.h"
#include "Wm5IntrRay2Box2.h"
#include "Wm5IntrRay2Circle2.h"
#include "Wm5IntrRay2Circle2.h"
#include "Wm5IntrRay2Ray2.h"
#include "Wm5IntrRay2Ray2.h"
#include "Wm5IntrRay2Segment2.h"
#include "Wm5IntrRay2Segment2.h"
#include "Wm5IntrRay2Triangle2.h"
#include "Wm5IntrRay2Triangle2.h"
#include "Wm5IntrRay3Box3.h"
#include "Wm5IntrRay3Box3.h"
#include "Wm5IntrRay3Capsule3.h"
#include "Wm5IntrRay3Capsule3.h"
#include "Wm5IntrRay3Cylinder3.h"
#include "Wm5IntrRay3Cylinder3.h"
#include "Wm5IntrRay3Ellipsoid3.h"
#include "Wm5IntrRay3Ellipsoid3.h"
#include "Wm5IntrRay3Lozenge3.h"
#include "Wm5IntrRay3Lozenge3.h"
#include "Wm5IntrRay3Plane3.h"
#include "Wm5IntrRay3Plane3.h"
#include "Wm5IntrRay3Sphere3.h"
#include "Wm5IntrRay3Sphere3.h"
#include "Wm5IntrRay3Triangle3.h"
#include "Wm5IntrRay3Triangle3.h"
#include "Wm5IntrSegment2Arc2.h"
#include "Wm5IntrSegment2Arc2.h"
#include "Wm5IntrSegment2Box2.h"
#include "Wm5IntrSegment2Box2.h"
#include "Wm5IntrSegment2Circle2.h"
#include "Wm5IntrSegment2Circle2.h"
#include "Wm5IntrSegment2Segment2.h"
#include "Wm5IntrSegment2Segment2.h"
#include "Wm5IntrSegment2Triangle2.h"
#include "Wm5IntrSegment2Triangle2.h"
#include "Wm5IntrSegment3Box3.h"
#include "Wm5IntrSegment3Box3.h"
#include "Wm5IntrSegment3Capsule3.h"
#include "Wm5IntrSegment3Capsule3.h"
#include "Wm5IntrSegment3Cylinder3.h"
#include "Wm5IntrSegment3Cylinder3.h"
#include "Wm5IntrSegment3Ellipsoid3.h"
#include "Wm5IntrSegment3Ellipsoid3.h"
#include "Wm5IntrSegment3Lozenge3.h"
#include "Wm5IntrSegment3Lozenge3.h"
#include "Wm5IntrSegment3Plane3.h"
#include "Wm5IntrSegment3Plane3.h"
#include "Wm5IntrSegment3Sphere3.h"
#include "Wm5IntrSegment3Sphere3.h"
#include "Wm5IntrSegment3Triangle3.h"
#include "Wm5IntrSegment3Triangle3.h"
#include "Wm5IntrSphere3Cone3.h"
#include "Wm5IntrSphere3Cone3.h"
#include "Wm5IntrSphere3Frustum3.h"
#include "Wm5IntrSphere3Frustum3.h"
#include "Wm5IntrSphere3Sphere3.h"
#include "Wm5IntrSphere3Sphere3.h"
#include "Wm5IntrTetrahedron3Tetrahedron3.h"
#include "Wm5IntrTetrahedron3Tetrahedron3.h"
#include "Wm5IntrTriangle2Triangle2.h"
#include "Wm5IntrTriangle2Triangle2.h"
#include "Wm5IntrTriangle3Box3.h"
#include "Wm5IntrTriangle3Box3.h"
#include "Wm5IntrTriangle3Cone3.h"
#include "Wm5IntrTriangle3Cone3.h"
#include "Wm5IntrTriangle3Cylinder3.h"
#include "Wm5IntrTriangle3Cylinder3.h"
#include "Wm5IntrTriangle3Sphere3.h"
#include "Wm5IntrTriangle3Sphere3.h"
#include "Wm5IntrTriangle3Triangle3.h"
#include "Wm5IntrTriangle3Triangle3.h"

#include "Wm5QuadricSurface.h"
#include "Wm5Quaternion.h"
#include "Wm5Query.h"

#include "Wm5Integer.h"

#include "Wm5Query2.h"
#include "Wm5Query2Filtered.h"
#include "Wm5Query2Int64.h"
#include "Wm5Query2Integer.h"
#include "Wm5Query2Rational.h"

#include "Wm5Query3.h"
#include "Wm5Query3Filtered.h"
#include "Wm5Query3Int64.h"
#include "Wm5Query3Integer.h"
#include "Wm5Query3Rational.h"

#include "Wm5Float3.h"
#include "Wm5HPoint.h"
#include "Wm5AVector.h"
#include "Wm5APoint.h"
#include "Wm5HPlane.h"

#include "Wm5Matrix2.h"
#include "Wm5Matrix3.h"
#include "Wm5Matrix4.h"

#include "Wm5GMatrix.h"
#include "Wm5Matrix2.h"
#include "Wm5Matrix3.h"
#include "Wm5Matrix4.h"
#include "Wm5HMatrix.h"

#include "Wm5GraphicsLIB.h"
#include "Wm5Math.h"
#include "Wm5Transform.h"
%}

// Rename the conversion operators. Note the missing namespace qualifiers
// before the method names, like here   -----+
//                                           |
//                                           v
//    %rename (Float3) Wm5::APoint::operator  Float3&();
//
// Adding the qualifier breaks SWIG with errors, but leaving it out generates 
// invalid wrapper code. That's why we patch the generated code by adding 
// the namespaces qualifiers (see the Makefile.)
//%rename (Float3)        Wm5::APoint::operator Float3&();
//%rename (Float3const)   Wm5::APoint::operator const Float3&() const;
//%rename (Vector3f)      Wm5::APoint::operator Vector3f&();
//%rename (Vector3fconst) Wm5::APoint::operator const Vector3f&() const;


%include "Wm5CoreLIB.h"

%include "Wm5MathematicsLIB.h"
%include "Wm5Tuple.h"
%include "Wm5GVector.h"
%include "Wm5Vector2.h"
%include "Wm5Vector3.h"
%include "Wm5Vector4.h"
%include "Wm5Arc2.h"

%include "Wm5AxisAlignedBox2.h"
%include "Wm5AxisAlignedBox3.h"

%include "Wm5Box2.h"
%include "Wm5Box3.h"
%include "Wm5Capsule3.h"
%include "Wm5Circle2.h"
%include "Wm5Circle3.h"
%include "Wm5Cone3.h"
%include "Wm5ConformalMap.h"

%include "Wm5ContEllipse2MinCR.h"
%include "Wm5ContEllipsoid3MinCR.h"
%include "Wm5ConvexHull1.h"
%include "Wm5ConvexHull2.h"
%include "Wm5ConvexHull3.h"
%include "Wm5ConvexHull.h"

%include "Wm5Polynomial1.h"
%include "Wm5PolynomialCurve2.h"
%include "Wm5PolynomialCurve3.h"
%include "Wm5PolynomialRoots.h"
%include "Wm5PolynomialRootsR.h"

%include "Wm5BezierCurve2.h"
%include "Wm5BezierCurve3.h"
%include "Wm5Bisect1.h"
%include "Wm5Bisect2.h"
%include "Wm5Bisect3.h"
%include "Wm5BoxManager.h"
%include "Wm5BrentsMethod.h"

%include "Wm5CubicPolynomialCurve2.h"
%include "Wm5CubicPolynomialCurve3.h"
%include "Wm5Curve2.h"
%include "Wm5Curve3.h"
%include "Wm5Cylinder3.h"
%include "Wm5Delaunay.h"
%include "Wm5Delaunay1.h"
%include "Wm5Delaunay2.h"
%include "Wm5Delaunay3.h"
%include "Wm5Ellipse2.h"
%include "Wm5Ellipse3.h"
%include "Wm5Ellipsoid3.h"
 //%include "Wm5FileIO.h"
%include "Wm5Frustum3.h"
%include "Wm5Line2.h"
%include "Wm5Line3.h"
%include "Wm5Lozenge3.h"
%include "Wm5Plane3.h"
%include "Wm5Query.h"
%include "Wm5Ray2.h"
%include "Wm5Ray3.h"
%include "Wm5Rectangle3.h"
%include "Wm5Segment2.h"
%include "Wm5Segment3.h"
%include "Wm5Sphere3.h"
%include "Wm5Tetrahedron3.h"
%include "Wm5Torus3.h"
%include "Wm5Triangle2.h"
%include "Wm5Triangle3.h"

////////////////////
// B-spline
////////////////////
%include "Wm5BSplineBasis.h"
%include "Wm5BSplineCurve2.h"
%include "Wm5BSplineCurve3.h"
%include "Wm5BSplineCurveFit.h"
%include "Wm5BSplineFitBasis.h"
%include "Wm5BSplineGeodesic.h"
%include "Wm5BSplineRectangle.h"
%include "Wm5BSplineReduction.h"
%include "Wm5BSplineSurfaceFit.h"
 //%include "Wm5BSplineSurfacePatch.h"
%include "Wm5BSplineVolume.h"

////////////////////
// Distances
////////////////////
%include "Wm5Distance.h"
%include "Wm5DistCircle3Circle3.h"
%include "Wm5DistLine2Line2.h"
%include "Wm5DistLine2Ray2.h"
%include "Wm5DistLine2Segment2.h"
%include "Wm5DistLine3Box3.h"
%include "Wm5DistLine3Circle3.h"
%include "Wm5DistLine3Line3.h"
%include "Wm5DistLine3Ray3.h"
%include "Wm5DistLine3Rectangle3.h"
%include "Wm5DistLine3Segment3.h"
%include "Wm5DistLine3Triangle3.h"
%include "Wm5DistPoint2Box2.h"
%include "Wm5DistPoint2Ellipse2.h"
%include "Wm5DistPoint2Line2.h"
%include "Wm5DistPoint2Ray2.h"
%include "Wm5DistPoint2Segment2.h"
%include "Wm5DistPoint3Box3.h"
%include "Wm5DistPoint3Circle3.h"
%include "Wm5DistPoint3Ellipsoid3.h"
%include "Wm5DistPoint3Frustum3.h"
%include "Wm5DistPoint3Line3.h"
%include "Wm5DistPoint3Plane3.h"
%include "Wm5DistPoint3Ray3.h"
%include "Wm5DistPoint3Rectangle3.h"
%include "Wm5DistPoint3Segment3.h"
%include "Wm5DistPoint3Tetrahedron3.h"
%include "Wm5DistPoint3Triangle3.h"
%include "Wm5DistSegment2Segment2.h"
%include "Wm5DistSegment3Segment3.h"

////////////////////
// Interpolations
////////////////////
%include "Wm5IntpAkima1.h"
%include "Wm5IntpAkimaNonuniform1.h"
%include "Wm5IntpAkimaUniform1.h"
%include "Wm5IntpAkimaUniform2.h"
%include "Wm5IntpAkimaUniform3.h"
%include "Wm5IntpBSplineUniform1.h"
%include "Wm5IntpBSplineUniform2.h"
%include "Wm5IntpBSplineUniform3.h"
%include "Wm5IntpBSplineUniform4.h"
%include "Wm5IntpBSplineUniform.h"
%include "Wm5IntpBSplineUniformN.h"
%include "Wm5IntpBicubic2.h"
%include "Wm5IntpBilinear2.h"
%include "Wm5IntpLinearNonuniform2.h"
%include "Wm5IntpLinearNonuniform3.h"
%include "Wm5IntpQdrNonuniform2.h"
%include "Wm5IntpSphere2.h"
%include "Wm5IntpThinPlateSpline2.h"
%include "Wm5IntpThinPlateSpline3.h"
%include "Wm5IntpTricubic3.h"
%include "Wm5IntpTrilinear3.h"
%include "Wm5IntpVectorField2.h"

////////////////////
// Intersectors
////////////////////
%include "Wm5Intersector.h"
%include "Wm5IntrArc2Arc2.h"
%include "Wm5IntrArc2Arc2.h"
%include "Wm5IntrArc2Circle2.h"
%include "Wm5IntrArc2Circle2.h"
%include "Wm5IntrBox2Box2.h"
%include "Wm5IntrBox2Box2.h"
%include "Wm5IntrBox2Circle2.h"
%include "Wm5IntrBox2Circle2.h"
%include "Wm5IntrBox3Box3.h"
%include "Wm5IntrBox3Box3.h"
%include "Wm5IntrBox3Frustum3.h"
%include "Wm5IntrBox3Frustum3.h"
%include "Wm5IntrBox3Sphere3.h"
%include "Wm5IntrBox3Sphere3.h"
%include "Wm5IntrCapsule3Capsule3.h"
%include "Wm5IntrCapsule3Capsule3.h"
%include "Wm5IntrCircle2Circle2.h"
%include "Wm5IntrCircle2Circle2.h"
%include "Wm5IntrCircle3Plane3.h"
%include "Wm5IntrCircle3Plane3.h"
%include "Wm5IntrEllipse2Ellipse2.h"
%include "Wm5IntrEllipse2Ellipse2.h"
%include "Wm5IntrEllipsoid3Ellipsoid3.h"
%include "Wm5IntrEllipsoid3Ellipsoid3.h"
%include "Wm5IntrHalfspace3Box3.h"
%include "Wm5IntrHalfspace3Box3.h"
%include "Wm5IntrHalfspace3Segment3.h"
%include "Wm5IntrHalfspace3Segment3.h"
%include "Wm5IntrHalfspace3Sphere3.h"
%include "Wm5IntrHalfspace3Sphere3.h"
%include "Wm5IntrHalfspace3Triangle3.h"
%include "Wm5IntrHalfspace3Triangle3.h"
%include "Wm5IntrLine2Arc2.h"
%include "Wm5IntrLine2Arc2.h"
%include "Wm5IntrLine2Box2.h"
%include "Wm5IntrLine2Box2.h"
%include "Wm5IntrLine2Circle2.h"
%include "Wm5IntrLine2Circle2.h"
%include "Wm5IntrLine2Line2.h"
%include "Wm5IntrLine2Line2.h"
%include "Wm5IntrLine2Ray2.h"
%include "Wm5IntrLine2Ray2.h"
%include "Wm5IntrLine2Segment2.h"
%include "Wm5IntrLine2Segment2.h"
%include "Wm5IntrLine2Triangle2.h"
%include "Wm5IntrLine2Triangle2.h"
%include "Wm5IntrLine3Box3.h"
%include "Wm5IntrLine3Box3.h"
%include "Wm5IntrLine3Capsule3.h"
%include "Wm5IntrLine3Capsule3.h"
%include "Wm5IntrLine3Cone3.h"
%include "Wm5IntrLine3Cone3.h"
%include "Wm5IntrLine3Cylinder3.h"
%include "Wm5IntrLine3Cylinder3.h"
%include "Wm5IntrLine3Ellipsoid3.h"
%include "Wm5IntrLine3Ellipsoid3.h"
%include "Wm5IntrLine3Lozenge3.h"
%include "Wm5IntrLine3Lozenge3.h"
%include "Wm5IntrLine3Plane3.h"
%include "Wm5IntrLine3Plane3.h"
%include "Wm5IntrLine3Sphere3.h"
%include "Wm5IntrLine3Sphere3.h"
%include "Wm5IntrLine3Torus3.h"
%include "Wm5IntrLine3Torus3.h"
%include "Wm5IntrLine3Triangle3.h"
%include "Wm5IntrLine3Triangle3.h"
%include "Wm5IntrLozenge3Lozenge3.h"
%include "Wm5IntrLozenge3Lozenge3.h"
%include "Wm5IntrPlane3Box3.h"
%include "Wm5IntrPlane3Box3.h"
%include "Wm5IntrPlane3Capsule3.h"
%include "Wm5IntrPlane3Capsule3.h"
%include "Wm5IntrPlane3Cylinder3.h"
%include "Wm5IntrPlane3Cylinder3.h"
%include "Wm5IntrPlane3Ellipsoid3.h"
%include "Wm5IntrPlane3Ellipsoid3.h"
%include "Wm5IntrPlane3Lozenge3.h"
%include "Wm5IntrPlane3Lozenge3.h"
%include "Wm5IntrPlane3Plane3.h"
%include "Wm5IntrPlane3Plane3.h"
%include "Wm5IntrPlane3Sphere3.h"
%include "Wm5IntrPlane3Sphere3.h"
%include "Wm5IntrPlane3Triangle3.h"
%include "Wm5IntrPlane3Triangle3.h"
%include "Wm5IntrRay2Arc2.h"
%include "Wm5IntrRay2Arc2.h"
%include "Wm5IntrRay2Box2.h"
%include "Wm5IntrRay2Box2.h"
%include "Wm5IntrRay2Circle2.h"
%include "Wm5IntrRay2Circle2.h"
%include "Wm5IntrRay2Ray2.h"
%include "Wm5IntrRay2Ray2.h"
%include "Wm5IntrRay2Segment2.h"
%include "Wm5IntrRay2Segment2.h"
%include "Wm5IntrRay2Triangle2.h"
%include "Wm5IntrRay2Triangle2.h"
%include "Wm5IntrRay3Box3.h"
%include "Wm5IntrRay3Box3.h"
%include "Wm5IntrRay3Capsule3.h"
%include "Wm5IntrRay3Capsule3.h"
%include "Wm5IntrRay3Cylinder3.h"
%include "Wm5IntrRay3Cylinder3.h"
%include "Wm5IntrRay3Ellipsoid3.h"
%include "Wm5IntrRay3Ellipsoid3.h"
%include "Wm5IntrRay3Lozenge3.h"
%include "Wm5IntrRay3Lozenge3.h"
%include "Wm5IntrRay3Plane3.h"
%include "Wm5IntrRay3Plane3.h"
%include "Wm5IntrRay3Sphere3.h"
%include "Wm5IntrRay3Sphere3.h"
%include "Wm5IntrRay3Triangle3.h"
%include "Wm5IntrRay3Triangle3.h"
%include "Wm5IntrSegment2Arc2.h"
%include "Wm5IntrSegment2Arc2.h"
%include "Wm5IntrSegment2Box2.h"
%include "Wm5IntrSegment2Box2.h"
%include "Wm5IntrSegment2Circle2.h"
%include "Wm5IntrSegment2Circle2.h"
%include "Wm5IntrSegment2Segment2.h"
%include "Wm5IntrSegment2Segment2.h"
%include "Wm5IntrSegment2Triangle2.h"
%include "Wm5IntrSegment2Triangle2.h"
%include "Wm5IntrSegment3Box3.h"
%include "Wm5IntrSegment3Box3.h"
%include "Wm5IntrSegment3Capsule3.h"
%include "Wm5IntrSegment3Capsule3.h"
%include "Wm5IntrSegment3Cylinder3.h"
%include "Wm5IntrSegment3Cylinder3.h"
%include "Wm5IntrSegment3Ellipsoid3.h"
%include "Wm5IntrSegment3Ellipsoid3.h"
%include "Wm5IntrSegment3Lozenge3.h"
%include "Wm5IntrSegment3Lozenge3.h"
%include "Wm5IntrSegment3Plane3.h"
%include "Wm5IntrSegment3Plane3.h"
%include "Wm5IntrSegment3Sphere3.h"
%include "Wm5IntrSegment3Sphere3.h"
%include "Wm5IntrSegment3Triangle3.h"
%include "Wm5IntrSegment3Triangle3.h"
%include "Wm5IntrSphere3Cone3.h"
%include "Wm5IntrSphere3Cone3.h"
%include "Wm5IntrSphere3Frustum3.h"
%include "Wm5IntrSphere3Frustum3.h"
%include "Wm5IntrSphere3Sphere3.h"
%include "Wm5IntrSphere3Sphere3.h"
%include "Wm5IntrTetrahedron3Tetrahedron3.h"
%include "Wm5IntrTetrahedron3Tetrahedron3.h"
%include "Wm5IntrTriangle2Triangle2.h"
%include "Wm5IntrTriangle2Triangle2.h"
%include "Wm5IntrTriangle3Box3.h"
%include "Wm5IntrTriangle3Box3.h"
%include "Wm5IntrTriangle3Cone3.h"
%include "Wm5IntrTriangle3Cone3.h"
%include "Wm5IntrTriangle3Cylinder3.h"
%include "Wm5IntrTriangle3Cylinder3.h"
%include "Wm5IntrTriangle3Sphere3.h"
%include "Wm5IntrTriangle3Sphere3.h"
%include "Wm5IntrTriangle3Triangle3.h"
%include "Wm5IntrTriangle3Triangle3.h"

%include "Wm5QuadricSurface.h"
%include "Wm5Quaternion.h"
%include "Wm5Query.h"

%include "Wm5Integer.h"

%include "Wm5Query2.h"
%include "Wm5Query2Filtered.h"
%include "Wm5Query2Int64.h"
%include "Wm5Query2Integer.h"
%include "Wm5Query2Rational.h"

%include "Wm5Query3.h"
%include "Wm5Query3Filtered.h"
%include "Wm5Query3Int64.h"
%include "Wm5Query3Integer.h"
%include "Wm5Query3Rational.h"

%include "Wm5Float3.h"
%include "Wm5HPoint.h"
%include "Wm5AVector.h"
%include "Wm5APoint.h"
%include "Wm5HPlane.h"

%include "Wm5Matrix2.h"
%include "Wm5Matrix3.h"
%include "Wm5Matrix4.h"

%include "Wm5GMatrix.h"
%include "Wm5Matrix2.h"
%include "Wm5Matrix3.h"
%include "Wm5Matrix4.h"
%include "Wm5HMatrix.h"

%include "Wm5GraphicsLIB.h"
%include "Wm5Math.h"
%include "Wm5Transform.h"

// Ignore the nested struct ::Information. Both Vector2 and Vector3
// have it, but since SWIG redefines nested structs as global, 
// we get a name clash. Not wanting to modify the original
// source, let's instead safely ignore ::Information data memeber
// and the methods that use it.
%ignore Wm5::Vector2<double>::Information;
%ignore Wm5::Vector2<double>::GetInformation;
%ignore Wm5::Vector2<float>::Information;
%ignore Wm5::Vector2<float>::GetInformation;
%ignore Wm5::Vector3<double>::Information;
%ignore Wm5::Vector3<double>::GetInformation;
%ignore Wm5::Vector3<float>::Information;
%ignore Wm5::Vector3<float>::GetInformation;
%ignore Wm5::Vector4<double>::Information;
%ignore Wm5::Vector4<double>::GetInformation;
%ignore Wm5::Vector4<float>::Information;
%ignore Wm5::Vector4<float>::GetInformation;

// "Instantiate" template in target language.
%template(Arc2d) Wm5::Arc2<double>;
%template(Arc2f) Wm5::Arc2<float>;

%template(AxisAlignedBox2d) Wm5::AxisAlignedBox2<double>;
%template(AxisAlignedBox2f) Wm5::AxisAlignedBox2<float>;
%template(AxisAlignedBox3d) Wm5::AxisAlignedBox3<double>;
%template(AxisAlignedBox3f) Wm5::AxisAlignedBox3<float>;


%template(Box2d) Wm5::Box2<double>;
%template(Box2f) Wm5::Box2<float>;
%template(Box3d) Wm5::Box3<double>;
%template(Box3f) Wm5::Box3<float>;
%template(Capsule3d) Wm5::Capsule3<double>;
%template(Capsule3f) Wm5::Capsule3<float>;
%template(Circle2d) Wm5::Circle2<double>;
%template(Circle2f) Wm5::Circle2<float>;
%template(Circle3d) Wm5::Circle3<double>;
%template(Circle3f) Wm5::Circle3<float>;
%template(Cone3d) Wm5::Cone3<double>;
%template(Cone3f) Wm5::Cone3<float>;
%template(ConformalMapd) Wm5::ConformalMap<double>;
%template(ConformalMapf) Wm5::ConformalMap<float>;

%template(ContEllipse2MinCRd) Wm5::ContEllipse2MinCR<double>;
%template(ContEllipse2MinCRf) Wm5::ContEllipse2MinCR<float>;
%template(ContEllipsoid3MinCRd) Wm5::ContEllipsoid3MinCR<double>;
%template(ContEllipsoid3MinCRf) Wm5::ContEllipsoid3MinCR<float>;
/*
%template(ConvexHull1d) Wm5::ConvexHull1<double>;
%template(ConvexHull1f) Wm5::ConvexHull1<float>;
%template(ConvexHull2d) Wm5::ConvexHull2<double>;
%template(ConvexHull2f) Wm5::ConvexHull2<float>;
%template(ConvexHull3d) Wm5::ConvexHull3<double>;
%template(ConvexHull3f) Wm5::ConvexHull3<float>;
%template(ConvexHulld) Wm5::ConvexHull<double>;
%template(ConvexHullf) Wm5::ConvexHull<float>;
*/

%template(Polynomial1d) Wm5::Polynomial1<double>;
%template(Polynomial1f) Wm5::Polynomial1<float>;
%template(PolynomialCurve2d) Wm5::PolynomialCurve2<double>;
%template(PolynomialCurve2f) Wm5::PolynomialCurve2<float>;
%template(PolynomialCurve3d) Wm5::PolynomialCurve3<double>;
%template(PolynomialCurve3f) Wm5::PolynomialCurve3<float>;
%template(PolynomialRootsd) Wm5::PolynomialRoots<double>;
%template(PolynomialRootsf) Wm5::PolynomialRoots<float>;
%template(PolynomialRootsRd) Wm5::PolynomialRootsR<double>;
%template(PolynomialRootsRf) Wm5::PolynomialRootsR<float>;
%template(PolynomialCurve3d) Wm5::PolynomialCurve3<double>;
%template(PolynomialCurve3f) Wm5::PolynomialCurve3<float>;

%template(BezierCurve2d) Wm5::BezierCurve2<double>;
%template(BezierCurve2f) Wm5::BezierCurve2<float>;
%template(BezierCurve3d) Wm5::BezierCurve3<double>;
%template(BezierCurve3f) Wm5::BezierCurve3<float>;
%template(Bisect1d) Wm5::Bisect1<double>;
%template(Bisect1f) Wm5::Bisect1<float>;
%template(Bisect2d) Wm5::Bisect2<double>;
%template(Bisect2f) Wm5::Bisect2<float>;
%template(Bisect3d) Wm5::Bisect3<double>;
%template(Bisect3f) Wm5::Bisect3<float>;
%template(BoxManagerd) Wm5::BoxManager<double>;
%template(BoxManagerf) Wm5::BoxManager<float>;
%template(BrentsMethodd) Wm5::BrentsMethod<double>;
%template(BrentsMethodf) Wm5::BrentsMethod<float>;

%template(CubicPolynomialCurve2d) Wm5::CubicPolynomialCurve2<double>;
%template(CubicPolynomialCurve2f) Wm5::CubicPolynomialCurve2<float>;
%template(CubicPolynomialCurve3d) Wm5::CubicPolynomialCurve3<double>;
%template(CubicPolynomialCurve3f) Wm5::CubicPolynomialCurve3<float>;
%template(Curve2d) Wm5::Curve2<double>;
%template(Curve2f) Wm5::Curve2<float>;
%template(Curve3d) Wm5::Curve3<double>;
%template(Curve3f) Wm5::Curve3<float>;

%template(Cylinder3d) Wm5::Cylinder3<double>;
%template(Cylinder3f) Wm5::Cylinder3<float>;
//%template(CylinderFit3d) Wm5::CylinderFit3<double>;
//%template(CylinderFit3f) Wm5::CylinderFit3<float>;
//%template(Delaunay1d) Wm5::Delaunay1<double>;
//%template(Delaunay1f) Wm5::Delaunay1<float>;
//%template(Delaunay2d) Wm5::Delaunay2<double>;
//%template(Delaunay2f) Wm5::Delaunay2<float>;
//%template(Delaunay3d) Wm5::Delaunay3<double>;
//%template(Delaunay3f) Wm5::Delaunay3<float>;
//%template(Delaunayd) Wm5::Delaunay<double>;
//%template(Delaunayf) Wm5::Delaunay<float>;

%template(Ellipse2d) Wm5::Ellipse2<double>;
%template(Ellipse2f) Wm5::Ellipse2<float>;
%template(Ellipse3d) Wm5::Ellipse3<double>;
%template(Ellipse3f) Wm5::Ellipse3<float>;
%template(Ellipsoid3d) Wm5::Ellipsoid3<double>;
%template(Ellipsoid3f) Wm5::Ellipsoid3<float>;
%template(Frustum3d) Wm5::Frustum3<double>;
%template(Frustum3f) Wm5::Frustum3<float>;
%template(Line2d) Wm5::Line2<double>;
%template(Line2f) Wm5::Line2<float>;
%template(Line3d) Wm5::Line3<double>;
%template(Line3f) Wm5::Line3<float>;
%template(Lozenge3d) Wm5::Lozenge3<double>;
%template(Lozenge3f) Wm5::Lozenge3<float>;

%template(Matrix2d) Wm5::Matrix2<double>;
%template(Matrix2f) Wm5::Matrix2<float>;
//%template(Matrix3d) Wm5::Matrix3<double>;
//%template(Matrix3f) Wm5::Matrix3<float>;
//%template(Matrix4d) Wm5::Matrix4<double>;
//%template(Matrix4f) Wm5::Matrix4<float>;

//%template(GMatrixd) Wm5::GMatrix<double>;
//%template(GMatrixf) Wm5::GMatrix<float>;
//%template(Matrix2d) Wm5::Matrix2<double>;
//%template(Matrix2f) Wm5::Matrix2<float>;
//%template(Matrix3d) Wm5::Matrix3<double>;
//%template(Matrix3f) Wm5::Matrix3<float>;

%template(Plane3d) Wm5::Plane3<double>;
%template(Plane3f) Wm5::Plane3<float>;
%template(Ray2d) Wm5::Ray2<double>;
%template(Ray2f) Wm5::Ray2<float>;
%template(Ray3d) Wm5::Ray3<double>;
%template(Ray3f) Wm5::Ray3<float>;
%template(Rectangle3d) Wm5::Rectangle3<double>;
%template(Rectangle3f) Wm5::Rectangle3<float>;
%template(Segment2d) Wm5::Segment2<double>;
%template(Segment2f) Wm5::Segment2<float>;
%template(Segment3d) Wm5::Segment3<double>;
%template(Segment3f) Wm5::Segment3<float>;
%template(Sphere3d) Wm5::Sphere3<double>;
%template(Sphere3f) Wm5::Sphere3<float>;
%template(Tetrahedron3d) Wm5::Tetrahedron3<double>;
%template(Tetrahedron3f) Wm5::Tetrahedron3<float>;
%template(Torus3d) Wm5::Torus3<double>;
%template(Torus3f) Wm5::Torus3<float>;
%template(Triangle2d) Wm5::Triangle2<double>;
%template(Triangle2f) Wm5::Triangle2<float>;
%template(Triangle3d) Wm5::Triangle3<double>;
%template(Triangle3f) Wm5::Triangle3<float>;
%template(Tuple2d) Wm5::Tuple<2, double>;
%template(Tuple2f) Wm5::Tuple<2, float>;
%template(Tuple3d) Wm5::Tuple<3, double>;
%template(Tuple3f) Wm5::Tuple<3, float>;
%template(GVectord) Wm5::GVector<double>;
%template(GVectorf) Wm5::GVector<float>;
%template(Vector2d) Wm5::Vector2<double>;
%template(Vector2f) Wm5::Vector2<float>;
%template(Vector3d) Wm5::Vector3<double>;
%template(Vector3f) Wm5::Vector3<float>;
%template(Vector4d) Wm5::Vector4<double>;
%template(Vector4f) Wm5::Vector4<float>;

////////////////////
// B-splines
////////////////////
%template(BSplineBasisd) Wm5::BSplineBasis<double>;
%template(BSplineBasisf) Wm5::BSplineBasis<float>;
%template(BSplineCurve2d) Wm5::BSplineCurve2<double>;
%template(BSplineCurve2f) Wm5::BSplineCurve2<float>;
%template(BSplineCurve3d) Wm5::BSplineCurve3<double>;
%template(BSplineCurve3f) Wm5::BSplineCurve3<float>;
%template(BSplineCurveFitd) Wm5::BSplineCurveFit<double>;
%template(BSplineCurveFitf) Wm5::BSplineCurveFit<float>;
%template(BSplineFitBasisd) Wm5::BSplineFitBasis<double>;
%template(BSplineFitBasisf) Wm5::BSplineFitBasis<float>;
%template(BSplineGeodesicd) Wm5::BSplineGeodesic<double>;
%template(BSplineGeodesicf) Wm5::BSplineGeodesic<float>;
%template(BSplineRectangled) Wm5::BSplineRectangle<double>;
%template(BSplineRectanglef) Wm5::BSplineRectangle<float>;
%template(BSplineReduction2d) Wm5::BSplineReduction<double, Wm5::Vector2<double> >;
%template(BSplineReduction2f) Wm5::BSplineReduction<float, Wm5::Vector2<float> >;
%template(BSplineReduction3d) Wm5::BSplineReduction<double, Wm5::Vector3<double> >;
%template(BSplineReduction3f) Wm5::BSplineReduction<float, Wm5::Vector3<float> >;
%template(BSplineSurfaceFitd) Wm5::BSplineSurfaceFit<double>;
%template(BSplineSurfaceFitf) Wm5::BSplineSurfaceFit<float>;
%template(BSplineVolumed) Wm5::BSplineVolume<double>;
%template(BSplineVolumef) Wm5::BSplineVolume<float>;

////////////////////
// Distances
////////////////////
%template(Distance2d) Wm5::Distance<double, Wm5::Vector2<double> >;
%template(Distance2f) Wm5::Distance<float, Wm5::Vector2<float> >;
%template(Distance3d) Wm5::Distance<double, Wm5::Vector3<double> >;
%template(Distance3f) Wm5::Distance<float, Wm5::Vector3<float> >;
%template(DistCircle3Circle3d) Wm5::DistCircle3Circle3<double>;
%template(DistCircle3Circle3f) Wm5::DistCircle3Circle3<float>;
%template(DistLine2Line2d) Wm5::DistLine2Line2<double>;
%template(DistLine2Line2f) Wm5::DistLine2Line2<float>;
%template(DistLine2Ray2d) Wm5::DistLine2Ray2<double>;
%template(DistLine2Ray2f) Wm5::DistLine2Ray2<float>;
%template(DistLine2Segment2d) Wm5::DistLine2Segment2<double>;
%template(DistLine2Segment2f) Wm5::DistLine2Segment2<float>;
%template(DistLine3Box3d) Wm5::DistLine3Box3<double>;
%template(DistLine3Box3f) Wm5::DistLine3Box3<float>;
%template(DistLine3Circle3d) Wm5::DistLine3Circle3<double>;
%template(DistLine3Circle3f) Wm5::DistLine3Circle3<float>;
%template(DistLine3Line3d) Wm5::DistLine3Line3<double>;
%template(DistLine3Line3f) Wm5::DistLine3Line3<float>;
%template(DistLine3Ray3d) Wm5::DistLine3Ray3<double>;
%template(DistLine3Ray3f) Wm5::DistLine3Ray3<float>;
%template(DistLine3Rectangle3d) Wm5::DistLine3Rectangle3<double>;
%template(DistLine3Rectangle3f) Wm5::DistLine3Rectangle3<float>;
%template(DistLine3Segment3d) Wm5::DistLine3Segment3<double>;
%template(DistLine3Segment3f) Wm5::DistLine3Segment3<float>;
%template(DistLine3Triangle3d) Wm5::DistLine3Triangle3<double>;
%template(DistLine3Triangle3f) Wm5::DistLine3Triangle3<float>;
%template(DistPoint2Box2d) Wm5::DistPoint2Box2<double>;
%template(DistPoint2Box2f) Wm5::DistPoint2Box2<float>;
%template(DistPoint2Ellipse2d) Wm5::DistPoint2Ellipse2<double>;
%template(DistPoint2Ellipse2f) Wm5::DistPoint2Ellipse2<float>;
%template(DistPoint2Line2d) Wm5::DistPoint2Line2<double>;
%template(DistPoint2Line2f) Wm5::DistPoint2Line2<float>;
%template(DistPoint2Ray2d) Wm5::DistPoint2Ray2<double>;
%template(DistPoint2Ray2f) Wm5::DistPoint2Ray2<float>;
%template(DistPoint2Segment2d) Wm5::DistPoint2Segment2<double>;
%template(DistPoint2Segment2f) Wm5::DistPoint2Segment2<float>;
%template(DistPoint3Box3d) Wm5::DistPoint3Box3<double>;
%template(DistPoint3Box3f) Wm5::DistPoint3Box3<float>;
%template(DistPoint3Circle3d) Wm5::DistPoint3Circle3<double>;
%template(DistPoint3Circle3f) Wm5::DistPoint3Circle3<float>;
%template(DistPoint3Ellipsoid3d) Wm5::DistPoint3Ellipsoid3<double>;
%template(DistPoint3Ellipsoid3f) Wm5::DistPoint3Ellipsoid3<float>;
%template(DistPoint3Frustum3d) Wm5::DistPoint3Frustum3<double>;
%template(DistPoint3Frustum3f) Wm5::DistPoint3Frustum3<float>;
%template(DistPoint3Line3d) Wm5::DistPoint3Line3<double>;
%template(DistPoint3Line3f) Wm5::DistPoint3Line3<float>;
%template(DistPoint3Plane3d) Wm5::DistPoint3Plane3<double>;
%template(DistPoint3Plane3f) Wm5::DistPoint3Plane3<float>;
%template(DistPoint3Ray3d) Wm5::DistPoint3Ray3<double>;
%template(DistPoint3Ray3f) Wm5::DistPoint3Ray3<float>;
%template(DistPoint3Rectangle3d) Wm5::DistPoint3Rectangle3<double>;
%template(DistPoint3Rectangle3f) Wm5::DistPoint3Rectangle3<float>;
%template(DistPoint3Segment3d) Wm5::DistPoint3Segment3<double>;
%template(DistPoint3Segment3f) Wm5::DistPoint3Segment3<float>;
%template(DistPoint3Tetrahedron3d) Wm5::DistPoint3Tetrahedron3<double>;
%template(DistPoint3Tetrahedron3f) Wm5::DistPoint3Tetrahedron3<float>;
%template(DistPoint3Triangle3d) Wm5::DistPoint3Triangle3<double>;
%template(DistPoint3Triangle3f) Wm5::DistPoint3Triangle3<float>;
%template(DistSegment2Segment2d) Wm5::DistSegment2Segment2<double>;
%template(DistSegment2Segment2f) Wm5::DistSegment2Segment2<float>;
%template(DistSegment3Segment3d) Wm5::DistSegment3Segment3<double>;
%template(DistSegment3Segment3f) Wm5::DistSegment3Segment3<float>;

////////////////////
// Interpolations
////////////////////
%template(IntpAkima1d) Wm5::IntpAkima1<double>;
%template(IntpAkima1f) Wm5::IntpAkima1<float>;
%template(IntpAkimaNonuniform1d) Wm5::IntpAkimaNonuniform1<double>;
%template(IntpAkimaNonuniform1f) Wm5::IntpAkimaNonuniform1<float>;
%template(IntpAkimaUniform1d) Wm5::IntpAkimaUniform1<double>;
%template(IntpAkimaUniform1f) Wm5::IntpAkimaUniform1<float>;
%template(IntpAkimaUniform2d) Wm5::IntpAkimaUniform2<double>;
%template(IntpAkimaUniform2f) Wm5::IntpAkimaUniform2<float>;
%template(IntpAkimaUniform3d) Wm5::IntpAkimaUniform3<double>;
%template(IntpAkimaUniform3f) Wm5::IntpAkimaUniform3<float>;
%template(IntpBSplineUniform1d) Wm5::IntpBSplineUniform1<double>;
%template(IntpBSplineUniform1f) Wm5::IntpBSplineUniform1<float>;
%template(IntpBSplineUniform2d) Wm5::IntpBSplineUniform2<double>;
%template(IntpBSplineUniform2f) Wm5::IntpBSplineUniform2<float>;
%template(IntpBSplineUniform3d) Wm5::IntpBSplineUniform3<double>;
%template(IntpBSplineUniform3f) Wm5::IntpBSplineUniform3<float>;
%template(IntpBSplineUniform4d) Wm5::IntpBSplineUniform4<double>;
%template(IntpBSplineUniform4f) Wm5::IntpBSplineUniform4<float>;
%template(IntpBSplineUniformd) Wm5::IntpBSplineUniform<double>;
%template(IntpBSplineUniformf) Wm5::IntpBSplineUniform<float>;
%template(IntpBSplineUniformNd) Wm5::IntpBSplineUniformN<double>;
%template(IntpBSplineUniformNf) Wm5::IntpBSplineUniformN<float>;
%template(IntpBicubic2d) Wm5::IntpBicubic2<double>;
%template(IntpBicubic2f) Wm5::IntpBicubic2<float>;
%template(IntpBilinear2d) Wm5::IntpBilinear2<double>;
%template(IntpBilinear2f) Wm5::IntpBilinear2<float>;
/*
%template(IntpLinearNonuniform2d) Wm5::IntpLinearNonuniform2<double>;
%template(IntpLinearNonuniform2f) Wm5::IntpLinearNonuniform2<float>;
%template(IntpLinearNonuniform3d) Wm5::IntpLinearNonuniform3<double>;
%template(IntpLinearNonuniform3f) Wm5::IntpLinearNonuniform3<float>;
%template(IntpQdrNonuniform2d) Wm5::IntpQdrNonuniform2<double>;
%template(IntpQdrNonuniform2f) Wm5::IntpQdrNonuniform2<float>;
%template(IntpSphere2d) Wm5::IntpSphere2<double>;
%template(IntpSphere2f) Wm5::IntpSphere2<float>;
%template(IntpThinPlateSpline2d) Wm5::IntpThinPlateSpline2<double>;
%template(IntpThinPlateSpline2f) Wm5::IntpThinPlateSpline2<float>;
%template(IntpThinPlateSpline3d) Wm5::IntpThinPlateSpline3<double>;
%template(IntpThinPlateSpline3f) Wm5::IntpThinPlateSpline3<float>;
*/
%template(IntpTricubic3d) Wm5::IntpTricubic3<double>;
%template(IntpTricubic3f) Wm5::IntpTricubic3<float>;
%template(IntpTrilinear3d) Wm5::IntpTrilinear3<double>;
%template(IntpTrilinear3f) Wm5::IntpTrilinear3<float>;
/*
%template(IntpVectorField2d) Wm5::IntpVectorField2<double>;
%template(IntpVectorField2f) Wm5::IntpVectorField2<float>;
*/

////////////////////
// Intersectors
////////////////////
%template(Intersector2d) Wm5::Intersector<double, Wm5::Vector2<double> >;
%template(Intersector2f) Wm5::Intersector<float, Wm5::Vector2<float> >;
%template(Intersector3d) Wm5::Intersector<double, Wm5::Vector3<double> >;
%template(Intersector3f) Wm5::Intersector<float, Wm5::Vector3<float> >;
%template(IntrArc2Arc2d) Wm5::IntrArc2Arc2<double>;
%template(IntrArc2Arc2f) Wm5::IntrArc2Arc2<float>;
%template(IntrArc2Circle2d) Wm5::IntrArc2Circle2<double>;
%template(IntrArc2Circle2f) Wm5::IntrArc2Circle2<float>;
%template(IntrBox2Box2d) Wm5::IntrBox2Box2<double>;
%template(IntrBox2Box2f) Wm5::IntrBox2Box2<float>;
%template(IntrBox2Circle2d) Wm5::IntrBox2Circle2<double>;
%template(IntrBox2Circle2f) Wm5::IntrBox2Circle2<float>;
%template(IntrBox3Box3d) Wm5::IntrBox3Box3<double>;
%template(IntrBox3Box3f) Wm5::IntrBox3Box3<float>;
%template(IntrBox3Frustum3d) Wm5::IntrBox3Frustum3<double>;
%template(IntrBox3Frustum3f) Wm5::IntrBox3Frustum3<float>;
%template(IntrBox3Sphere3d) Wm5::IntrBox3Sphere3<double>;
%template(IntrBox3Sphere3f) Wm5::IntrBox3Sphere3<float>;
%template(IntrCapsule3Capsule3d) Wm5::IntrCapsule3Capsule3<double>;
%template(IntrCapsule3Capsule3f) Wm5::IntrCapsule3Capsule3<float>;
%template(IntrCircle2Circle2d) Wm5::IntrCircle2Circle2<double>;
%template(IntrCircle2Circle2f) Wm5::IntrCircle2Circle2<float>;
%template(IntrCircle3Plane3d) Wm5::IntrCircle3Plane3<double>;
%template(IntrCircle3Plane3f) Wm5::IntrCircle3Plane3<float>;
%template(IntrEllipse2Ellipse2d) Wm5::IntrEllipse2Ellipse2<double>;
%template(IntrEllipse2Ellipse2f) Wm5::IntrEllipse2Ellipse2<float>;
%template(IntrEllipsoid3Ellipsoid3d) Wm5::IntrEllipsoid3Ellipsoid3<double>;
%template(IntrEllipsoid3Ellipsoid3f) Wm5::IntrEllipsoid3Ellipsoid3<float>;
%template(IntrHalfspace3Box3d) Wm5::IntrHalfspace3Box3<double>;
%template(IntrHalfspace3Box3f) Wm5::IntrHalfspace3Box3<float>;
%template(IntrHalfspace3Segment3d) Wm5::IntrHalfspace3Segment3<double>;
%template(IntrHalfspace3Segment3f) Wm5::IntrHalfspace3Segment3<float>;
%template(IntrHalfspace3Sphere3d) Wm5::IntrHalfspace3Sphere3<double>;
%template(IntrHalfspace3Sphere3f) Wm5::IntrHalfspace3Sphere3<float>;
%template(IntrHalfspace3Triangle3d) Wm5::IntrHalfspace3Triangle3<double>;
%template(IntrHalfspace3Triangle3f) Wm5::IntrHalfspace3Triangle3<float>;
%template(IntrLine2Arc2d) Wm5::IntrLine2Arc2<double>;
%template(IntrLine2Arc2f) Wm5::IntrLine2Arc2<float>;
%template(IntrLine2Box2d) Wm5::IntrLine2Box2<double>;
%template(IntrLine2Box2f) Wm5::IntrLine2Box2<float>;
%template(IntrLine2Circle2d) Wm5::IntrLine2Circle2<double>;
%template(IntrLine2Circle2f) Wm5::IntrLine2Circle2<float>;
%template(IntrLine2Line2d) Wm5::IntrLine2Line2<double>;
%template(IntrLine2Line2f) Wm5::IntrLine2Line2<float>;
%template(IntrLine2Ray2d) Wm5::IntrLine2Ray2<double>;
%template(IntrLine2Ray2f) Wm5::IntrLine2Ray2<float>;
%template(IntrLine2Segment2d) Wm5::IntrLine2Segment2<double>;
%template(IntrLine2Segment2f) Wm5::IntrLine2Segment2<float>;
%template(IntrLine2Triangle2d) Wm5::IntrLine2Triangle2<double>;
%template(IntrLine2Triangle2f) Wm5::IntrLine2Triangle2<float>;
%template(IntrLine3Box3d) Wm5::IntrLine3Box3<double>;
%template(IntrLine3Box3f) Wm5::IntrLine3Box3<float>;
%template(IntrLine3Capsule3d) Wm5::IntrLine3Capsule3<double>;
%template(IntrLine3Capsule3f) Wm5::IntrLine3Capsule3<float>;
%template(IntrLine3Cone3d) Wm5::IntrLine3Cone3<double>;
%template(IntrLine3Cone3f) Wm5::IntrLine3Cone3<float>;
%template(IntrLine3Cylinder3d) Wm5::IntrLine3Cylinder3<double>;
%template(IntrLine3Cylinder3f) Wm5::IntrLine3Cylinder3<float>;
%template(IntrLine3Ellipsoid3d) Wm5::IntrLine3Ellipsoid3<double>;
%template(IntrLine3Ellipsoid3f) Wm5::IntrLine3Ellipsoid3<float>;
%template(IntrLine3Lozenge3d) Wm5::IntrLine3Lozenge3<double>;
%template(IntrLine3Lozenge3f) Wm5::IntrLine3Lozenge3<float>;
%template(IntrLine3Plane3d) Wm5::IntrLine3Plane3<double>;
%template(IntrLine3Plane3f) Wm5::IntrLine3Plane3<float>;
%template(IntrLine3Sphere3d) Wm5::IntrLine3Sphere3<double>;
%template(IntrLine3Sphere3f) Wm5::IntrLine3Sphere3<float>;
%template(IntrLine3Torus3d) Wm5::IntrLine3Torus3<double>;
%template(IntrLine3Torus3f) Wm5::IntrLine3Torus3<float>;
%template(IntrLine3Triangle3d) Wm5::IntrLine3Triangle3<double>;
%template(IntrLine3Triangle3f) Wm5::IntrLine3Triangle3<float>;
%template(IntrLozenge3Lozenge3d) Wm5::IntrLozenge3Lozenge3<double>;
%template(IntrLozenge3Lozenge3f) Wm5::IntrLozenge3Lozenge3<float>;
%template(IntrPlane3Box3d) Wm5::IntrPlane3Box3<double>;
%template(IntrPlane3Box3f) Wm5::IntrPlane3Box3<float>;
%template(IntrPlane3Capsule3d) Wm5::IntrPlane3Capsule3<double>;
%template(IntrPlane3Capsule3f) Wm5::IntrPlane3Capsule3<float>;
%template(IntrPlane3Cylinder3d) Wm5::IntrPlane3Cylinder3<double>;
%template(IntrPlane3Cylinder3f) Wm5::IntrPlane3Cylinder3<float>;
%template(IntrPlane3Ellipsoid3d) Wm5::IntrPlane3Ellipsoid3<double>;
%template(IntrPlane3Ellipsoid3f) Wm5::IntrPlane3Ellipsoid3<float>;
%template(IntrPlane3Lozenge3d) Wm5::IntrPlane3Lozenge3<double>;
%template(IntrPlane3Lozenge3f) Wm5::IntrPlane3Lozenge3<float>;
%template(IntrPlane3Plane3d) Wm5::IntrPlane3Plane3<double>;
%template(IntrPlane3Plane3f) Wm5::IntrPlane3Plane3<float>;
%template(IntrPlane3Sphere3d) Wm5::IntrPlane3Sphere3<double>;
%template(IntrPlane3Sphere3f) Wm5::IntrPlane3Sphere3<float>;
%template(IntrPlane3Triangle3d) Wm5::IntrPlane3Triangle3<double>;
%template(IntrPlane3Triangle3f) Wm5::IntrPlane3Triangle3<float>;
%template(IntrRay2Arc2d) Wm5::IntrRay2Arc2<double>;
%template(IntrRay2Arc2f) Wm5::IntrRay2Arc2<float>;
%template(IntrRay2Box2d) Wm5::IntrRay2Box2<double>;
%template(IntrRay2Box2f) Wm5::IntrRay2Box2<float>;
%template(IntrRay2Circle2d) Wm5::IntrRay2Circle2<double>;
%template(IntrRay2Circle2f) Wm5::IntrRay2Circle2<float>;
%template(IntrRay2Ray2d) Wm5::IntrRay2Ray2<double>;
%template(IntrRay2Ray2f) Wm5::IntrRay2Ray2<float>;
%template(IntrRay2Segment2d) Wm5::IntrRay2Segment2<double>;
%template(IntrRay2Segment2f) Wm5::IntrRay2Segment2<float>;
%template(IntrRay2Triangle2d) Wm5::IntrRay2Triangle2<double>;
%template(IntrRay2Triangle2f) Wm5::IntrRay2Triangle2<float>;
%template(IntrRay3Box3d) Wm5::IntrRay3Box3<double>;
%template(IntrRay3Box3f) Wm5::IntrRay3Box3<float>;
%template(IntrRay3Capsule3d) Wm5::IntrRay3Capsule3<double>;
%template(IntrRay3Capsule3f) Wm5::IntrRay3Capsule3<float>;
%template(IntrRay3Cylinder3d) Wm5::IntrRay3Cylinder3<double>;
%template(IntrRay3Cylinder3f) Wm5::IntrRay3Cylinder3<float>;
%template(IntrRay3Ellipsoid3d) Wm5::IntrRay3Ellipsoid3<double>;
%template(IntrRay3Ellipsoid3f) Wm5::IntrRay3Ellipsoid3<float>;
%template(IntrRay3Lozenge3d) Wm5::IntrRay3Lozenge3<double>;
%template(IntrRay3Lozenge3f) Wm5::IntrRay3Lozenge3<float>;
%template(IntrRay3Plane3d) Wm5::IntrRay3Plane3<double>;
%template(IntrRay3Plane3f) Wm5::IntrRay3Plane3<float>;
%template(IntrRay3Sphere3d) Wm5::IntrRay3Sphere3<double>;
%template(IntrRay3Sphere3f) Wm5::IntrRay3Sphere3<float>;
%template(IntrRay3Triangle3d) Wm5::IntrRay3Triangle3<double>;
%template(IntrRay3Triangle3f) Wm5::IntrRay3Triangle3<float>;
%template(IntrSegment2Arc2d) Wm5::IntrSegment2Arc2<double>;
%template(IntrSegment2Arc2f) Wm5::IntrSegment2Arc2<float>;
%template(IntrSegment2Box2d) Wm5::IntrSegment2Box2<double>;
%template(IntrSegment2Box2f) Wm5::IntrSegment2Box2<float>;
%template(IntrSegment2Circle2d) Wm5::IntrSegment2Circle2<double>;
%template(IntrSegment2Circle2f) Wm5::IntrSegment2Circle2<float>;
%template(IntrSegment2Segment2d) Wm5::IntrSegment2Segment2<double>;
%template(IntrSegment2Segment2f) Wm5::IntrSegment2Segment2<float>;
%template(IntrSegment2Triangle2d) Wm5::IntrSegment2Triangle2<double>;
%template(IntrSegment2Triangle2f) Wm5::IntrSegment2Triangle2<float>;
%template(IntrSegment3Box3d) Wm5::IntrSegment3Box3<double>;
%template(IntrSegment3Box3f) Wm5::IntrSegment3Box3<float>;
%template(IntrSegment3Capsule3d) Wm5::IntrSegment3Capsule3<double>;
%template(IntrSegment3Capsule3f) Wm5::IntrSegment3Capsule3<float>;
%template(IntrSegment3Cylinder3d) Wm5::IntrSegment3Cylinder3<double>;
%template(IntrSegment3Cylinder3f) Wm5::IntrSegment3Cylinder3<float>;
%template(IntrSegment3Ellipsoid3d) Wm5::IntrSegment3Ellipsoid3<double>;
%template(IntrSegment3Ellipsoid3f) Wm5::IntrSegment3Ellipsoid3<float>;
%template(IntrSegment3Lozenge3d) Wm5::IntrSegment3Lozenge3<double>;
%template(IntrSegment3Lozenge3f) Wm5::IntrSegment3Lozenge3<float>;
%template(IntrSegment3Plane3d) Wm5::IntrSegment3Plane3<double>;
%template(IntrSegment3Plane3f) Wm5::IntrSegment3Plane3<float>;
%template(IntrSegment3Sphere3d) Wm5::IntrSegment3Sphere3<double>;
%template(IntrSegment3Sphere3f) Wm5::IntrSegment3Sphere3<float>;
%template(IntrSegment3Triangle3d) Wm5::IntrSegment3Triangle3<double>;
%template(IntrSegment3Triangle3f) Wm5::IntrSegment3Triangle3<float>;
%template(IntrSphere3Cone3d) Wm5::IntrSphere3Cone3<double>;
%template(IntrSphere3Cone3f) Wm5::IntrSphere3Cone3<float>;
%template(IntrSphere3Frustum3d) Wm5::IntrSphere3Frustum3<double>;
%template(IntrSphere3Frustum3f) Wm5::IntrSphere3Frustum3<float>;
%template(IntrSphere3Sphere3d) Wm5::IntrSphere3Sphere3<double>;
%template(IntrSphere3Sphere3f) Wm5::IntrSphere3Sphere3<float>;
%template(IntrTetrahedron3Tetrahedron3d) Wm5::IntrTetrahedron3Tetrahedron3<double>;
%template(IntrTetrahedron3Tetrahedron3f) Wm5::IntrTetrahedron3Tetrahedron3<float>;
%template(IntrTriangle2Triangle2d) Wm5::IntrTriangle2Triangle2<double>;
%template(IntrTriangle2Triangle2f) Wm5::IntrTriangle2Triangle2<float>;
%template(IntrTriangle3Box3d) Wm5::IntrTriangle3Box3<double>;
%template(IntrTriangle3Box3f) Wm5::IntrTriangle3Box3<float>;
%template(IntrTriangle3Cone3d) Wm5::IntrTriangle3Cone3<double>;
%template(IntrTriangle3Cone3f) Wm5::IntrTriangle3Cone3<float>;
%template(IntrTriangle3Cylinder3d) Wm5::IntrTriangle3Cylinder3<double>;
%template(IntrTriangle3Cylinder3f) Wm5::IntrTriangle3Cylinder3<float>;
%template(IntrTriangle3Sphere3d) Wm5::IntrTriangle3Sphere3<double>;
%template(IntrTriangle3Sphere3f) Wm5::IntrTriangle3Sphere3<float>;
%template(IntrTriangle3Triangle3d) Wm5::IntrTriangle3Triangle3<double>;
%template(IntrTriangle3Triangle3f) Wm5::IntrTriangle3Triangle3<float>;

%template(QuadricSurfaced) Wm5::QuadricSurface<double>;
%template(QuadricSurfacef) Wm5::QuadricSurface<float>;
%template(Quaterniond) Wm5::Quaternion<double>;
%template(Quaternionf) Wm5::Quaternion<float>;

%template(Query2d) Wm5::Query2<double>;
%template(Query2f) Wm5::Query2<float>;
%template(Query2Filteredd) Wm5::Query2Filtered<double>;
%template(Query2Filteredf) Wm5::Query2Filtered<float>;
%template(Query2Int64d) Wm5::Query2Int64<double>;
%template(Query2Int64f) Wm5::Query2Int64<float>;
%template(Query2Integerd) Wm5::Query2Integer<double>;
%template(Query2Integerf) Wm5::Query2Integer<float>;
//%template(Query2Rationald) Wm5::Query2Rational<double>;
//%template(Query2Rationalf) Wm5::Query2Rational<float>;

%template(Query3d) Wm5::Query3<double>;
%template(Query3f) Wm5::Query3<float>;
%template(Query3Filteredd) Wm5::Query3Filtered<double>;
%template(Query3Filteredf) Wm5::Query3Filtered<float>;
%template(Query3Int64d) Wm5::Query3Int64<double>;
%template(Query3Int64f) Wm5::Query3Int64<float>;
%template(Query3Integerd) Wm5::Query3Integer<double>;
%template(Query3Integerf) Wm5::Query3Integer<float>;
//%template(Query3Rationald) Wm5::Query3Rational<double>;
//%template(Query3Rationalf) Wm5::Query3Rational<float>;

%template(Mathd) Wm5::Math<double>;
%template(Mathf) Wm5::Math<float>;

// The end.
