// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene;

import org.andengine.input.touch.TouchEvent;
import org.andengine.util.IMatcher;

public interface ITouchArea
{
    public static interface ITouchAreaMatcher
        extends IMatcher
    {
    }


    public abstract boolean contains(float f, float f1);

    public abstract float[] convertLocalToSceneCoordinates(float f, float f1);

    public abstract float[] convertSceneToLocalCoordinates(float f, float f1);

    public abstract boolean onAreaTouched(TouchEvent touchevent, float f, float f1);
}
