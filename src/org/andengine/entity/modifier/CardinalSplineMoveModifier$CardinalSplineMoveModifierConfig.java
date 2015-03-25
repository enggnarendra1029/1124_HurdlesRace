// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.adt.array.ArrayUtils;

// Referenced classes of package org.andengine.entity.modifier:
//            CardinalSplineMoveModifier

public static class mControlPointYs
{

    private static final int CONTROLPOINT_COUNT_MINIMUM = 4;
    private final float mControlPointXs[];
    private final float mControlPointYs[];
    final float mTension;

    public mControlPointYs deepCopy()
    {
        int i = getControlPointCount();
        mControlPointYs mcontrolpointys = new <init>(i, mTension);
        System.arraycopy(mControlPointXs, 0, mcontrolpointys.mControlPointXs, 0, i);
        System.arraycopy(mControlPointYs, 0, mcontrolpointys.mControlPointYs, 0, i);
        return mcontrolpointys;
    }

    public mControlPointYs deepCopyReverse()
    {
        mControlPointYs mcontrolpointys = deepCopy();
        ArrayUtils.reverse(mcontrolpointys.mControlPointXs);
        ArrayUtils.reverse(mcontrolpointys.mControlPointYs);
        return mcontrolpointys;
    }

    public int getControlPointCount()
    {
        return mControlPointXs.length;
    }

    public float getControlPointX(int i)
    {
        return mControlPointXs[i];
    }

    public float getControlPointY(int i)
    {
        return mControlPointYs[i];
    }

    public void setControlPoint(int i, float f, float f1)
    {
        mControlPointXs[i] = f;
        mControlPointYs[i] = f1;
    }



    public (int i, float f)
    {
        if (i < 4)
        {
            throw new IllegalArgumentException((new StringBuilder("A ")).append(org/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig.getSimpleName()).append(" needs at least ").append(4).append(" control points.").toString());
        } else
        {
            mTension = f;
            mControlPointXs = new float[i];
            mControlPointYs = new float[i];
            return;
        }
    }
}
