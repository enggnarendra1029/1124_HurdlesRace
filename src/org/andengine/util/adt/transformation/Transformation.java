// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.transformation;

import android.util.FloatMath;

public class Transformation
{

    private float a;
    private float b;
    private float c;
    private float d;
    private float tx;
    private float ty;

    public Transformation()
    {
        a = 1.0F;
        b = 0.0F;
        c = 0.0F;
        d = 1.0F;
        tx = 0.0F;
        ty = 0.0F;
    }

    private void postConcat(float f, float f1, float f2, float f3, float f4, float f5)
    {
        float f6 = a;
        float f7 = b;
        float f8 = c;
        float f9 = d;
        float f10 = tx;
        float f11 = ty;
        a = f6 * f + f7 * f2;
        b = f6 * f1 + f7 * f3;
        c = f8 * f + f9 * f2;
        d = f8 * f1 + f9 * f3;
        tx = f4 + (f10 * f + f11 * f2);
        ty = f5 + (f10 * f1 + f11 * f3);
    }

    private void preConcat(float f, float f1, float f2, float f3, float f4, float f5)
    {
        float f6 = a;
        float f7 = b;
        float f8 = c;
        float f9 = d;
        float f10 = tx;
        float f11 = ty;
        a = f * f6 + f1 * f8;
        b = f * f7 + f1 * f9;
        c = f2 * f6 + f3 * f8;
        d = f2 * f7 + f3 * f9;
        tx = f10 + (f4 * f6 + f5 * f8);
        ty = f11 + (f4 * f7 + f5 * f9);
    }

    public final void postConcat(Transformation transformation)
    {
        postConcat(transformation.a, transformation.b, transformation.c, transformation.d, transformation.tx, transformation.ty);
    }

    public final void postRotate(float f)
    {
        float f1 = 0.01745329F * f;
        float f2 = FloatMath.sin(f1);
        float f3 = FloatMath.cos(f1);
        float f4 = a;
        float f5 = b;
        float f6 = c;
        float f7 = d;
        float f8 = tx;
        float f9 = ty;
        a = f4 * f3 - f5 * f2;
        b = f4 * f2 + f5 * f3;
        c = f6 * f3 - f7 * f2;
        d = f6 * f2 + f7 * f3;
        tx = f8 * f3 - f9 * f2;
        ty = f8 * f2 + f9 * f3;
    }

    public final void postScale(float f, float f1)
    {
        a = f * a;
        b = f1 * b;
        c = f * c;
        d = f1 * d;
        tx = f * tx;
        ty = f1 * ty;
    }

    public final void postSkew(float f, float f1)
    {
        float f2 = (float)Math.tan(-0.01745329F * f);
        float f3 = (float)Math.tan(-0.01745329F * f1);
        float f4 = a;
        float f5 = b;
        float f6 = c;
        float f7 = d;
        float f8 = tx;
        float f9 = ty;
        a = f4 + f5 * f2;
        b = f5 + f4 * f3;
        c = f6 + f7 * f2;
        d = f7 + f6 * f3;
        tx = f8 + f9 * f2;
        ty = f9 + f8 * f3;
    }

    public final void postTranslate(float f, float f1)
    {
        tx = f + tx;
        ty = f1 + ty;
    }

    public final void preConcat(Transformation transformation)
    {
        preConcat(transformation.a, transformation.b, transformation.c, transformation.d, transformation.tx, transformation.ty);
    }

    public final void preRotate(float f)
    {
        float f1 = 0.01745329F * f;
        float f2 = FloatMath.sin(f1);
        float f3 = FloatMath.cos(f1);
        float f4 = a;
        float f5 = b;
        float f6 = c;
        float f7 = d;
        a = f3 * f4 + f2 * f6;
        b = f3 * f5 + f2 * f7;
        c = f3 * f6 - f2 * f4;
        d = f3 * f7 - f2 * f5;
    }

    public final void preScale(float f, float f1)
    {
        a = f * a;
        b = f * b;
        c = f1 * c;
        d = f1 * d;
    }

    public final void preSkew(float f, float f1)
    {
        float f2 = (float)Math.tan(-0.01745329F * f);
        float f3 = (float)Math.tan(-0.01745329F * f1);
        float f4 = a;
        float f5 = b;
        float f6 = c;
        float f7 = d;
        float f8 = tx;
        float f9 = ty;
        a = f4 + f3 * f6;
        b = f5 + f3 * f7;
        c = f6 + f2 * f4;
        d = f7 + f2 * f5;
        tx = f8;
        ty = f9;
    }

    public final void preTranslate(float f, float f1)
    {
        tx = tx + (f * a + f1 * c);
        ty = ty + (f * b + f1 * d);
    }

    public final void reset()
    {
        setToIdentity();
    }

    public final void setTo(Transformation transformation)
    {
        a = transformation.a;
        d = transformation.d;
        b = transformation.b;
        c = transformation.c;
        tx = transformation.tx;
        ty = transformation.ty;
    }

    public final void setToIdentity()
    {
        a = 1.0F;
        d = 1.0F;
        b = 0.0F;
        c = 0.0F;
        tx = 0.0F;
        ty = 0.0F;
    }

    public final Transformation setToRotate(float f)
    {
        float f1 = 0.01745329F * f;
        float f2 = FloatMath.sin(f1);
        float f3 = FloatMath.cos(f1);
        a = f3;
        b = f2;
        c = -f2;
        d = f3;
        tx = 0.0F;
        ty = 0.0F;
        return this;
    }

    public final Transformation setToScale(float f, float f1)
    {
        a = f;
        b = 0.0F;
        c = 0.0F;
        d = f1;
        tx = 0.0F;
        ty = 0.0F;
        return this;
    }

    public final Transformation setToSkew(float f, float f1)
    {
        a = 1.0F;
        b = (float)Math.tan(-0.01745329F * f1);
        c = (float)Math.tan(-0.01745329F * f);
        d = 1.0F;
        tx = 0.0F;
        ty = 0.0F;
        return this;
    }

    public final Transformation setToTranslate(float f, float f1)
    {
        a = 1.0F;
        b = 0.0F;
        c = 0.0F;
        d = 1.0F;
        tx = f;
        ty = f1;
        return this;
    }

    public String toString()
    {
        return (new StringBuilder("Transformation{[")).append(a).append(", ").append(c).append(", ").append(tx).append("][").append(b).append(", ").append(d).append(", ").append(ty).append("][0.0, 0.0, 1.0]}").toString();
    }

    public final void transform(float af[])
    {
        int i = af.length >> 1;
        int j = 0;
        int k = 0;
        do
        {
            if (--i < 0)
            {
                return;
            }
            int l = k + 1;
            float f = af[k];
            k = l + 1;
            float f1 = af[l];
            int i1 = j + 1;
            af[j] = f * a + f1 * c + tx;
            j = i1 + 1;
            af[i1] = f * b + f1 * d + ty;
        } while (true);
    }
}
