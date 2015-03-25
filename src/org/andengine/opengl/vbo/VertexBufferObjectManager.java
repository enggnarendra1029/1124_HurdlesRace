// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.vbo;

import java.util.ArrayList;
import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.opengl.vbo:
//            IVertexBufferObject

public class VertexBufferObjectManager
{

    private final ArrayList mVertexBufferObjectsLoaded = new ArrayList();
    private final ArrayList mVertexBufferObjectsToBeUnloaded = new ArrayList();

    public VertexBufferObjectManager()
    {
    }

    public int getGPUHeapMemoryByteSize()
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
        ArrayList arraylist;
        int j;
        arraylist = mVertexBufferObjectsLoaded;
        j = arraylist.size();
        int k = j - 1;
_L2:
        if (k < 0)
        {
            return i;
        }
        int l = ((IVertexBufferObject)arraylist.get(k)).getGPUMemoryByteSize();
        i += l;
        k--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public int getHeapMemoryByteSize()
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
        ArrayList arraylist;
        int j;
        arraylist = mVertexBufferObjectsLoaded;
        j = arraylist.size();
        int k = j - 1;
_L2:
        if (k < 0)
        {
            return i;
        }
        int l = ((IVertexBufferObject)arraylist.get(k)).getHeapMemoryByteSize();
        i += l;
        k--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public int getNativeHeapMemoryByteSize()
    {
        this;
        JVM INSTR monitorenter ;
        int i = 0;
        ArrayList arraylist;
        int j;
        arraylist = mVertexBufferObjectsLoaded;
        j = arraylist.size();
        int k = j - 1;
_L2:
        if (k < 0)
        {
            return i;
        }
        int l = ((IVertexBufferObject)arraylist.get(k)).getNativeHeapMemoryByteSize();
        i += l;
        k--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void onCreate()
    {
    }

    public void onDestroy()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        int i;
        arraylist = mVertexBufferObjectsLoaded;
        i = -1 + arraylist.size();
_L2:
        if (i >= 0)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        arraylist.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        ((IVertexBufferObject)arraylist.get(i)).setNotLoadedToHardware();
        i--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void onReload()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        int i;
        arraylist = mVertexBufferObjectsLoaded;
        i = -1 + arraylist.size();
_L2:
        if (i >= 0)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        arraylist.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        ((IVertexBufferObject)arraylist.get(i)).setNotLoadedToHardware();
        i--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void onUnloadVertexBufferObject(IVertexBufferObject ivertexbufferobject)
    {
        this;
        JVM INSTR monitorenter ;
        if (mVertexBufferObjectsLoaded.remove(ivertexbufferobject))
        {
            mVertexBufferObjectsToBeUnloaded.add(ivertexbufferobject);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onVertexBufferObjectLoaded(IVertexBufferObject ivertexbufferobject)
    {
        this;
        JVM INSTR monitorenter ;
        mVertexBufferObjectsLoaded.add(ivertexbufferobject);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void updateVertexBufferObjects(GLState glstate)
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        ArrayList arraylist1;
        int i;
        arraylist = mVertexBufferObjectsLoaded;
        arraylist1 = mVertexBufferObjectsToBeUnloaded;
        i = arraylist1.size();
        int j = i - 1;
_L2:
        if (j < 0)
        {
            return;
        }
        IVertexBufferObject ivertexbufferobject = (IVertexBufferObject)arraylist1.remove(j);
        if (ivertexbufferobject.isLoadedToHardware())
        {
            ivertexbufferobject.unloadFromHardware(glstate);
        }
        arraylist.remove(ivertexbufferobject);
        j--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }
}
