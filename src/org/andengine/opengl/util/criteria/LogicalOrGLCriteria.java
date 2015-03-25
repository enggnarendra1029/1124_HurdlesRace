// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util.criteria;

import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.opengl.util.criteria:
//            IGLCriteria

public class LogicalOrGLCriteria
    implements IGLCriteria
{

    private final IGLCriteria mGLCriterias[];

    public transient LogicalOrGLCriteria(IGLCriteria aiglcriteria[])
    {
        mGLCriterias = aiglcriteria;
    }

    public boolean isMet(GLState glstate)
    {
        IGLCriteria aiglcriteria[] = mGLCriterias;
        int i = aiglcriteria.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return false;
            }
            if (aiglcriteria[j].isMet(glstate))
            {
                return true;
            }
            j++;
        } while (true);
    }
}
