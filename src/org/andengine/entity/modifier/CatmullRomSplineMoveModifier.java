// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            CardinalSplineMoveModifier

public class CatmullRomSplineMoveModifier extends CardinalSplineMoveModifier
{
    public class CatmullRomMoveModifierConfig extends CardinalSplineMoveModifier.CardinalSplineMoveModifierConfig
    {

        private static final int CARDINALSPLINE_CATMULLROM_TENSION;
        final CatmullRomSplineMoveModifier this$0;

        public CatmullRomMoveModifierConfig(int i)
        {
            this$0 = CatmullRomSplineMoveModifier.this;
            super(i, 0.0F);
        }
    }


    public CatmullRomSplineMoveModifier(float f, CatmullRomMoveModifierConfig catmullrommovemodifierconfig)
    {
        super(f, catmullrommovemodifierconfig);
    }

    public CatmullRomSplineMoveModifier(float f, CatmullRomMoveModifierConfig catmullrommovemodifierconfig, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        super(f, catmullrommovemodifierconfig, ientitymodifierlistener);
    }

    public CatmullRomSplineMoveModifier(float f, CatmullRomMoveModifierConfig catmullrommovemodifierconfig, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, catmullrommovemodifierconfig, ientitymodifierlistener, ieasefunction);
    }

    public CatmullRomSplineMoveModifier(float f, CatmullRomMoveModifierConfig catmullrommovemodifierconfig, IEaseFunction ieasefunction)
    {
        super(f, catmullrommovemodifierconfig, ieasefunction);
    }
}
