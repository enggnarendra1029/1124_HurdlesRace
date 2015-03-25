// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.data.operator;


// Referenced classes of package org.andengine.util.adt.data.operator:
//            StringOperator

class nit> extends StringOperator
{

    public boolean check(String s, String s1)
    {
        return s.equalsIgnoreCase(s1);
    }

    (String s, int i)
    {
        super(s, i, null);
    }
}
