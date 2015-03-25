// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util.criteria;

import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.data.operator.IntOperator;

// Referenced classes of package org.andengine.opengl.util.criteria:
//            IntGLCriteria

public class AndroidVersionCodeGLCriteria extends IntGLCriteria
{

    public AndroidVersionCodeGLCriteria(IntOperator intoperator, int i)
    {
        super(intoperator, i);
    }

    protected int getActualCriteria(GLState glstate)
    {
        return android.os.Build.VERSION.SDK_INT;
    }
}
