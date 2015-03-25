// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.vbo;

import java.nio.FloatBuffer;
import org.andengine.entity.sprite.TiledSprite;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.texture.region.ITiledTextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.sprite.vbo:
//            LowMemorySpriteVertexBufferObject, ITiledSpriteVertexBufferObject

public class LowMemoryTiledSpriteVertexBufferObject extends LowMemorySpriteVertexBufferObject
    implements ITiledSpriteVertexBufferObject
{

    public LowMemoryTiledSpriteVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateColor(TiledSprite tiledsprite)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        float f = tiledsprite.getColor().getABGRPackedFloat();
        int i = tiledsprite.getTileCount();
        int j = 0;
        int k = 0;
        do
        {
            if (k >= i)
            {
                setDirtyOnHardware();
                return;
            }
            floatbuffer.put(2 + (j + 0), f);
            floatbuffer.put(2 + (j + 5), f);
            floatbuffer.put(2 + (j + 10), f);
            floatbuffer.put(2 + (j + 15), f);
            floatbuffer.put(2 + (j + 20), f);
            floatbuffer.put(2 + (j + 25), f);
            j += 30;
            k++;
        } while (true);
    }

    public void onUpdateTextureCoordinates(TiledSprite tiledsprite)
    {
        FloatBuffer floatbuffer;
        ITiledTextureRegion itiledtextureregion;
        int i;
        int j;
        int k;
        floatbuffer = mFloatBuffer;
        itiledtextureregion = tiledsprite.getTiledTextureRegion();
        i = tiledsprite.getTileCount();
        j = 0;
        k = 0;
_L3:
        ITextureRegion itextureregion;
        if (k >= i)
        {
            setDirtyOnHardware();
            return;
        }
        itextureregion = itiledtextureregion.getTextureRegion(k);
        if (!tiledsprite.isFlippedVertical()) goto _L2; else goto _L1
_L1:
        float f;
        float f1;
        float f2;
        float f3;
        if (tiledsprite.isFlippedHorizontal())
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
_L4:
        if (itextureregion.isRotated())
        {
            floatbuffer.put(3 + (j + 0), f1);
            floatbuffer.put(4 + (j + 0), f2);
            floatbuffer.put(3 + (j + 5), f);
            floatbuffer.put(4 + (j + 5), f2);
            floatbuffer.put(3 + (j + 10), f1);
            floatbuffer.put(4 + (j + 10), f3);
            floatbuffer.put(3 + (j + 15), f1);
            floatbuffer.put(4 + (j + 15), f3);
            floatbuffer.put(3 + (j + 20), f);
            floatbuffer.put(4 + (j + 20), f2);
            floatbuffer.put(3 + (j + 25), f);
            floatbuffer.put(4 + (j + 25), f3);
        } else
        {
            floatbuffer.put(3 + (j + 0), f);
            floatbuffer.put(4 + (j + 0), f2);
            floatbuffer.put(3 + (j + 5), f);
            floatbuffer.put(4 + (j + 5), f3);
            floatbuffer.put(3 + (j + 10), f1);
            floatbuffer.put(4 + (j + 10), f2);
            floatbuffer.put(3 + (j + 15), f1);
            floatbuffer.put(4 + (j + 15), f2);
            floatbuffer.put(3 + (j + 20), f);
            floatbuffer.put(4 + (j + 20), f3);
            floatbuffer.put(3 + (j + 25), f1);
            floatbuffer.put(4 + (j + 25), f3);
        }
        j += 30;
        k++;
        if (true) goto _L3; else goto _L2
_L2:
        if (tiledsprite.isFlippedHorizontal())
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
          goto _L4
    }

    public void onUpdateVertices(TiledSprite tiledsprite)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        float f = tiledsprite.getWidth();
        float f1 = tiledsprite.getHeight();
        int i = tiledsprite.getTileCount();
        int j = 0;
        int k = 0;
        do
        {
            if (k >= i)
            {
                setDirtyOnHardware();
                return;
            }
            floatbuffer.put(0 + (j + 0), 0.0F);
            floatbuffer.put(1 + (j + 0), 0.0F);
            floatbuffer.put(0 + (j + 5), 0.0F);
            floatbuffer.put(1 + (j + 5), f1);
            floatbuffer.put(0 + (j + 10), f);
            floatbuffer.put(1 + (j + 10), 0.0F);
            floatbuffer.put(0 + (j + 15), f);
            floatbuffer.put(1 + (j + 15), 0.0F);
            floatbuffer.put(0 + (j + 20), 0.0F);
            floatbuffer.put(1 + (j + 20), f1);
            floatbuffer.put(0 + (j + 25), f);
            floatbuffer.put(1 + (j + 25), f1);
            j += 30;
            k++;
        } while (true);
    }
}
