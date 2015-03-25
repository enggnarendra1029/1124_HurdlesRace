// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.animator;

import java.util.ArrayList;
import org.andengine.entity.scene.menu.item.IMenuItem;
import org.andengine.util.HorizontalAlign;

// Referenced classes of package org.andengine.entity.scene.menu.animator:
//            BaseMenuAnimator

public class DirectMenuAnimator extends BaseMenuAnimator
{

    private static int $SWITCH_TABLE$org$andengine$util$HorizontalAlign[];

    static int[] $SWITCH_TABLE$org$andengine$util$HorizontalAlign()
    {
        int ai[] = $SWITCH_TABLE$org$andengine$util$HorizontalAlign;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[HorizontalAlign.values().length];
        try
        {
            ai1[HorizontalAlign.CENTER.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[HorizontalAlign.LEFT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[HorizontalAlign.RIGHT.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        $SWITCH_TABLE$org$andengine$util$HorizontalAlign = ai1;
        return ai1;
    }

    public DirectMenuAnimator()
    {
    }

    public DirectMenuAnimator(float f)
    {
        super(f);
    }

    public DirectMenuAnimator(HorizontalAlign horizontalalign)
    {
        super(horizontalalign);
    }

    public DirectMenuAnimator(HorizontalAlign horizontalalign, float f)
    {
        super(horizontalalign, f);
    }

    public void buildAnimations(ArrayList arraylist, float f, float f1)
    {
    }

    public void prepareAnimations(ArrayList arraylist, float f, float f1)
    {
        float f2;
        float f4;
        float f5;
        float f6;
        float f7;
        int i;
        int j;
        f2 = getMaximumWidth(arraylist);
        float f3 = getOverallHeight(arraylist);
        f4 = 0.5F * (f - f2);
        f5 = 0.5F * (f1 - f3);
        f6 = mMenuItemSpacing;
        f7 = 0.0F;
        i = arraylist.size();
        j = 0;
_L2:
        IMenuItem imenuitem;
        float f8;
        if (j >= i)
        {
            return;
        }
        imenuitem = (IMenuItem)arraylist.get(j);
        switch ($SWITCH_TABLE$org$andengine$util$HorizontalAlign()[mHorizontalAlign.ordinal()])
        {
        case 2: // '\002'
        default:
            f8 = 0.5F * (f2 - imenuitem.getWidthScaled());
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 3: // '\003'
            break MISSING_BLOCK_LABEL_167;
        }
_L3:
        imenuitem.setPosition(f4 + f8, f5 + f7);
        f7 += f6 + imenuitem.getHeight();
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        f8 = 0.0F;
          goto _L3
        f8 = f2 - imenuitem.getWidthScaled();
          goto _L3
    }
}
