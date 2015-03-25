// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive.vbo;

import org.andengine.entity.primitive.Rectangle;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.HighPerformanceVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.primitive.vbo:
//            IRectangleVertexBufferObject

public class HighPerformanceRectangleVertexBufferObject extends HighPerformanceVertexBufferObject
    implements IRectangleVertexBufferObject
{

    public HighPerformanceRectangleVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateColor(Rectangle rectangle)
    {
        float af[] = mBufferData;
        float f = rectangle.getColor().getABGRPackedFloat();
        af[2] = f;
        af[5] = f;
        af[8] = f;
        af[11] = f;
        setDirtyOnHardware();
    }

    public void onUpdateVertices(Rectangle rectangle)
    {
        float af[] = mBufferData;
        float f = rectangle.getWidth();
        float f1 = rectangle.getHeight();
        af[0] = 0.0F;
        af[1] = 0.0F;
        af[3] = 0.0F;
        af[4] = f1;
        af[6] = f;
        af[7] = 0.0F;
        af[9] = f;
        af[10] = f1;
        setDirtyOnHardware();
    }
}
