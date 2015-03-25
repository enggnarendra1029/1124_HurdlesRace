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
//            HighPerformanceSpriteVertexBufferObject, IDiamondSpriteVertexBufferObject

public class HighPerformanceDiamondSpriteVertexBufferObject extends HighPerformanceSpriteVertexBufferObject
    implements IDiamondSpriteVertexBufferObject
{

    public HighPerformanceDiamondSpriteVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
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
            af[3] = f4;
            af[4] = f2;
            af[8] = f;
            af[9] = f5;
            af[13] = f1;
            af[14] = f5;
            af[18] = f4;
            af[19] = f3;
        } else
        {
            af[3] = f;
            af[4] = f5;
            af[8] = f4;
            af[9] = f3;
            af[13] = f4;
            af[14] = f2;
            af[18] = f1;
            af[19] = f5;
        }
        setDirtyOnHardware();
    }

    public void onUpdateVertices(Sprite sprite)
    {
        float af[] = mBufferData;
        float f = sprite.getWidth();
        float f1 = sprite.getHeight();
        float f2 = 0.5F * (0.0F + f);
        float f3 = 0.5F * (0.0F + f1);
        af[0] = 0.0F;
        af[1] = f3;
        af[5] = f2;
        af[6] = f1;
        af[10] = f2;
        af[11] = 0.0F;
        af[15] = f;
        af[16] = f3;
        setDirtyOnHardware();
    }
}
