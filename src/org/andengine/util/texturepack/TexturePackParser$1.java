// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.texturepack;

import java.io.IOException;
import java.io.InputStream;
import org.andengine.util.adt.io.in.IInputStreamOpener;

// Referenced classes of package org.andengine.util.texturepack:
//            TexturePackParser

class val.file
    implements IInputStreamOpener
{

    final TexturePackParser this$0;
    private final String val$file;

    public InputStream open()
        throws IOException
    {
        return onGetInputStream(val$file);
    }

    ()
    {
        this$0 = final_texturepackparser;
        val$file = String.this;
        super();
    }
}
