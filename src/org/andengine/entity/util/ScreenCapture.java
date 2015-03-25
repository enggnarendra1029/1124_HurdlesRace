// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.util;

import android.graphics.Bitmap;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import org.andengine.engine.camera.Camera;
import org.andengine.entity.Entity;
import org.andengine.opengl.util.GLState;
import org.andengine.util.StreamUtils;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.entity.util:
//            ScreenGrabber

public class ScreenCapture extends Entity
    implements ScreenGrabber.IScreenGrabberCallback
{
    public static interface IScreenCaptureCallback
    {

        public abstract void onScreenCaptureFailed(String s, Exception exception);

        public abstract void onScreenCaptured(String s);
    }


    private String mFilePath;
    private IScreenCaptureCallback mScreenCaptureCallback;
    private final ScreenGrabber mScreenGrabber = new ScreenGrabber();

    public ScreenCapture()
    {
    }

    private static void saveCapture(Bitmap bitmap, String s)
        throws FileNotFoundException
    {
        Object obj = null;
        FileOutputStream fileoutputstream = new FileOutputStream(s);
        FileNotFoundException filenotfoundexception;
        try
        {
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, fileoutputstream);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (FileNotFoundException filenotfoundexception)
        {
            obj = fileoutputstream;
        }
        break MISSING_BLOCK_LABEL_25;
        filenotfoundexception;
        StreamUtils.flushCloseStream(((java.io.OutputStream) (obj)));
        Debug.e((new StringBuilder("Error saving file to: ")).append(s).toString(), filenotfoundexception);
        throw filenotfoundexception;
    }

    public void capture(int i, int j, int k, int l, String s, IScreenCaptureCallback iscreencapturecallback)
    {
        mFilePath = s;
        mScreenCaptureCallback = iscreencapturecallback;
        mScreenGrabber.grab(i, j, k, l, this);
    }

    public void capture(int i, int j, String s, IScreenCaptureCallback iscreencapturecallback)
    {
        capture(0, 0, i, j, s, iscreencapturecallback);
    }

    protected void onManagedDraw(GLState glstate, Camera camera)
    {
        mScreenGrabber.onManagedDraw(glstate, camera);
    }

    protected void onManagedUpdate(float f)
    {
    }

    public void onScreenGrabFailed(Exception exception)
    {
        mScreenCaptureCallback.onScreenCaptureFailed(mFilePath, exception);
    }

    public void onScreenGrabbed(Bitmap bitmap)
    {
        try
        {
            saveCapture(bitmap, mFilePath);
            mScreenCaptureCallback.onScreenCaptured(mFilePath);
            return;
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            mScreenCaptureCallback.onScreenCaptureFailed(mFilePath, filenotfoundexception);
        }
    }

    public void reset()
    {
    }
}
