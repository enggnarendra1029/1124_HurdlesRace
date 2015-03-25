// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util.criteria;

import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.opengl.util.criteria:
//            IGLCriteria

public class LogicalAndGLCriteria
    implements IGLCriteria
{

    private final IGLCriteria mGLCriterias[];

    public transient LogicalAndGLCriteria(IGLCriteria aiglcriteria[])
    {
        mGLCriterias = aiglcriteria;
    }

    public boolean isMet(GLState glstate)
    {
        IGLCriteria aiglcriteria[];
        int i;
        int j;
        aiglcriteria = mGLCriterias;
        i = aiglcriteria.length;
        j = 0;
_L6:
        if (j < i) goto _L2; else goto _L1
_L1:
        boolean flag1 = true;
_L4:
        return flag1;
_L2:
        boolean flag;
        flag = aiglcriteria[j].isMet(glstate);
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
