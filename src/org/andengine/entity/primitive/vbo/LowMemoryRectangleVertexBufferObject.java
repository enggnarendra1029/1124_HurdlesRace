// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive.vbo;

import java.nio.FloatBuffer;
import org.andengine.entity.primitive.Rectangle;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.LowMemoryVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.primitive.vbo:
//            IRectangleVertexBufferObject

public class LowMemoryRectangleVertexBufferObject extends LowMemoryVertexBufferObject
    implements IRectangleVertexBufferObject
{

    public LowMemoryRectangleVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateColor(Rectangle rectangle)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        float f = rectangle.getColor().getABGRPackedFloat();
        floatbuffer.put(2, f);
        floatbuffer.put(5, f);
        floatbuffer.put(8, f);
        floatbuffer.put(11, f);
        setDirtyOnHardware();
    }

    public void onUpdateVertices(Rectangle rectangle)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        float f = rectangle.getWidth();
        float f1 = rectangle.getHeight();
        floatbuffer.put(0, 0.0F);
        floatbuffer.put(1, 0.0F);
        floatbuffer.put(3, 0.0F);
        floatbuffer.put(4, f1);
        floatbuffer.put(6, f);
        floatbuffer.put(7, 0.0F);
        floatbuffer.put(9, f);
        floatbuffer.put(10, f1);
        setDirtyOnHardware();
    }
}
