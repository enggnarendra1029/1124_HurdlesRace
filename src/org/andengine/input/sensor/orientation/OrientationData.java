// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.input.sensor.orientation;

import android.hardware.SensorManager;
import java.util.Arrays;
import org.andengine.input.sensor.BaseSensorData;

public class OrientationData extends BaseSensorData
{

    private final float mAccelerationValues[] = new float[3];
    private int mMagneticFieldAccuracy;
    private final float mMagneticFieldValues[] = new float[3];
    private final float mRotationMatrix[] = new float[16];

    public OrientationData(int i)
    {
        super(3, i);
    }

    private void updateOrientation()
    {
        SensorManager.getRotationMatrix(mRotationMatrix, null, mAccelerationValues, mMagneticFieldValues);
        mDisplayRotation;
        JVM INSTR tableswitch 0 1: default 44
    //                   0 44
    //                   1 70;
           goto _L1 _L1 _L2
_L2:
        SensorManager.remapCoordinateSystem(mRotationMatrix, 2, 129, mRotationMatrix);
_L1:
        float af[] = mValues;
        SensorManager.getOrientation(mRotationMatrix, af);
        int i = -1 + af.length;
        do
        {
            if (i < 0)
            {
                return;
            }
            af[i] = 57.29578F * af[i];
            i--;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    public int getAccelerationAccuracy()
    {
        return getAccuracy();
    }

    public int getMagneticFieldAccuracy()
    {
        return mMagneticFieldAccuracy;
    }

    public float getPitch()
    {
        return super.mValues[1];
    }

    public float getRoll()
    {
        return super.mValues[2];
    }

    public float getYaw()
    {
        return super.mValues[0];
    }

    public void setAccelerationAccuracy(int i)
    {
        super.setAccuracy(i);
    }

    public void setAccelerationValues(float af[])
    {
        System.arraycopy(af, 0, mAccelerationValues, 0, af.length);
        updateOrientation();
    }

    public void setAccuracy(int i)
    {
        super.setAccuracy(i);
    }

    public void setMagneticFieldAccuracy(int i)
    {
        mMagneticFieldAccuracy = i;
    }

    public void setMagneticFieldValues(float af[])
    {
        System.arraycopy(af, 0, mMagneticFieldValues, 0, af.length);
        updateOrientation();
    }

    public void setValues(float af[])
    {
        super.setValues(af);
    }

    public String toString()
    {
        return (new StringBuilder("Orientation: ")).append(Arrays.toString(mValues)).toString();
    }
}
