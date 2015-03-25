// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.vbo;

import java.nio.FloatBuffer;
import org.andengine.entity.sprite.Sprite;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.LowMemoryVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;

// Referenced classes of package org.andengine.entity.sprite.vbo:
//            IUniformColorSpriteVertexBufferObject

public class LowMemoryUniformColorSpriteVertexBufferObject extends LowMemoryVertexBufferObject
    implements IUniformColorSpriteVertexBufferObject
{

    public LowMemoryUniformColorSpriteVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateColor(Sprite sprite)
    {
    }

    public void onUpdateTextureCoordinates(Sprite sprite)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        ITextureRegion itextureregion = sprite.getTextureRegion();
        float f;
        float f1;
        float f2;
        float f3;
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
        if (itextureregion.isRotated())
        {
            floatbuffer.put(2, f1);
            floatbuffer.put(3, f2);
            floatbuffer.put(6, f);
            floatbuffer.put(7, f2);
            floatbuffer.put(10, f1);
            floatbuffer.put(11, f3);
            floatbuffer.put(14, f);
            floatbuffer.put(15, f3);
        } else
        {
            floatbuffer.put(2, f);
            floatbuffer.put(3, f2);
            floatbuffer.put(6, f);
            floatbuffer.put(7, f3);
            floatbuffer.put(10, f1);
            floatbuffer.put(11, f2);
            floatbuffer.put(14, f1);
            floatbuffer.put(15, f3);
        }
        setDirtyOnHardware();
    }

    public void onUpdateVertices(Sprite sprite)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        float f = sprite.getWidth();
        float f1 = sprite.getHeight();
        floatbuffer.put(0, 0.0F);
        floatbuffer.put(1, 0.0F);
        floatbuffer.put(4, 0.0F);
        floatbuffer.put(5, f1);
        floatbuffer.put(8, f);
        floatbuffer.put(9, 0.0F);
        floatbuffer.put(12, f);
        floatbuffer.put(13, f1);
        setDirtyOnHardware();
    }
}
