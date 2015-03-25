// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.item.decorator;

import org.andengine.entity.scene.menu.item.IMenuItem;

// Referenced classes of package org.andengine.entity.scene.menu.item.decorator:
//            BaseMenuItemDecorator

public class ScaleMenuItemDecorator extends BaseMenuItemDecorator
{

    private final float mSelectedScale;
    private final float mUnselectedScale;

    public ScaleMenuItemDecorator(IMenuItem imenuitem, float f, float f1)
    {
        super(imenuitem);
        mSelectedScale = f;
        mUnselectedScale = f1;
        imenuitem.setScale(f1);
    }

    public void onMenuItemReset(IMenuItem imenuitem)
    {
        setScale(mUnselectedScale);
    }

    public void onMenuItemSelected(IMenuItem imenuitem)
    {
        setScale(mSelectedScale);
    }

    public void onMenuItemUnselected(IMenuItem imenuitem)
    {
        setScale(mUnselectedScale);
    }
}
