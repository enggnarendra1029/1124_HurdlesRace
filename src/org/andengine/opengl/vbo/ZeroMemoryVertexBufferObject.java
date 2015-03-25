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

public abstract class ZeroMemoryVertexBufferObject
    implements IVertexBufferObject
{

    protected final boolean mAutoDispose;
    protected final int mCapacity;
    protected boolean mDirtyOnHardware;
    protected boolean mDisposed;
    protected int mHardwareBufferID;
    protected final int mUsage;
    protected final VertexBufferObjectAttributes mVertexBufferObjectAttributes;
    protected final VertexBufferObjectManager mVertexBufferObjectManager;

    public ZeroMemoryVertexBufferObject(VertexBufferObjectManager vertexbufferobjectmanager, int i, DrawType drawtype, boolean flag, VertexBufferObjectAttributes vertexbufferobjectattributes)
    {
        mHardwareBufferID = -1;
        mDirtyOnHardware = true;
        mVertexBufferObjectManager = vertexbufferobjectmanager;
        mCapacity = i;
        mUsage = drawtype.getUsage();
        mAutoDispose = flag;
        mVertexBufferObjectAttributes = vertexbufferobjectattributes;
    }

    private void loadToHardware(GLState glstate)
    {
        mHardwareBufferID = glstate.generateBuffer();
        mDirtyOnHardware = true;
    }

    protected ByteBuffer aquireByteBuffer()
    {
        ByteBuffer bytebuffer = BufferUtils.allocateDirectByteBuffer(getByteCapacity());
        bytebuffer.order(ByteOrder.nativeOrder());
        return bytebuffer;
    }

    public void bind(GLState glstate)
    {
        ByteBuffer bytebuffer;
        if (mHardwareBufferID == -1)
        {
            loadToHardware(glstate);
            mVertexBufferObjectManager.onVertexBufferObjectLoaded(this);
        }
        glstate.bindArrayBuffer(mHardwareBufferID);
        if (!mDirtyOnHardware)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        bytebuffer = null;
        bytebuffer = aquireByteBuffer();
        onPopulateBufferData(bytebuffer);
        GLES20.glBufferData(34962, bytebuffer.limit(), bytebuffer, mUsage);
        if (bytebuffer != null)
        {
            releaseByteBuffer(bytebuffer);
        }
        mDirtyOnHardware = false;
        return;
        Exception exception;
        exception;
        if (bytebuffer != null)
        {
            releaseByteBuffer(bytebuffer);
        }
        throw exception;
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
            mVertexBufferObjectManager.onUnloadVertexBufferObject(this);
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
        return 4 * mCapacity;
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

    public int getHeapMemoryByteSize()
    {
        return 0;
    }

    public int getNativeHeapMemoryByteSize()
    {
        return 0;
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

    protected abstract void onPopulateBufferData(ByteBuffer bytebuffer);

    protected void releaseByteBuffer(ByteBuffer bytebuffer)
    {
        BufferUtils.freeDirectByteBuffer(bytebuffer);
    }

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
