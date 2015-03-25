// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive.vbo;

import org.andengine.entity.primitive.Line;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.HighPerformanceVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.primitive.vbo:
//            ILineVertexBufferObject

public class HighPerformanceLineVertexBufferObject extends HighPerformanceVertexBufferObject
    implements ILineVertexBufferObject
{

    public HighPerformanceLineVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, i, drawtype, flag, vertexbufferobjectattributes);
    }

    public void onUpdateColor(Line line)
    {
        float af[] = mBufferData;
        float f = line.getColor().getABGRPackedFloat();
        af[2] = f;
        af[5] = f;
        setDirtyOnHardware();
    }

    public void onUpdateVertices(Line line)
    {
        float af[] = mBufferData;
        af[0] = 0.0F;
        af[1] = 0.0F;
        af[3] = line.getX2() - line.getX1();
        af[4] = line.getY2() - line.getY1();
        setDirtyOnHardware();
    }
}
