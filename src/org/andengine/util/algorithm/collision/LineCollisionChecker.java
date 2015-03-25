// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.algorithm.collision;

import org.andengine.entity.primitive.Line;
import org.andengine.util.adt.transformation.Transformation;

// Referenced classes of package org.andengine.util.algorithm.collision:
//            ShapeCollisionChecker, BaseCollisionChecker

public class LineCollisionChecker extends ShapeCollisionChecker
{

    public static final int LINE_VERTEX_COUNT = 2;

    public LineCollisionChecker()
    {
    }

    public static boolean checkLineCollision(float f, float f1, float f2, float f3, float f4, float f5, float f6, float f7)
    {
        return BaseCollisionChecker.relativeCCW(f, f1, f2, f3, f4, f5) * BaseCollisionChecker.relativeCCW(f, f1, f2, f3, f6, f7) <= 0 && BaseCollisionChecker.relativeCCW(f4, f5, f6, f7, f, f1) * BaseCollisionChecker.relativeCCW(f4, f5, f6, f7, f2, f3) <= 0;
    }

    public static void fillVertices(Line line, float af[])
    {
        af[0] = 0.0F;
        af[1] = 0.0F;
        af[2] = line.getX2() - line.getX1();
        af[3] = line.getY2() - line.getY1();
        line.getLocalToSceneTransformation().transform(af);
    }
}
