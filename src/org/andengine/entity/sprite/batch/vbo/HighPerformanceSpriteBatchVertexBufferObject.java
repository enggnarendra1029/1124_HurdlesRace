// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.batch.vbo;

import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.HighPerformanceVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;

// Referenced classes of package org.andengine.entity.sprite.batch.vbo:
//            ISpriteBatchVertexBufferObject

public class HighPerformanceSpriteBatchVertexBufferObject extends HighPerformanceVertexBufferObject
    implements ISpriteBatchVertexBufferObject
{

    protected int mBufferDataOffset;

    public HighPerformanceSpriteBatchVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void addWithPackedColor(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4)
    {
        float af[] = getBufferData();
        int i = mBufferDataOffset;
        float f5 = itextureregion.getU();
        float f6 = itextureregion.getV();
        float f7 = itextureregion.getU2();
        float f8 = itextureregion.getV2();
        if (itextureregion.isRotated())
        {
            af[0 + (i + 0)] = f;
            af[1 + (i + 0)] = f1;
            af[2 + (i + 0)] = f4;
            af[3 + (i + 0)] = f7;
            af[4 + (i + 0)] = f6;
            af[0 + (i + 5)] = f;
            af[1 + (i + 5)] = f3;
            af[2 + (i + 5)] = f4;
            af[3 + (i + 5)] = f5;
            af[4 + (i + 5)] = f6;
            af[0 + (i + 10)] = f2;
            af[1 + (i + 10)] = f1;
            af[2 + (i + 10)] = f4;
            af[3 + (i + 10)] = f7;
            af[4 + (i + 10)] = f8;
            af[0 + (i + 15)] = f2;
            af[1 + (i + 15)] = f1;
            af[2 + (i + 15)] = f4;
            af[3 + (i + 15)] = f7;
            af[4 + (i + 15)] = f8;
            af[0 + (i + 20)] = f;
            af[1 + (i + 20)] = f3;
            af[2 + (i + 20)] = f4;
            af[3 + (i + 20)] = f5;
            af[4 + (i + 20)] = f6;
            af[0 + (i + 25)] = f2;
            af[1 + (i + 25)] = f3;
            af[2 + (i + 25)] = f4;
            af[3 + (i + 25)] = f5;
            af[4 + (i + 25)] = f8;
        } else
        {
            af[0 + (i + 0)] = f;
            af[1 + (i + 0)] = f1;
            af[2 + (i + 0)] = f4;
            af[3 + (i + 0)] = f5;
            af[4 + (i + 0)] = f6;
            af[0 + (i + 5)] = f;
            af[1 + (i + 5)] = f3;
            af[2 + (i + 5)] = f4;
            af[3 + (i + 5)] = f5;
            af[4 + (i + 5)] = f8;
            af[0 + (i + 10)] = f2;
            af[1 + (i + 10)] = f1;
            af[2 + (i + 10)] = f4;
            af[3 + (i + 10)] = f7;
            af[4 + (i + 10)] = f6;
            af[0 + (i + 15)] = f2;
            af[1 + (i + 15)] = f1;
            af[2 + (i + 15)] = f4;
            af[3 + (i + 15)] = f7;
            af[4 + (i + 15)] = f6;
            af[0 + (i + 20)] = f;
            af[1 + (i + 20)] = f3;
            af[2 + (i + 20)] = f4;
            af[3 + (i + 20)] = f5;
            af[4 + (i + 20)] = f8;
            af[0 + (i + 25)] = f2;
            af[1 + (i + 25)] = f3;
            af[2 + (i + 25)] = f4;
            af[3 + (i + 25)] = f7;
            af[4 + (i + 25)] = f8;
        }
        mBufferDataOffset = 30 + mBufferDataOffset;
    }

    public void addWithPackedColor(ITextureRegion itextureregion, float f, float f1, float f2, float f3, float f4, float f5, 
            float f6, float f7, float f8)
    {
        float af[] = getBufferData();
        int i = mBufferDataOffset;
        float f9 = itextureregion.getU();
        float f10 = itextureregion.getV();
        float f11 = itextureregion.getU2();
        float f12 = itextureregion.getV2();
        if (itextureregion.isRotated())
        {
            af[0 + (i + 0)] = f;
            af[1 + (i + 0)] = f1;
            af[2 + (i + 0)] = f8;
            af[3 + (i + 0)] = f11;
            af[4 + (i + 0)] = f10;
            af[0 + (i + 5)] = f2;
            af[1 + (i + 5)] = f3;
            af[2 + (i + 5)] = f8;
            af[3 + (i + 5)] = f9;
            af[4 + (i + 5)] = f10;
            af[0 + (i + 10)] = f4;
            af[1 + (i + 10)] = f5;
            af[2 + (i + 10)] = f8;
            af[3 + (i + 10)] = f11;
            af[4 + (i + 10)] = f12;
            af[0 + (i + 15)] = f4;
            af[1 + (i + 15)] = f5;
            af[2 + (i + 15)] = f8;
            af[3 + (i + 15)] = f11;
            af[4 + (i + 15)] = f12;
            af[0 + (i + 20)] = f2;
            af[1 + (i + 20)] = f3;
            af[2 + (i + 20)] = f8;
            af[3 + (i + 20)] = f9;
            af[4 + (i + 20)] = f10;
            af[0 + (i + 25)] = f6;
            af[1 + (i + 25)] = f7;
            af[2 + (i + 25)] = f8;
            af[3 + (i + 25)] = f9;
            af[4 + (i + 25)] = f12;
        } else
        {
            af[0 + (i + 0)] = f;
            af[1 + (i + 0)] = f1;
            af[2 + (i + 0)] = f8;
            af[3 + (i + 0)] = f9;
            af[4 + (i + 0)] = f10;
            af[0 + (i + 5)] = f2;
            af[1 + (i + 5)] = f3;
            af[2 + (i + 5)] = f8;
            af[3 + (i + 5)] = f9;
            af[4 + (i + 5)] = f12;
            af[0 + (i + 10)] = f4;
            af[1 + (i + 10)] = f5;
            af[2 + (i + 10)] = f8;
            af[3 + (i + 10)] = f11;
            af[4 + (i + 10)] = f10;
            af[0 + (i + 15)] = f4;
            af[1 + (i + 15)] = f5;
            af[2 + (i + 15)] = f8;
            af[3 + (i + 15)] = f11;
            af[4 + (i + 15)] = f10;
            af[0 + (i + 20)] = f2;
            af[1 + (i + 20)] = f3;
            af[2 + (i + 20)] = f8;
            af[3 + (i + 20)] = f9;
            af[4 + (i + 20)] = f12;
            af[0 + (i + 25)] = f6;
            af[1 + (i + 25)] = f7;
            af[2 + (i + 25)] = f8;
            af[3 + (i + 25)] = f11;
            af[4 + (i + 25)] = f12;
        }
        mBufferDataOffset = 30 + mBufferDataOffset;
    }

    public int getBufferDataOffset()
    {
        return mBufferDataOffset;
    }

    public void setBufferDataOffset(int i)
    {
        mBufferDataOffset = i;
    }
}
