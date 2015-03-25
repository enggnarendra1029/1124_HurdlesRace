// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.animator;

import java.util.ArrayList;
import org.andengine.entity.modifier.AlphaModifier;
import org.andengine.entity.scene.menu.item.IMenuItem;
import org.andengine.util.HorizontalAlign;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.scene.menu.animator:
//            BaseMenuAnimator

public class AlphaMenuAnimator extends BaseMenuAnimator
{

    private static int $SWITCH_TABLE$org$andengine$util$HorizontalAlign[];
    private static final float ALPHA_FROM = 0F;
    private static final float ALPHA_TO = 1F;

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

    public AlphaMenuAnimator()
    {
    }

    public AlphaMenuAnimator(float f)
    {
        super(f);
    }

    public AlphaMenuAnimator(float f, IEaseFunction ieasefunction)
    {
        super(f, ieasefunction);
    }

    public AlphaMenuAnimator(HorizontalAlign horizontalalign)
    {
        super(horizontalalign);
    }

    public AlphaMenuAnimator(HorizontalAlign horizontalalign, float f)
    {
        super(horizontalalign, f);
    }

    public AlphaMenuAnimator(HorizontalAlign horizontalalign, float f, IEaseFunction ieasefunction)
    {
        super(horizontalalign, f, ieasefunction);
    }

    public AlphaMenuAnimator(HorizontalAlign horizontalalign, IEaseFunction ieasefunction)
    {
        super(horizontalalign, ieasefunction);
    }

    public AlphaMenuAnimator(IEaseFunction ieasefunction)
    {
        super(ieasefunction);
    }

    public void buildAnimations(ArrayList arraylist, float f, float f1)
    {
        IEaseFunction ieasefunction = mEaseFunction;
        int i = -1 + arraylist.size();
        do
        {
            if (i < 0)
            {
                return;
            }
            AlphaModifier alphamodifier = new AlphaModifier(1.0F, 0.0F, 1.0F, ieasefunction);
            alphamodifier.setAutoUnregisterWhenFinished(false);
            ((IMenuItem)arraylist.get(i)).registerEntityModifier(alphamodifier);
            i--;
        } while (true);
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
            break MISSING_BLOCK_LABEL_175;
        }
_L3:
        imenuitem.setPosition(f4 + f8, f5 + f7);
        imenuitem.setAlpha(0.0F);
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
