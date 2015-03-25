// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.vbo;

import java.nio.FloatBuffer;
import org.andengine.entity.sprite.Sprite;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;

// Referenced classes of package org.andengine.entity.sprite.vbo:
//            LowMemorySpriteVertexBufferObject, IUncoloredSpriteVertexBufferObject

public class LowMemoryUncoloredSpriteVertexBufferObject extends LowMemorySpriteVertexBufferObject
    implements IUncoloredSpriteVertexBufferObject
{

    public LowMemoryUncoloredSpriteVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateTextureCoordinates(Sprite sprite)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        ITextureRegion itextureregion = sprite.getTextureRegion();
        float f;
        float f1;
        float f2;
        float f3;
        float f4;
        float f5;
        if (sprite.isFlippedVertical())
        {
            if (sprite.isFlippedHorizontal())
            {
                f = itextureregion.getU2();
                f1 = itextureregion.getU();
                f2 = itextureregion.getV2();
                f3 = itextureregion.getV();
            } else
            {
                f = itextureregion.getU();
                f1 = itextureregion.getU2();
                f2 = itextureregion.getV2();
                f3 = itextureregion.getV();
            }
        } else
        if (sprite.isFlippedHorizontal())
        {
            f = itextureregion.getU2();
            f1 = itextureregion.getU();
            f2 = itextureregion.getV();
            f3 = itextureregion.getV2();
        } else
        {
            f = itextureregion.getU();
            f1 = itextureregion.getU2();
            f2 = itextureregion.getV();
            f3 = itextureregion.getV2();
        }
        f4 = 0.5F * (f + f1);
        f5 = 0.5F * (f2 + f3);
        if (itextureregion.isRotated())
        {
            floatbuffer.put(3, f4);
            floatbuffer.put(4, f2);
            floatbuffer.put(8, f);
            floatbuffer.put(9, f5);
            floatbuffer.put(13, f1);
            floatbuffer.put(14, f5);
            floatbuffer.put(18, f4);
            floatbuffer.put(19, f3);
        } else
        {
            floatbuffer.put(3, f);
            floatbuffer.put(4, f5);
            floatbuffer.put(8, f4);
            floatbuffer.put(9, f3);
            floatbuffer.put(13, f4);
            floatbuffer.put(14, f2);
            floatbuffer.put(18, f1);
            floatbuffer.put(19, f5);
        }
        setDirtyOnHardware();
    }

    public void onUpdateVertices(Sprite sprite)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        float f = sprite.getWidth();
        float f1 = sprite.getHeight();
        float f2 = 0.5F * (0.0F + f);
        float f3 = 0.5F * (0.0F + f1);
        floatbuffer.put(0, 0.0F);
        floatbuffer.put(1, f3);
        floatbuffer.put(5, f2);
        floatbuffer.put(6, f1);
        floatbuffer.put(10, f2);
        floatbuffer.put(11, 0.0F);
        floatbuffer.put(15, f);
        floatbuffer.put(16, f3);
        setDirtyOnHardware();
    }
}
