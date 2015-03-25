// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;

import java.util.Iterator;

// Referenced classes of package com.badlogic.gdx.utils:
//            Array

public static class <init>
    implements Iterable
{

    private iterator iterator;

    public Iterator iterator()
    {
        iterator.reset();
        return iterator;
    }

    public (Array array)
    {
        iterator = new <init>(array);
    }
}
