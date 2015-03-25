// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.io.in;

import android.content.res.Resources;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package org.andengine.util.adt.io.in:
//            IInputStreamOpener

public class ResourceInputStreamOpener
    implements IInputStreamOpener
{

    private final int mResourceID;
    private final Resources mResources;

    public ResourceInputStreamOpener(Resources resources, int i)
    {
        mResources = resources;
        mResourceID = i;
    }

    public InputStream open()
        throws IOException
    {
        return mResources.openRawResource(mResourceID);
    }
}
