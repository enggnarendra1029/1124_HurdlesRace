// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo;

import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.util.GLState;
import org.andengine.util.IDisposable;

// Referenced classes of package org.andengine.opengl.vbo:
//            VertexBufferObjectManager

public interface IVertexBufferObject
    extends IDisposable
{

    public static final int HARDWARE_BUFFER_ID_INVALID = -1;

    public abstract void bind(GLState glstate);

    public abstract void bind(GLState glstate, ShaderProgram shaderprogram);

    public abstract void draw(int i, int j);

    public abstract void draw(int i, int j, int k);

    public abstract int getByteCapacity();

    public abstract int getCapacity();

    public abstract int getGPUMemoryByteSize();

    public abstract int getHardwareBufferID();

    public abstract int getHeapMemoryByteSize();

    public abstract int getNativeHeapMemoryByteSize();

    public abstract VertexBufferObjectManager getVertexBufferObjectManager();

    public abstract boolean isAutoDispose();

    public abstract boolean isDirtyOnHardware();

    public abstract boolean isLoadedToHardware();

    public abstract void setDirtyOnHardware();

    public abstract void setNotLoadedToHardware();

    public abstract void unbind(GLState glstate, ShaderProgram shaderprogram);

    public abstract void unloadFromHardware(GLState glstate);
}
