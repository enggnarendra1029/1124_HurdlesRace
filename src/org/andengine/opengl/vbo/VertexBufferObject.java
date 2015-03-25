// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo;

import android.opengl.GLES20;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.util.BufferUtils;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.attribute.VertexBufferObjectAttributes;

// Referenced classes of package org.andengine.opengl.vbo:
//            IVertexBufferObject, DrawType, VertexBufferObjectManager

public abstract class VertexBufferObject
    implements IVertexBufferObject
{

    protected final boolean mAutoDispose;
    protected final ByteBuffer mByteBuffer;
    protected final int mCapacity;
    protected boolean mDirtyOnHardware;
    protected boolean mDisposed;
    protected int mHardwareBufferID;
    protected final int mUsage;
    protected final VertexBufferObjectAttributes mVertexBufferObjectAttributes;
    protected final VertexBufferObjectManager mVertexBufferObjectManager;

    public VertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        mHardwareBufferID = -1;
        mDirtyOnHardware = true;
        mVertexBufferObjectManager = vertexbufferobjectmanager;
        mCapacity = i;
        mUsage = drawtype.getUsage();
        mAutoDispose = flag;
        mVertexBufferObjectAttributes = vertexbufferobjectattributes;
        mByteBuffer = BufferUtils.allocateDirectByteBuffer(i * 4);
        mByteBuffer.order(ByteOrder.nativeOrder());
    }

    private void loadToHardware(GLState glstate)
    {
        mHardwareBufferID = glstate.generateBuffer();
        mDirtyOnHardware = true;
    }

    public void bind(GLState glstate)
    {
        if (mHardwareBufferID == -1)
        {
            loadToHardware(glstate);
            if (mVertexBufferObjectManager != null)
            {
                mVertexBufferObjectManager.onVertexBufferObjectLoaded(this);
            }
        }
        glstate.bindArrayBuffer(mHardwareBufferID);
        if (mDirtyOnHardware)
        {
            onBufferData();
            mDirtyOnHardware = false;
        }
    }

    public void bind(GLState glstate, ShaderProgram shaderprogram)
    {
        bind(glstate);
        shaderprogram.bind(glstate, mVertexBufferObjectAttributes);
    }

    public void dispose()
    {
        if (!mDisposed)
        {
            mDisposed = true;
            if (mVertexBufferObjectManager != null)
            {
                mVertexBufferObjectManager.onUnloadVertexBufferObject(this);
            }
            BufferUtils.freeDirectByteBuffer(mByteBuffer);
            return;
        } else
        {
            throw new org.andengine.util.IDisposable.AlreadyDisposedException();
        }
    }

    public void draw(int i, int j)
    {
        GLES20.glDrawArrays(i, 0, j);
    }

    public void draw(int i, int j, int k)
    {
        GLES20.glDrawArrays(i, j, k);
    }

    protected void finalize()
        throws Throwable
    {
        super.finalize();
        if (!mDisposed)
        {
            dispose();
        }
    }

    public int getByteCapacity()
    {
        return mByteBuffer.capacity();
    }

    public int getCapacity()
    {
        return mCapacity;
    }

    public int getGPUMemoryByteSize()
    {
        if (isLoadedToHardware())
        {
            return getByteCapacity();
        } else
        {
            return 0;
        }
    }

    public int getHardwareBufferID()
    {
        return mHardwareBufferID;
    }

    public VertexBufferObjectManager getVertexBufferObjectManager()
    {
        return mVertexBufferObjectManager;
    }

    public boolean isAutoDispose()
    {
        return mAutoDispose;
    }

    public boolean isDirtyOnHardware()
    {
        return mDirtyOnHardware;
    }

    public boolean isDisposed()
    {
        return mDisposed;
    }

    public boolean isLoadedToHardware()
    {
        return mHardwareBufferID != -1;
    }

    protected abstract void onBufferData();

    public void setDirtyOnHardware()
    {
        mDirtyOnHardware = true;
    }

    public void setNotLoadedToHardware()
    {
        mHardwareBufferID = -1;
        mDirtyOnHardware = true;
    }

    public void unbind(GLState glstate, ShaderProgram shaderprogram)
    {
        shaderprogram.unbind(glstate);
    }

    public void unloadFromHardware(GLState glstate)
    {
        glstate.deleteArrayBuffer(mHardwareBufferID);
        mHardwareBufferID = -1;
    }
}
