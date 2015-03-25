// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.font;

import android.content.res.AssetManager;
import java.io.IOException;
import java.util.regex.Pattern;
import org.andengine.opengl.font.exception.FontException;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.bitmap.BitmapTexture;
import org.andengine.util.TextUtils;
import org.andengine.util.adt.io.in.AssetInputStreamOpener;

// Referenced classes of package org.andengine.opengl.font:
//            BitmapFont

public class mat
{

    private int mID;
    private final ITexture mTexture;
    final BitmapFont this$0;

    public int getID()
    {
        return mID;
    }

    public ITexture getTexture()
    {
        return mTexture;
    }

    public mat(AssetManager assetmanager, String s, String s1)
        throws IOException
    {
        this$0 = BitmapFont.this;
        super();
        String as[] = TextUtils.SPLITPATTERN_SPACE.split(s1, 3);
        if (-1 + as.length != 2)
        {
            throw new FontException((new StringBuilder("Expected: '2' page attributes, found: '")).append(-1 + as.length).append("'.").toString());
        }
        if (!as[0].equals("page"))
        {
            throw new FontException("Expected: 'page' attributes.");
        } else
        {
            mID = BitmapFont.access$1(as, 1, "id");
            String s2 = BitmapFont.access$0(as, 2, "file");
            String s3 = (new StringBuilder(String.valueOf(s))).append(s2).toString();
            mTexture = new BitmapTexture(BitmapFont.access$4(BitmapFont.this), new AssetInputStreamOpener(assetmanager, s3), BitmapFont.access$5(BitmapFont.this), BitmapFont.access$6(BitmapFont.this));
            return;
        }
    }
}
