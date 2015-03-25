// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util.criteria;

import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.data.operator.IntOperator;

// Referenced classes of package org.andengine.opengl.util.criteria:
//            IGLCriteria

public abstract class IntGLCriteria
    implements IGLCriteria
{

    private final int mCriteria;
    private final IntOperator mIntOperator;

    public IntGLCriteria(IntOperator intoperator, int i)
    {
        mCriteria = i;
        mIntOperator = intoperator;
    }

    protected abstract int getActualCriteria(GLState glstate);

    public boolean isMet(GLState glstate)
    {
        return mIntOperator.check(getActualCriteria(glstate), mCriteria);
    }
}
