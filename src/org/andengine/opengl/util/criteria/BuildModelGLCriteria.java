// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util.criteria;

import android.os.Build;
import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.data.operator.StringOperator;

// Referenced classes of package org.andengine.opengl.util.criteria:
//            StringGLCriteria

public class BuildModelGLCriteria extends StringGLCriteria
{

    public BuildModelGLCriteria(StringOperator stringoperator, String s)
    {
        super(stringoperator, s);
    }

    protected String getActualCriteria(GLState glstate)
    {
        return Build.MODEL;
    }
}
