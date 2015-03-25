// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo.attribute;


// Referenced classes of package org.andengine.opengl.vbo.attribute:
//            VertexBufferObjectAttribute

public class VertexBufferObjectAttributes
{

    private final int mStride;
    private final VertexBufferObjectAttribute mVertexBufferObjectAttributes[];

    public transient VertexBufferObjectAttributes(int i, VertexBufferObjectAttribute avertexbufferobjectattribute[])
    {
        mVertexBufferObjectAttributes = avertexbufferobjectattribute;
        mStride = i;
    }

    public void glVertexAttribPointers()
    {
        VertexBufferObjectAttribute avertexbufferobjectattribute[] = mVertexBufferObjectAttributes;
        int i = mStride;
        int j = avertexbufferobjectattribute.length;
        int k = 0;
        do
        {
            if (k >= j)
            {
                return;
            }
            avertexbufferobjectattribute[k].glVertexAttribPointer(i);
            k++;
        } while (true);
    }
}
