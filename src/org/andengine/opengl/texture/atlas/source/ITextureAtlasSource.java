// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.source;


public interface ITextureAtlasSource
{

    public abstract ITextureAtlasSource deepCopy();

    public abstract int getTextureHeight();

    public abstract int getTextureWidth();

    public abstract int getTextureX();

    public abstract int getTextureY();

    public abstract void setTextureHeight(int i);

    public abstract void setTextureWidth(int i);

    public abstract void setTextureX(int i);

    public abstract void setTextureY(int i);
}
