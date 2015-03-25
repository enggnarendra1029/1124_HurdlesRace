// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo.attribute;

import org.andengine.util.exception.AndEngineRuntimeException;
import org.andengine.util.system.SystemUtils;

// Referenced classes of package org.andengine.opengl.vbo.attribute:
//            VertexBufferObjectAttribute, VertexBufferObjectAttributeFix, VertexBufferObjectAttributes

public class VertexBufferObjectAttributesBuilder
{

    private static final boolean WORAROUND_GLES2_GLVERTEXATTRIBPOINTER_MISSING = SystemUtils.isAndroidVersionOrLower(8);
    private int mIndex;
    private int mOffset;
    private final VertexBufferObjectAttribute mVertexBufferObjectAttributes[];

    public VertexBufferObjectAttributesBuilder(int i)
    {
        mVertexBufferObjectAttributes = new VertexBufferObjectAttribute[i];
    }

    public VertexBufferObjectAttributesBuilder add(int i, String s, int j, int k, boolean flag)
    {
        if (WORAROUND_GLES2_GLVERTEXATTRIBPOINTER_MISSING)
        {
            mVertexBufferObjectAttributes[mIndex] = new VertexBufferObjectAttributeFix(i, s, j, k, flag, mOffset);
        } else
        {
            mVertexBufferObjectAttributes[mIndex] = new VertexBufferObjectAttribute(i, s, j, k, flag, mOffset);
        }
        k;
        JVM INSTR lookupswitch 2: default 60
    //                   5121: 144
    //                   5126: 120;
           goto _L1 _L2 _L3
_L1:
        throw new IllegalArgumentException((new StringBuilder("Unexpected pType: '")).append(k).append("'.").toString());
_L3:
        mOffset = mOffset + j * 4;
_L5:
        mIndex = 1 + mIndex;
        return this;
_L2:
        mOffset = mOffset + j * 1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public VertexBufferObjectAttributes build()
    {
        if (mIndex != mVertexBufferObjectAttributes.length)
        {
            throw new AndEngineRuntimeException((new StringBuilder("Not enough ")).append(org/andengine/opengl/vbo/attribute/VertexBufferObjectAttribute.getSimpleName()).append("s added to this ").append(getClass().getSimpleName()).append(".").toString());
        } else
        {
            return new VertexBufferObjectAttributes(mOffset, mVertexBufferObjectAttributes);
        }
    }

}
