// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.io.in;

import java.io.IOException;
import java.io.InputStream;

public interface IInputStreamOpener
{

    public abstract InputStream open()
        throws IOException;
}
