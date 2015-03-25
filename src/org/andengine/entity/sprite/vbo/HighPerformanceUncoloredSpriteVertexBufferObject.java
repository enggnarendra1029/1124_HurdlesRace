// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.vbo;

import org.andengine.entity.sprite.Sprite;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;

// Referenced classes of package org.andengine.entity.sprite.vbo:
//            HighPerformanceSpriteVertexBufferObject, IUncoloredSpriteVertexBufferObject

public class HighPerformanceUncoloredSpriteVertexBufferObject extends HighPerformanceSpriteVertexBufferObject
    implements IUncoloredSpriteVertexBufferObject
{

    public HighPerformanceUncoloredSpriteVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateTextureCoordinates(Sprite sprite)
    {
        float af[] = mBufferData;
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
            af[2] = f1;
            af[3] = f2;
            af[6] = f;
            af[7] = f2;
            af[10] = f1;
            af[11] = f3;
            af[14] = f;
            af[15] = f3;
        } else
        {
            af[2] = f;
            af[3] = f2;
            af[6] = f;
            af[7] = f3;
            af[10] = f1;
            af[11] = f2;
            af[14] = f1;
            af[15] = f3;
        }
        setDirtyOnHardware();
    }

    public void onUpdateVertices(Sprite sprite)
    {
        float af[] = mBufferData;
        float f = sprite.getWidth();
        float f1 = sprite.getHeight();
        af[0] = 0.0F;
        af[1] = 0.0F;
        af[4] = 0.0F;
        af[5] = f1;
        af[8] = f;
        af[9] = 0.0F;
        af[12] = f;
        af[13] = f1;
        setDirtyOnHardware();
    }
}
