// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.vbo;

import org.andengine.entity.sprite.Sprite;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.HighPerformanceVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.sprite.vbo:
//            ISpriteVertexBufferObject

public class HighPerformanceSpriteVertexBufferObject extends HighPerformanceVertexBufferObject
    implements ISpriteVertexBufferObject
{

    public HighPerformanceSpriteVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateColor(Sprite sprite)
    {
        float af[] = mBufferData;
        float f = sprite.getColor().getABGRPackedFloat();
        af[2] = f;
        af[7] = f;
        af[12] = f;
        af[17] = f;
        setDirtyOnHardware();
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
            af[3] = f1;
            af[4] = f2;
            af[8] = f;
            af[9] = f2;
            af[13] = f1;
            af[14] = f3;
            af[18] = f;
            af[19] = f3;
        } else
        {
            af[3] = f;
            af[4] = f2;
            af[8] = f;
            af[9] = f3;
            af[13] = f1;
            af[14] = f2;
            af[18] = f1;
            af[19] = f3;
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
        af[5] = 0.0F;
        af[6] = f1;
        af[10] = f;
        af[11] = 0.0F;
        af[15] = f;
        af[16] = f1;
        setDirtyOnHardware();
    }
}
