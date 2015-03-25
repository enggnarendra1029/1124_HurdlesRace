// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.animator;

import java.util.ArrayList;
import org.andengine.entity.scene.menu.item.IMenuItem;
import org.andengine.util.HorizontalAlign;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.scene.menu.animator:
//            IMenuAnimator

public abstract class BaseMenuAnimator
    implements IMenuAnimator
{

    protected static final float DURATION = 1F;
    private static final HorizontalAlign HORIZONTALALIGN_DEFAULT;
    private static final float MENUITEMSPACING_DEFAULT = 1F;
    protected final IEaseFunction mEaseFunction;
    protected final HorizontalAlign mHorizontalAlign;
    protected final float mMenuItemSpacing;

    public BaseMenuAnimator()
    {
        this(1.0F);
    }

    public BaseMenuAnimator(float f)
    {
        this(HORIZONTALALIGN_DEFAULT, f);
    }

    public BaseMenuAnimator(float f, IEaseFunction ieasefunction)
    {
        this(HORIZONTALALIGN_DEFAULT, f, ieasefunction);
    }

    public BaseMenuAnimator(HorizontalAlign horizontalalign)
    {
        this(horizontalalign, 1.0F);
    }

    public BaseMenuAnimator(HorizontalAlign horizontalalign, float f)
    {
        this(horizontalalign, f, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public BaseMenuAnimator(HorizontalAlign horizontalalign, float f, IEaseFunction ieasefunction)
    {
        mHorizontalAlign = horizontalalign;
        mMenuItemSpacing = f;
        mEaseFunction = ieasefunction;
    }

    public BaseMenuAnimator(HorizontalAlign horizontalalign, IEaseFunction ieasefunction)
    {
        this(horizontalalign, 1.0F, ieasefunction);
    }

    public BaseMenuAnimator(IEaseFunction ieasefunction)
    {
        this(1.0F, ieasefunction);
    }

    protected float getMaximumWidth(ArrayList arraylist)
    {
        float f = 1.401298E-45F;
        int i = -1 + arraylist.size();
        do
        {
            if (i < 0)
            {
                return f;
            }
            f = Math.max(f, ((IMenuItem)arraylist.get(i)).getWidthScaled());
            i--;
        } while (true);
    }

    protected float getOverallHeight(ArrayList arraylist)
    {
        float f = 0.0F;
        int i = -1 + arraylist.size();
        do
        {
            if (i < 0)
            {
                return f + (float)(-1 + arraylist.size()) * mMenuItemSpacing;
            }
            f += ((IMenuItem)arraylist.get(i)).getHeight();
            i--;
        } while (true);
    }

    static 
    {
        HORIZONTALALIGN_DEFAULT = HorizontalAlign.CENTER;
    }
}
