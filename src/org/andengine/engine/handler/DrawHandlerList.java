// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.handler;

import org.andengine.engine.camera.Camera;
import org.andengine.opengl.util.GLState;
import org.andengine.util.adt.list.SmartList;

// Referenced classes of package org.andengine.engine.handler:
//            IDrawHandler

public class DrawHandlerList extends SmartList
    implements IDrawHandler
{

    private static final long serialVersionUID = 0x1886cc80c04620beL;

    public DrawHandlerList()
    {
    }

    public DrawHandlerList(int i)
    {
        super(i);
    }

    public void onDraw(GLState glstate, Camera camera)
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return;
            }
            ((IDrawHandler)get(i)).onDraw(glstate, camera);
            i--;
        } while (true);
    }
}
