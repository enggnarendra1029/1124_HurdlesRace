// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.util;

import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.util.debug.Debug;

public class FrameCountCrasher
    implements IUpdateHandler
{

    private final float mFrameLengths[];
    private int mFramesLeft;

    public FrameCountCrasher(int i)
    {
        mFramesLeft = i;
        mFrameLengths = new float[i];
    }

    public void onUpdate(float f)
    {
        mFramesLeft = -1 + mFramesLeft;
        float af[] = mFrameLengths;
        if (mFramesLeft >= 0)
        {
            af[mFramesLeft] = f;
            return;
        }
        int i = -1 + af.length;
        do
        {
            if (i < 0)
            {
                throw new RuntimeException();
            }
            Debug.d((new StringBuilder("Elapsed: ")).append(af[i]).toString());
            i--;
        } while (true);
    }

    public void reset()
    {
    }
}
