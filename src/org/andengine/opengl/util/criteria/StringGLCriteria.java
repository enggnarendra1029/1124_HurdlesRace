// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util.criteria;

import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.data.operator.StringOperator;

// Referenced classes of package org.andengine.opengl.util.criteria:
//            IGLCriteria

public abstract class StringGLCriteria
    implements IGLCriteria
{

    private final String mCriteria;
    private final StringOperator mStringOperator;

    public StringGLCriteria(StringOperator stringoperator, String s)
    {
        mCriteria = s;
        mStringOperator = stringoperator;
    }

    protected abstract String getActualCriteria(GLState glstate);

    public boolean isMet(GLState glstate)
    {
        return mStringOperator.check(getActualCriteria(glstate), mCriteria);
    }
}
