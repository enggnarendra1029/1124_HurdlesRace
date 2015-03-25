// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor.acceleration;

import java.util.Arrays;
import org.andengine.input.sensor.BaseSensorData;

public class AccelerationData extends BaseSensorData
{
    private static interface IAxisSwap
    {

        public abstract void swapAxis(float af[]);
    }


    private static final IAxisSwap AXISSWAPS[];

    public AccelerationData(int i)
    {
        super(3, i);
    }

    public float getX()
    {
        return mValues[0];
    }

    public float getY()
    {
        return mValues[1];
    }

    public float getZ()
    {
        return mValues[2];
    }

    public void setValues(float af[])
    {
        super.setValues(af);
        AXISSWAPS[mDisplayRotation].swapAxis(mValues);
    }

    public void setX(float f)
    {
        mValues[0] = f;
    }

    public void setY(float f)
    {
        mValues[1] = f;
    }

    public void setZ(float f)
    {
        mValues[2] = f;
    }

    public String toString()
    {
        return (new StringBuilder("Acceleration: ")).append(Arrays.toString(mValues)).toString();
    }

    static 
    {
        AXISSWAPS = new IAxisSwap[4];
        AXISSWAPS[0] = new IAxisSwap() {

            public void swapAxis(float af[])
            {
                float f = -af[0];
                float f1 = af[1];
                af[0] = f;
                af[1] = f1;
            }

        };
        AXISSWAPS[1] = new IAxisSwap() {

            public void swapAxis(float af[])
            {
                float f = af[1];
                float f1 = af[0];
                af[0] = f;
                af[1] = f1;
            }

        };
        AXISSWAPS[2] = new IAxisSwap() {

            public void swapAxis(float af[])
            {
                float f = af[0];
                float f1 = -af[1];
                af[0] = f;
                af[1] = f1;
            }

        };
        AXISSWAPS[3] = new IAxisSwap() {

            public void swapAxis(float af[])
            {
                float f = -af[1];
                float f1 = -af[0];
                af[0] = f;
                af[1] = f1;
            }

        };
    }
}
