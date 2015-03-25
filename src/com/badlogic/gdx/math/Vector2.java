// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.math;

import com.badlogic.gdx.utils.NumberUtils;
import java.io.Serializable;

public class Vector2
    implements Serializable
{

    public static final Vector2 X = new Vector2(1.0F, 0.0F);
    public static final Vector2 Y = new Vector2(0.0F, 1.0F);
    public static final Vector2 Zero = new Vector2(0.0F, 0.0F);
    private static final long serialVersionUID = 0xcaed5be6c419bb3L;
    public static final Vector2 tmp = new Vector2();
    public static final Vector2 tmp2 = new Vector2();
    public static final Vector2 tmp3 = new Vector2();
    public float x;
    public float y;

    public Vector2()
    {
    }

    public Vector2(float f, float f1)
    {
        x = f;
        y = f1;
    }

    public Vector2(Vector2 vector2)
    {
        set(vector2);
    }

    public Vector2 add(float f, float f1)
    {
        x = f + x;
        y = f1 + y;
        return this;
    }

    public Vector2 add(Vector2 vector2)
    {
        x = x + vector2.x;
        y = y + vector2.y;
        return this;
    }

    public float angle()
    {
        float f = 57.29578F * (float)Math.atan2(y, x);
        if (f < 0.0F)
        {
            f += 360F;
        }
        return f;
    }

    public Vector2 cpy()
    {
        return new Vector2(this);
    }

    public float crs(float f, float f1)
    {
        return f1 * x - f * y;
    }

    public float crs(Vector2 vector2)
    {
        return x * vector2.y - y * vector2.x;
    }

    public Vector2 div(float f)
    {
        return mul(1.0F / f);
    }

    public Vector2 div(float f, float f1)
    {
        return mul(1.0F / f, 1.0F / f1);
    }

    public Vector2 div(Vector2 vector2)
    {
        return mul(1.0F / vector2.x, 1.0F / vector2.y);
    }

    public float dot(Vector2 vector2)
    {
        return x * vector2.x + y * vector2.y;
    }

    public float dst(float f, float f1)
    {
        float f2 = f - x;
        float f3 = f1 - y;
        return (float)Math.sqrt(f2 * f2 + f3 * f3);
    }

    public float dst(Vector2 vector2)
    {
        float f = vector2.x - x;
        float f1 = vector2.y - y;
        return (float)Math.sqrt(f * f + f1 * f1);
    }

    public float dst2(float f, float f1)
    {
        float f2 = f - x;
        float f3 = f1 - y;
        return f2 * f2 + f3 * f3;
    }

    public float dst2(Vector2 vector2)
    {
        float f = vector2.x - x;
        float f1 = vector2.y - y;
        return f * f + f1 * f1;
    }

    public boolean epsilonEquals(Vector2 vector2, float f)
    {
        while (vector2 == null || Math.abs(vector2.x - x) > f || Math.abs(vector2.y - y) > f) 
        {
            return false;
        }
        return true;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (obj == null)
            {
                return false;
            }
            if (getClass() != obj.getClass())
            {
                return false;
            }
            Vector2 vector2 = (Vector2)obj;
            if (NumberUtils.floatToIntBits(x) != NumberUtils.floatToIntBits(vector2.x))
            {
                return false;
            }
            if (NumberUtils.floatToIntBits(y) != NumberUtils.floatToIntBits(vector2.y))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return 31 * (31 + NumberUtils.floatToIntBits(x)) + NumberUtils.floatToIntBits(y);
    }

    public float len()
    {
        return (float)Math.sqrt(x * x + y * y);
    }

    public float len2()
    {
        return x * x + y * y;
    }

    public Vector2 lerp(Vector2 vector2, float f)
    {
        Vector2 vector2_1 = mul(1.0F - f);
        vector2_1.add(vector2.tmp().mul(f));
        return vector2_1;
    }

    public Vector2 mul(float f)
    {
        x = f * x;
        y = f * y;
        return this;
    }

    public Vector2 mul(float f, float f1)
    {
        x = f * x;
        y = f1 * y;
        return this;
    }

    public Vector2 nor()
    {
        float f = len();
        if (f != 0.0F)
        {
            x = x / f;
            y = y / f;
        }
        return this;
    }

    public Vector2 rotate(float f)
    {
        float f1 = f * 0.01745329F;
        float f2 = (float)Math.cos(f1);
        float f3 = (float)Math.sin(f1);
        float f4 = f2 * x - f3 * y;
        float f5 = f3 * x + f2 * y;
        x = f4;
        y = f5;
        return this;
    }

    public Vector2 set(float f, float f1)
    {
        x = f;
        y = f1;
        return this;
    }

    public Vector2 set(Vector2 vector2)
    {
        x = vector2.x;
        y = vector2.y;
        return this;
    }

    public void setAngle(float f)
    {
        set(len(), 0.0F);
        rotate(f);
    }

    public Vector2 sub(float f, float f1)
    {
        x = x - f;
        y = y - f1;
        return this;
    }

    public Vector2 sub(Vector2 vector2)
    {
        x = x - vector2.x;
        y = y - vector2.y;
        return this;
    }

    public Vector2 tmp()
    {
        return tmp.set(this);
    }

    public String toString()
    {
        return (new StringBuilder("[")).append(x).append(":").append(y).append("]").toString();
    }

}
