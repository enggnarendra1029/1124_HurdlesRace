// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive.vbo;

import java.nio.FloatBuffer;
import org.andengine.entity.primitive.Line;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.LowMemoryVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.primitive.vbo:
//            ILineVertexBufferObject

public class LowMemoryLineVertexBufferObject extends LowMemoryVertexBufferObject
    implements ILineVertexBufferObject
{

    public LowMemoryLineVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateColor(Line line)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        float f = line.getColor().getABGRPackedFloat();
        floatbuffer.put(2, f);
        floatbuffer.put(5, f);
        setDirtyOnHardware();
    }

    public void onUpdateVertices(Line line)
    {
        FloatBuffer floatbuffer = mFloatBuffer;
        floatbuffer.put(0, 0.0F);
        floatbuffer.put(1, 0.0F);
        floatbuffer.put(3, line.getX2() - line.getX1());
        floatbuffer.put(4, line.getY2() - line.getY1());
        setDirtyOnHardware();
    }
}
