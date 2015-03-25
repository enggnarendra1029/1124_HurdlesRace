// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture;

import android.content.res.AssetManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.andengine.opengl.texture.bitmap.BitmapTexture;
import org.andengine.opengl.texture.bitmap.BitmapTextureFormat;
import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.io.in.AssetInputStreamOpener;
import org.andengine.util.adt.io.in.IInputStreamOpener;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.opengl.texture:
//            ITexture, TextureOptions, TextureWarmUpVertexBufferObject

public class TextureManager
{

    private TextureWarmUpVertexBufferObject mTextureWarmUpVertexBufferObject;
    private final ArrayList mTexturesLoaded = new ArrayList();
    private final HashSet mTexturesManaged = new HashSet();
    private final HashMap mTexturesMapped = new HashMap();
    private final ArrayList mTexturesToBeLoaded = new ArrayList();
    private final ArrayList mTexturesToBeUnloaded = new ArrayList();

    public TextureManager()
    {
    }

    public void addMappedTexture(String s, ITexture itexture)
        throws IllegalArgumentException
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("pID must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (itexture != null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        throw new IllegalArgumentException("pTexture must not be null!");
        if (mTexturesMapped.containsKey(s))
        {
            throw new IllegalArgumentException((new StringBuilder("Collision for pID: '")).append(s).append("'.").toString());
        }
        mTexturesMapped.put(s, itexture);
        this;
        JVM INSTR monitorexit ;
    }

    public ITexture getMappedTexture(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("pID must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ITexture itexture = (ITexture)mTexturesMapped.get(s);
        this;
        JVM INSTR monitorexit ;
        return itexture;
    }

    public ITexture getTexture(String s, AssetManager assetmanager, String s1)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        ITexture itexture = getTexture(s, assetmanager, s1, TextureOptions.DEFAULT);
        this;
        JVM INSTR monitorexit ;
        return itexture;
        Exception exception;
        exception;
        throw exception;
    }

    public ITexture getTexture(String s, AssetManager assetmanager, String s1, TextureOptions textureoptions)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        if (!hasMappedTexture(s)) goto _L2; else goto _L1
_L1:
        ITexture itexture = getMappedTexture(s);
        Object obj = itexture;
_L4:
        this;
        JVM INSTR monitorexit ;
        return ((ITexture) (obj));
_L2:
        obj = new BitmapTexture(this, new AssetInputStreamOpener(assetmanager, s1), textureoptions);
        loadTexture(((ITexture) (obj)));
        addMappedTexture(s, ((ITexture) (obj)));
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public ITexture getTexture(String s, IInputStreamOpener iinputstreamopener)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        ITexture itexture = getTexture(s, iinputstreamopener, TextureOptions.DEFAULT);
        this;
        JVM INSTR monitorexit ;
        return itexture;
        Exception exception;
        exception;
        throw exception;
    }

    public ITexture getTexture(String s, IInputStreamOpener iinputstreamopener, TextureOptions textureoptions)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        ITexture itexture = getTexture(s, iinputstreamopener, BitmapTextureFormat.RGBA_8888, textureoptions);
        this;
        JVM INSTR monitorexit ;
        return itexture;
        Exception exception;
        exception;
        throw exception;
    }

    public ITexture getTexture(String s, IInputStreamOpener iinputstreamopener, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        ITexture itexture = getTexture(s, iinputstreamopener, bitmaptextureformat, textureoptions, true);
        this;
        JVM INSTR monitorexit ;
        return itexture;
        Exception exception;
        exception;
        throw exception;
    }

    public ITexture getTexture(String s, IInputStreamOpener iinputstreamopener, BitmapTextureFormat bitmaptextureformat, TextureOptions textureoptions, boolean flag)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        if (!hasMappedTexture(s)) goto _L2; else goto _L1
_L1:
        ITexture itexture = getMappedTexture(s);
        Object obj = itexture;
_L4:
        this;
        JVM INSTR monitorexit ;
        return ((ITexture) (obj));
