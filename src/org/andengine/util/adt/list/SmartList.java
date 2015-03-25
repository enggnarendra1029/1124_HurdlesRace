// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.adt.list;

import java.util.ArrayList;
import java.util.List;
import org.andengine.util.IMatcher;
import org.andengine.util.call.ParameterCallable;

public class SmartList extends ArrayList
{

    private static final long serialVersionUID = 0x781f1d9385e4b86bL;

    public SmartList()
    {
    }

    public SmartList(int i)
    {
        super(i);
    }

    public void addFirst(Object obj)
    {
        add(0, obj);
    }

    public void addLast(Object obj)
    {
        add(size(), obj);
    }

    public void call(IMatcher imatcher, ParameterCallable parametercallable)
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return;
            }
            Object obj = get(i);
            if (imatcher.matches(obj))
            {
                parametercallable.call(obj);
            }
            i--;
        } while (true);
    }

    public void call(ParameterCallable parametercallable)
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return;
            }
            parametercallable.call(get(i));
            i--;
        } while (true);
    }

    public void clear(ParameterCallable parametercallable)
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return;
            }
            parametercallable.call(remove(i));
            i--;
        } while (true);
    }

    public Object get(IMatcher imatcher)
    {
        int i;
        int j;
        i = size();
        j = 0;
_L6:
        if (j < i) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L4:
        return obj;
_L2:
        obj = get(j);
        if (imatcher.matches(obj)) goto _L4; else goto _L3
_L3:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public Object getFirst()
        throws IndexOutOfBoundsException
    {
        return get(0);
    }

    public Object getLast()
        throws IndexOutOfBoundsException
    {
        return get(-1 + size());
    }

    public int indexOf(IMatcher imatcher)
    {
        int i;
        int j;
        i = size();
        j = 0;
_L6:
        if (j < i) goto _L2; else goto _L1
_L1:
        j = -1;
_L4:
        return j;
_L2:
        if (imatcher.matches(get(j))) goto _L4; else goto _L3
_L3:
        j++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public int lastIndexOf(IMatcher imatcher)
    {
        int i = -1 + size();
_L6:
        if (i >= 0) goto _L2; else goto _L1
_L1:
        i = -1;
_L4:
        return i;
_L2:
        if (imatcher.matches(get(i))) goto _L4; else goto _L3
_L3:
        i--;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public ArrayList query(IMatcher imatcher)
    {
        return (ArrayList)query(imatcher, ((List) (new ArrayList())));
    }

    public List query(IMatcher imatcher, List list)
    {
        int i = size();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return list;
            }
            Object obj = get(j);
            if (imatcher.matches(obj))
            {
                list.add(obj);
            }
            j++;
        } while (true);
    }

    public ArrayList queryForSubclass(IMatcher imatcher)
    {
        return (ArrayList)queryForSubclass(imatcher, ((List) (new ArrayList())));
    }

    public List queryForSubclass(IMatcher imatcher, List list)
    {
        int i = size();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return list;
            }
            Object obj = get(j);
            if (imatcher.matches(obj))
            {
                list.add(obj);
            }
            j++;
        } while (true);
    }

    public Object remove(IMatcher imatcher)
    {
        int i = 0;
        do
        {
            if (i >= size())
            {
                return null;
            }
            if (imatcher.matches(get(i)))
            {
                return remove(i);
            }
            i++;
        } while (true);
    }

    public Object remove(IMatcher imatcher, ParameterCallable parametercallable)
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return null;
            }
            if (imatcher.matches(get(i)))
            {
                Object obj = remove(i);
                parametercallable.call(obj);
                return obj;
            }
            i--;
        } while (true);
    }

    public boolean remove(Object obj, ParameterCallable parametercallable)
    {
        boolean flag = remove(obj);
        if (flag)
        {
            parametercallable.call(obj);
        }
        return flag;
    }

    public boolean removeAll(IMatcher imatcher)
    {
        boolean flag = false;
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return flag;
            }
            if (imatcher.matches(get(i)))
            {
                remove(i);
                flag = true;
            }
            i--;
        } while (true);
    }

    public boolean removeAll(IMatcher imatcher, ParameterCallable parametercallable)
    {
        boolean flag = false;
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return flag;
            }
            if (imatcher.matches(get(i)))
            {
                parametercallable.call(remove(i));
                flag = true;
            }
            i--;
        } while (true);
    }

    public Object removeFirst()
        throws IndexOutOfBoundsException
    {
        return remove(0);
    }

    public Object removeLast()
        throws IndexOutOfBoundsException
    {
        return remove(-1 + size());
    }
}
