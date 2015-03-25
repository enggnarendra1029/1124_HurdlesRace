// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.collision;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.Entity;
import org.andengine.entity.primitive.Line;
import org.andengine.entity.shape.RectangularShape;
import org.andengine.util.adt.transformation.Transformation;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.util.algorithm.collision:
//            ShapeCollisionChecker, LineCollisionChecker

public class RectangularShapeCollisionChecker extends ShapeCollisionChecker
{

    public static final int RECTANGULARSHAPE_VERTEX_COUNT = 4;
    private static final float VERTICES_COLLISION_TMP_A[] = new float[8];
    private static final float VERTICES_COLLISION_TMP_B[] = new float[8];
    private static final float VERTICES_CONTAINS_TMP[] = new float[8];

    public RectangularShapeCollisionChecker()
    {
    }

    public static boolean checkCollision(RectangularShape rectangularshape, Line line)
    {
        fillVertices(rectangularshape, VERTICES_COLLISION_TMP_A);
        LineCollisionChecker.fillVertices(line, VERTICES_COLLISION_TMP_B);
        return ShapeCollisionChecker.checkCollision(VERTICES_COLLISION_TMP_A, 4, VERTICES_COLLISION_TMP_B, 2);
    }

    public static boolean checkCollision(RectangularShape rectangularshape, RectangularShape rectangularshape1)
    {
        fillVertices(rectangularshape, VERTICES_COLLISION_TMP_A);
        fillVertices(rectangularshape1, VERTICES_COLLISION_TMP_B);
        return ShapeCollisionChecker.checkCollision(VERTICES_COLLISION_TMP_A, 4, VERTICES_COLLISION_TMP_B, 4);
    }

    public static boolean checkContains(float f, float f1, float f2, float f3, Transformation transformation, float f4, float f5)
    {
        fillVertices(f, f1, f2, f3, transformation, VERTICES_CONTAINS_TMP);
        return ShapeCollisionChecker.checkContains(VERTICES_CONTAINS_TMP, 4, f4, f5);
    }

    public static boolean checkContains(Entity entity, float f, float f1, float f2, float f3)
    {
        fillVertices(entity.getX(), entity.getY(), f, f1, entity.getLocalToSceneTransformation(), VERTICES_CONTAINS_TMP);
        return ShapeCollisionChecker.checkContains(VERTICES_CONTAINS_TMP, 4, f2, f3);
    }

    public static boolean checkContains(RectangularShape rectangularshape, float f, float f1)
    {
        fillVertices(rectangularshape, VERTICES_CONTAINS_TMP);
        return ShapeCollisionChecker.checkContains(VERTICES_CONTAINS_TMP, 4, f, f1);
    }

    public static void fillVertices(float f, float f1, float f2, float f3, Transformation transformation, float af[])
    {
        float f4 = f + f2;
        float f5 = f1 + f3;
        af[0] = f;
        af[1] = f1;
        af[2] = f4;
        af[3] = f1;
        af[4] = f4;
        af[5] = f5;
        af[6] = f;
        af[7] = f5;
        transformation.transform(af);
    }

    private static void fillVertices(Camera camera, float af[])
    {
        af[0] = camera.getXMin();
        af[1] = camera.getYMin();
        af[2] = camera.getXMax();
        af[3] = camera.getYMin();
        af[4] = camera.getXMax();
        af[5] = camera.getYMax();
        af[6] = camera.getXMin();
        af[7] = camera.getYMax();
        MathUtils.rotateAroundCenter(af, camera.getRotation(), camera.getCenterX(), camera.getCenterY());
    }

    public static void fillVertices(RectangularShape rectangularshape, float af[])
    {
        fillVertices(0.0F, 0.0F, rectangularshape.getWidth(), rectangularshape.getHeight(), rectangularshape.getLocalToSceneTransformation(), af);
    }

    public static boolean isVisible(Camera camera, float f, float f1, float f2, float f3, Transformation transformation)
    {
        fillVertices(camera, VERTICES_COLLISION_TMP_A);
        fillVertices(f, f1, f2, f3, transformation, VERTICES_COLLISION_TMP_B);
        return ShapeCollisionChecker.checkCollision(VERTICES_COLLISION_TMP_A, 4, VERTICES_COLLISION_TMP_B, 4);
    }

    public static boolean isVisible(Camera camera, Line line)
    {
        fillVertices(camera, VERTICES_COLLISION_TMP_A);
        LineCollisionChecker.fillVertices(line, VERTICES_COLLISION_TMP_B);
        return ShapeCollisionChecker.checkCollision(VERTICES_COLLISION_TMP_A, 4, VERTICES_COLLISION_TMP_B, 2);
    }

    public static boolean isVisible(Camera camera, RectangularShape rectangularshape)
    {
        fillVertices(camera, VERTICES_COLLISION_TMP_A);
        fillVertices(rectangularshape, VERTICES_COLLISION_TMP_B);
        return ShapeCollisionChecker.checkCollision(VERTICES_COLLISION_TMP_A, 4, VERTICES_COLLISION_TMP_B, 4);
    }

}
