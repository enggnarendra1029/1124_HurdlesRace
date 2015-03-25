// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene;

import org.andengine.input.touch.TouchEvent;

// Referenced classes of package org.andengine.entity.scene:
//            Scene

public interface IOnSceneTouchListener
{

    public abstract boolean onSceneTouchEvent(Scene scene, TouchEvent touchevent);
}
