// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.primitive.vbo;

import org.andengine.entity.primitive.Mesh;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.HighPerformanceVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.primitive.vbo:
//            IMeshVertexBufferObject

public class HighPerformanceMeshVertexBufferObject extends HighPerformanceVertexBufferObject
    implements IMeshVertexBufferObject
{

    private final int mVertexCount;

    public HighPerformanceMeshVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, float af[], int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        super(vertexbufferobjectmanager, af, drawtype, flag, vertexbufferobjectattributes);
        mVertexCount = i;
    }

    public void onUpdateColor(Mesh mesh)
    {
        float af[] = mBufferData;
        float f = mesh.getColor().getABGRPackedFloat();
        int i = 0;
        do
        {
            if (i >= mVertexCount)
            {
                setDirtyOnHardware();
                return;
            }
            af[2 + i * 3] = f;
            i++;
        } while (true);
    }

    public void onUpdateVertices(Mesh mesh)
    {
        setDirtyOnHardware();
    }
}
