// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.batch.vbo;

import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.IVertexBufferObject;

public interface ISpriteBatchVertexBufferObject
    extends IVertexBufferObject
{

    public abstract void addWithPackedColor(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4);

    public abstract void addWithPackedColor(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8);

    public abstract int getBufferDataOffset();

    public abstract void setBufferDataOffset(int i);
}
