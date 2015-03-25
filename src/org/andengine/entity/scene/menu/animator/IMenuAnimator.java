// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.animator;

import java.util.ArrayList;

// Referenced classes of package org.andengine.entity.scene.menu.animator:
//            AlphaMenuAnimator

public interface IMenuAnimator
{

    public static final IMenuAnimator DEFAULT = new AlphaMenuAnimator();

    public abstract void buildAnimations(ArrayList arraylist, float f, float f1);

    public abstract void prepareAnimations(ArrayList arraylist, float f, float f1);

}
