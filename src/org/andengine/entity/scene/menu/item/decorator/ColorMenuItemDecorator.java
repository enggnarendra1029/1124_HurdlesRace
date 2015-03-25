// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.item.decorator;

import org.andengine.entity.scene.menu.item.IMenuItem;
import org.andengine.util.color.Color;

// Referenced classes of package org.andengine.entity.scene.menu.item.decorator:
//            BaseMenuItemDecorator

public class ColorMenuItemDecorator extends BaseMenuItemDecorator
{

    private final Color mSelectedColor;
    private final Color mUnselectedColor;

    public ColorMenuItemDecorator(IMenuItem imenuitem, Color color, Color color1)
    {
        super(imenuitem);
        mSelectedColor = color;
        mUnselectedColor = color1;
        imenuitem.setColor(color1);
    }

    public void onMenuItemReset(IMenuItem imenuitem)
    {
        imenuitem.setColor(mUnselectedColor);
    }

    public void onMenuItemSelected(IMenuItem imenuitem)
    {
        imenuitem.setColor(mSelectedColor);
    }

    public void onMenuItemUnselected(IMenuItem imenuitem)
    {
        imenuitem.setColor(mUnselectedColor);
    }
}
