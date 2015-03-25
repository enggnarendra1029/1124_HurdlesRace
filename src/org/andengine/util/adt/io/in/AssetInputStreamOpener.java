// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.io.in;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package org.andengine.util.adt.io.in:
//            IInputStreamOpener

public class AssetInputStreamOpener
    implements IInputStreamOpener
{

    private final AssetManager mAssetManager;
    private final String mAssetPath;

    public AssetInputStreamOpener(AssetManager assetmanager, String s)
    {
        mAssetManager = assetmanager;
        mAssetPath = s;
    }

    public InputStream open()
        throws IOException
    {
        return mAssetManager.open(mAssetPath);
    }
}
