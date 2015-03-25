// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture;


// Referenced classes of package org.andengine.opengl.texture:
//            ITexture

public interface ITextureStateListener
{

    public abstract void onLoadedToHardware(ITexture itexture);

    public abstract void onUnloadedFromHardware(ITexture itexture);
}
