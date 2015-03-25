// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.util;

import android.graphics.Bitmap;
import android.opengl.GLES20;
import java.nio.IntBuffer;
import org.andengine.engine.camera.Camera;
import org.andengine.entity.Entity;
import org.andengine.opengl.util.GLState;

public class ScreenGrabber extends Entity
{
    public static interface IScreenGrabberCallback
    {

        public abstract void onScreenGrabFailed(Exception exception);

        public abstract void onScreenGrabbed(Bitmap bitmap);
    }


    private int mGrabHeight;
    private int mGrabWidth;
    private int mGrabX;
    private int mGrabY;
    private IScreenGrabberCallback mScreenGrabCallback;
    private boolean mScreenGrabPending;

    public ScreenGrabber()
    {
        mScreenGrabPending = false;
    }

    private static Bitmap grab(int i, int j, int k, int l)
    {
        int ai[];
        int ai1[];
        int i1;
        ai = new int[k * (j + l)];
        IntBuffer intbuffer = IntBuffer.wrap(ai);
        intbuffer.position(0);
        GLES20.glReadPixels(i, 0, k, j + l, 6408, 5121, intbuffer);
        ai1 = new int[k * l];
        i1 = 0;
_L2:
        if (i1 >= l)
        {
            return Bitmap.createBitmap(ai1, k, l, android.graphics.Bitmap.Config.ARGB_8888);
        }
        int j1 = 0;
        do
        {
label0:
            {
                if (j1 < k)
                {
                    break label0;
                }
                i1++;
            }
            if (true)
            {
                continue;
            }
            int k1 = ai[j1 + k * (j + i1)];
            int l1 = (0xff0000 & k1) >> 16;
            int i2 = (k1 & 0xff) << 16;
            int j2 = k1 & 0xff00ff00;
            ai1[j1 + k * (-1 + (l - i1))] = l1 | (j2 | i2);
            j1++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void grab(int i, int j, int k, int l, IScreenGrabberCallback iscreengrabbercallback)
    {
        mGrabX = i;
        mGrabY = j;
        mGrabWidth = k;
        mGrabHeight = l;
        mScreenGrabCallback = iscreengrabbercallback;
        mScreenGrabPending = true;
    }

    public void grab(int i, int j, IScreenGrabberCallback iscreengrabbercallback)
    {
        grab(0, 0, i, j, iscreengrabbercallback);
    }

    protected void onManagedDraw(GLState glstate, Camera camera)
    {
        if (mScreenGrabPending)
        {
            try
            {
                Bitmap bitmap = grab(mGrabX, mGrabY, mGrabWidth, mGrabHeight);
                mScreenGrabCallback.onScreenGrabbed(bitmap);
            }
            catch (Exception exception)
            {
                mScreenGrabCallback.onScreenGrabFailed(exception);
            }
            mScreenGrabPending = false;
        }
    }

    protected void onManagedUpdate(float f)
    {
    }

    public void reset()
    {
    }
}
