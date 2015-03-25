// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl;

import android.opengl.GLES20;
import org.andengine.util.exception.AndEngineRuntimeException;
import org.andengine.util.system.SystemUtils;

public class GLES20Fix
{

    private static boolean NATIVE_LIB_LOADED;
    private static final boolean WORKAROUND_MISSING_GLES20_METHODS;

    private GLES20Fix()
    {
    }

    public static native void glDrawElements(int i, int j, int k, int l);

    public static void glDrawElementsFix(int i, int j, int k, int l)
    {
        if (WORKAROUND_MISSING_GLES20_METHODS)
        {
            glDrawElements(i, j, k, l);
            return;
        } else
        {
            GLES20.glDrawElements(i, j, k, l);
            return;
        }
    }

    public static native void glVertexAttribPointer(int i, int j, int k, boolean flag, int l, int i1);

    public static void glVertexAttribPointerFix(int i, int j, int k, boolean flag, int l, int i1)
    {
        if (WORKAROUND_MISSING_GLES20_METHODS)
        {
            glVertexAttribPointerFix(i, j, k, flag, l, i1);
            return;
        } else
        {
            GLES20.glVertexAttribPointer(i, j, k, flag, l, i1);
            return;
        }
    }

    static 
    {
        System.loadLibrary("andengine");
        boolean flag = true;
_L1:
        NATIVE_LIB_LOADED = flag;
        UnsatisfiedLinkError unsatisfiedlinkerror;
        if (SystemUtils.isAndroidVersionOrLower(8))
        {
            if (flag)
            {
                WORKAROUND_MISSING_GLES20_METHODS = true;
            } else
            {
                throw new AndEngineRuntimeException("Inherently incompatible device detected.");
            }
        } else
        {
            WORKAROUND_MISSING_GLES20_METHODS = false;
        }
        break MISSING_BLOCK_LABEL_48;
        unsatisfiedlinkerror;
        flag = false;
          goto _L1
    }
}
