// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.utils;


// Referenced classes of package com.badlogic.gdx.utils:
//            Array

public abstract class Pool
{
    public static interface Poolable
    {

        public abstract void reset();
    }


    private final Array freeObjects;
    public final int max;

    public Pool()
    {
        this(16, 0x7fffffff);
    }

    public Pool(int i)
    {
        this(i, 0x7fffffff);
    }

    public Pool(int i, int j)
    {
        freeObjects = new Array(false, i);
        max = j;
    }

    public void clear()
    {
        freeObjects.clear();
    }

    public void free(Object obj)
    {
        if (obj == null)
        {
            throw new IllegalArgumentException("object cannot be null.");
        }
        if (freeObjects.size < max)
        {
            freeObjects.add(obj);
        }
        if (obj instanceof Poolable)
        {
            ((Poolable)obj).reset();
        }
    }

    public void freeAll(Array array)
    {
        int i;
        if (array == null)
        {
            throw new IllegalArgumentException("object cannot be null.");
        }
        i = 0;
_L2:
        Object obj;
        if (i >= array.size)
        {
            return;
        }
        obj = array.get(i);
        if (obj != null)
        {
            break; /* Loop/switch isn't completed */
        }
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (freeObjects.size < max)
        {
            freeObjects.add(obj);
        }
        if (obj instanceof Poolable)
        {
            ((Poolable)obj).reset();
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    protected abstract Object newObject();

    public Object obtain()
    {
        if (freeObjects.size == 0)
        {
            return newObject();
        } else
        {
            return freeObjects.pop();
        }
    }
}
