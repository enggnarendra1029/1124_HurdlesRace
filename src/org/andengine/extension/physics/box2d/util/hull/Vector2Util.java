// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d.util.hull;

import com.badlogic.gdx.math.Vector2;

// Referenced classes of package org.andengine.extension.physics.box2d.util.hull:
//            Vector2Line

class Vector2Util
{

    Vector2Util()
    {
    }

    public static float area2(Vector2 vector2, Vector2 vector2_1, Vector2 vector2_2)
    {
        return (vector2_1.x - vector2.x) * (vector2_2.y - vector2.y) - (vector2_2.x - vector2.x) * (vector2_1.y - vector2.y);
    }

    public static float area2(Vector2 vector2, Vector2Line vector2line)
    {
        return area2(vector2, vector2line.mVertexA, vector2line.mVertexB);
    }

    public static float getManhattanDistance(Vector2 vector2, Vector2 vector2_1)
    {
        return Math.abs(vector2.x - vector2_1.x) + Math.abs(vector2.y - vector2_1.y);
    }

    public static boolean isBetween(Vector2 vector2, Vector2 vector2_1, Vector2 vector2_2)
    {
        return getManhattanDistance(vector2_1, vector2_2) >= getManhattanDistance(vector2, vector2_1) + getManhattanDistance(vector2, vector2_2);
    }

    public static boolean isConvex(Vector2 vector2, Vector2 vector2_1, Vector2 vector2_2)
    {
        float f = area2(vector2, vector2_1, vector2_2);
        return f < 0.0F || f == 0.0F && !isBetween(vector2, vector2_1, vector2_2);
    }

    public static boolean isLess(Vector2 vector2, Vector2 vector2_1)
    {
        float f = vector2.crs(vector2_1);
        return f > 0.0F || f == 0.0F && isLonger(vector2, vector2_1);
    }

    public static boolean isLonger(Vector2 vector2, Vector2 vector2_1)
    {
        return vector2.len() > vector2_1.len();
    }

    public static boolean isRightOf(Vector2 vector2, Vector2Line vector2line)
    {
        return area2(vector2, vector2line) < 0.0F;
    }
}