_L2:
        obj = new BitmapTexture(this, iinputstreamopener, bitmaptextureformat, textureoptions);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_52;
        }
        loadTexture(((ITexture) (obj)));
        addMappedTexture(s, ((ITexture) (obj)));
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public boolean hasMappedTexture(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("pID must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        boolean flag = mTexturesMapped.containsKey(s);
        this;
        JVM INSTR monitorexit ;
        return flag;
    }

    public boolean loadTexture(ITexture itexture)
    {
        this;
        JVM INSTR monitorenter ;
        if (itexture != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("pTexture must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (!mTexturesManaged.contains(itexture)) goto _L2; else goto _L1
_L1:
        mTexturesToBeUnloaded.remove(itexture);
        boolean flag = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        mTexturesManaged.add(itexture);
        mTexturesToBeLoaded.add(itexture);
        flag = true;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public boolean loadTexture(GLState glstate, ITexture itexture)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        if (itexture != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("pTexture must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (itexture.isLoadedToHardware()) goto _L2; else goto _L1
_L1:
        itexture.loadToHardware(glstate);
_L6:
        if (!mTexturesManaged.contains(itexture)) goto _L4; else goto _L3
_L3:
        mTexturesToBeUnloaded.remove(itexture);
        boolean flag = false;
_L7:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        if (!itexture.isUpdateOnHardwareNeeded()) goto _L6; else goto _L5
_L5:
        itexture.reloadToHardware(glstate);
          goto _L6
_L4:
        mTexturesManaged.add(itexture);
        mTexturesLoaded.add(itexture);
        flag = true;
          goto _L7
    }

    public void onCreate()
    {
        this;
        JVM INSTR monitorenter ;
        mTextureWarmUpVertexBufferObject = new TextureWarmUpVertexBufferObject();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onDestroy()
    {
        this;
        JVM INSTR monitorenter ;
        Iterator iterator = mTexturesManaged.iterator();
_L1:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_62;
        }
        mTexturesToBeLoaded.clear();
        mTexturesLoaded.clear();
        mTexturesManaged.clear();
        mTexturesMapped.clear();
        mTextureWarmUpVertexBufferObject.dispose();
        mTextureWarmUpVertexBufferObject = null;
        this;
        JVM INSTR monitorexit ;
        return;
        ((ITexture)iterator.next()).setNotLoadedToHardware();
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public void onReload()
    {
        this;
        JVM INSTR monitorenter ;
        HashSet hashset = mTexturesManaged;
        if (hashset.isEmpty()) goto _L2; else goto _L1
_L1:
        Iterator iterator = hashset.iterator();
_L3:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_98;
        }
_L2:
        if (!mTexturesLoaded.isEmpty())
        {
            mTexturesToBeLoaded.addAll(mTexturesLoaded);
            mTexturesLoaded.clear();
        }
        if (!mTexturesToBeUnloaded.isEmpty())
        {
            mTexturesManaged.removeAll(mTexturesToBeUnloaded);
            mTexturesToBeUnloaded.clear();
        }
        mTextureWarmUpVertexBufferObject.setNotLoadedToHardware();
        this;
        JVM INSTR monitorexit ;
        return;
        ((ITexture)iterator.next()).setNotLoadedToHardware();
          goto _L3
        Exception exception;
        exception;
        throw exception;
    }

    public ITexture removedMappedTexture(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("pID must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        ITexture itexture = (ITexture)mTexturesMapped.remove(s);
        this;
        JVM INSTR monitorexit ;
        return itexture;
    }

    public boolean unloadTexture(ITexture itexture)
    {
        this;
        JVM INSTR monitorenter ;
        if (itexture != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("pTexture must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (!mTexturesManaged.contains(itexture))
        {
            break MISSING_BLOCK_LABEL_83;
        }
        if (!mTexturesLoaded.contains(itexture)) goto _L2; else goto _L1
_L1:
        mTexturesToBeUnloaded.add(itexture);
_L4:
        boolean flag = true;
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        if (!mTexturesToBeLoaded.remove(itexture)) goto _L4; else goto _L3
_L3:
        mTexturesManaged.remove(itexture);
          goto _L4
        flag = false;
          goto _L5
    }

    public boolean unloadTexture(GLState glstate, ITexture itexture)
    {
        this;
        JVM INSTR monitorenter ;
        if (itexture != null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        throw new IllegalArgumentException("pTexture must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (itexture.isLoadedToHardware())
        {
            itexture.unloadFromHardware(glstate);
        }
        if (!mTexturesManaged.contains(itexture)) goto _L2; else goto _L1
_L1:
        mTexturesLoaded.remove(itexture);
        mTexturesToBeLoaded.remove(itexture);
        boolean flag = true;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void updateTextures(GLState glstate)
    {
        this;
        JVM INSTR monitorenter ;
        HashSet hashset;
        ArrayList arraylist;
        ArrayList arraylist1;
        ArrayList arraylist2;
        int i;
        hashset = mTexturesManaged;
        arraylist = mTexturesLoaded;
        arraylist1 = mTexturesToBeLoaded;
        arraylist2 = mTexturesToBeUnloaded;
        i = -1 + arraylist.size();
_L9:
        if (i >= 0) goto _L2; else goto _L1
_L1:
        int j = arraylist1.size();
        if (j <= 0) goto _L4; else goto _L3
_L3:
        int i1 = j - 1;
          goto _L5
_L4:
        int k = arraylist2.size();
        if (k <= 0) goto _L7; else goto _L6
_L6:
        int l = k - 1;
          goto _L8
_L14:
        System.gc();
_L15:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        ITexture itexture2;
        boolean flag1;
        itexture2 = (ITexture)arraylist.get(i);
        flag1 = itexture2.isUpdateOnHardwareNeeded();
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_121;
        }
        itexture2.reloadToHardware(glstate);
_L10:
        i--;
          goto _L9
        IOException ioexception1;
        ioexception1;
        Debug.e(ioexception1);
          goto _L10
        Exception exception;
        exception;
        throw exception;
_L12:
        ITexture itexture1;
        boolean flag;
        itexture1 = (ITexture)arraylist1.remove(i1);
        flag = itexture1.isLoadedToHardware();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        itexture1.loadToHardware(glstate);
        mTextureWarmUpVertexBufferObject.warmup(glstate, itexture1);
_L11:
        arraylist.add(itexture1);
        i1--;
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        Debug.e(ioexception);
          goto _L11
_L13:
        ITexture itexture = (ITexture)arraylist2.remove(l);
        if (itexture.isLoadedToHardware())
        {
            itexture.unloadFromHardware(glstate);
        }
        arraylist.remove(itexture);
        hashset.remove(itexture);
        l--;
        continue; /* Loop/switch isn't completed */
_L5:
        if (i1 >= 0) goto _L12; else goto _L4
_L8:
        if (l >= 0) goto _L13; else goto _L7
_L7:
        if (j <= 0 && k <= 0) goto _L15; else goto _L14
    }
}
