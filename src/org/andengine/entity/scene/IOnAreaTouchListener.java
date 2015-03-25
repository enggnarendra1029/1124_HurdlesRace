// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene;

import org.andengine.input.touch.TouchEvent;

// Referenced classes of package org.andengine.entity.scene:
//            ITouchArea

public interface IOnAreaTouchListener
{

    public abstract boolean onAreaTouched(TouchEvent touchevent, ITouchArea itoucharea, float f, float f1);
}
