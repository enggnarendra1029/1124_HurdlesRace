// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.item;

import org.andengine.entity.shape.IAreaShape;

public interface IMenuItem
    extends IAreaShape
{

    public abstract int getID();

    public abstract void onSelected();

    public abstract void onUnselected();
}
