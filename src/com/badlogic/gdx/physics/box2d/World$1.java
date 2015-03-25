// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;

import com.badlogic.gdx.utils.Pool;

// Referenced classes of package com.badlogic.gdx.physics.box2d:
//            World, Body

class this._cls0 extends Pool
{

    final World this$0;

    protected Body newObject()
    {
        return new Body(World.this, 0L);
    }

    protected volatile Object newObject()
    {
        return newObject();
    }

    (int i, int j)
    {
        this$0 = World.this;
        super(i, j);
    }
}
