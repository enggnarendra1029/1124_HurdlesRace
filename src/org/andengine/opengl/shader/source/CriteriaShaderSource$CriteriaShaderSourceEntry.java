// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.shader.source;

import org.andengine.opengl.util.GLState;
import org.andengine.opengl.util.criteria.IGLCriteria;

// Referenced classes of package org.andengine.opengl.shader.source:
//            CriteriaShaderSource

public static class mShaderSource
{

    private final IGLCriteria mGLCriterias[];
    private final String mShaderSource;

    public String getShaderSource()
    {
        return mShaderSource;
    }

    public boolean isMet(GLState glstate)
    {
        if (mGLCriterias == null) goto _L2; else goto _L1
_L1:
        IGLCriteria aiglcriteria[];
        int i;
        int j;
        aiglcriteria = mGLCriterias;
        i = aiglcriteria.length;
        j = 0;
_L7:
        if (j < i) goto _L3; else goto _L2
_L2:
        boolean flag = true;
_L5:
        return flag;
_L3:
        boolean flag1;
        flag1 = aiglcriteria[j].isMet(glstate);
        flag = false;
        if (!flag1) goto _L5; else goto _L4
_L4:
        j++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public (String s)
    {
        this(s, null);
    }

    public transient <init>(String s, IGLCriteria aiglcriteria[])
    {
        mGLCriterias = aiglcriteria;
        mShaderSource = s;
    }
}
