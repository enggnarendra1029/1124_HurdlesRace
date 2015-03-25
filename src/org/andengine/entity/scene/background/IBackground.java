// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background;

import org.andengine.engine.handler.IDrawHandler;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.util.color.Color;
import org.andengine.util.modifier.IModifier;

public interface IBackground
    extends IDrawHandler, IUpdateHandler
{

    public abstract void clearBackgroundModifiers();

    public abstract boolean isColorEnabled();

    public abstract void registerBackgroundModifier(IModifier imodifier);

    public abstract void setColor(float f, float f1, float f2);

    public abstract void setColor(float f, float f1, float f2, float f3);

    public abstract void setColor(Color color);

    public abstract void setColorEnabled(boolean flag);

    public abstract boolean unregisterBackgroundModifier(IModifier imodifier);
}
