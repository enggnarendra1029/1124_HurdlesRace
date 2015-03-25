// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import org.andengine.entity.IEntity;
import org.andengine.util.adt.array.ArrayUtils;
import org.andengine.util.math.MathUtils;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            DurationEntityModifier, IEntityModifier

public class CardinalSplineMoveModifier extends DurationEntityModifier
{
    public static class CardinalSplineMoveModifierConfig
    {

        private static final int CONTROLPOINT_COUNT_MINIMUM = 4;
        private final float mControlPointXs[];
        private final float mControlPointYs[];
        final float mTension;

        public CardinalSplineMoveModifierConfig deepCopy()
        {
            int i = getControlPointCount();
            CardinalSplineMoveModifierConfig cardinalsplinemovemodifierconfig = new CardinalSplineMoveModifierConfig(i, mTension);
            System.arraycopy(mControlPointXs, 0, cardinalsplinemovemodifierconfig.mControlPointXs, 0, i);
            System.arraycopy(mControlPointYs, 0, cardinalsplinemovemodifierconfig.mControlPointYs, 0, i);
            return cardinalsplinemovemodifierconfig;
        }

        public CardinalSplineMoveModifierConfig deepCopyReverse()
        {
            CardinalSplineMoveModifierConfig cardinalsplinemovemodifierconfig = deepCopy();
            ArrayUtils.reverse(cardinalsplinemovemodifierconfig.mControlPointXs);
            ArrayUtils.reverse(cardinalsplinemovemodifierconfig.mControlPointYs);
            return cardinalsplinemovemodifierconfig;
        }

        public int getControlPointCount()
        {
            return mControlPointXs.length;
        }

        public float getControlPointX(int i)
        {
            return mControlPointXs[i];
        }

        public float getControlPointY(int i)
        {
            return mControlPointYs[i];
        }

        public void setControlPoint(int i, float f, float f1)
        {
            mControlPointXs[i] = f;
            mControlPointYs[i] = f1;
        }



        public CardinalSplineMoveModifierConfig(int i, float f)
        {
            if (i < 4)
            {
                throw new IllegalArgumentException((new StringBuilder("A ")).append(org/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig.getSimpleName()).append(" needs at least ").append(4).append(" control points.").toString());
            } else
            {
                mTension = f;
                mControlPointXs = new float[i];
                mControlPointYs = new float[i];
                return;
            }
        }
    }


    private final CardinalSplineMoveModifierConfig mCardinalSplineMoveModifierConfig;
    private final int mControlSegmentCount;
    private final float mControlSegmentCountInverse;
    private final IEaseFunction mEaseFunction;

    public CardinalSplineMoveModifier(float f, CardinalSplineMoveModifierConfig cardinalsplinemovemodifierconfig)
    {
        this(f, cardinalsplinemovemodifierconfig, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public CardinalSplineMoveModifier(float f, CardinalSplineMoveModifierConfig cardinalsplinemovemodifierconfig, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, cardinalsplinemovemodifierconfig, ientitymodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public CardinalSplineMoveModifier(float f, CardinalSplineMoveModifierConfig cardinalsplinemovemodifierconfig, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        super(f, ientitymodifierlistener);
        mCardinalSplineMoveModifierConfig = cardinalsplinemovemodifierconfig;
        mEaseFunction = ieasefunction;
        mControlSegmentCount = -1 + cardinalsplinemovemodifierconfig.getControlPointCount();
        mControlSegmentCountInverse = 1.0F / (float)mControlSegmentCount;
    }

    public CardinalSplineMoveModifier(float f, CardinalSplineMoveModifierConfig cardinalsplinemovemodifierconfig, IEaseFunction ieasefunction)
    {
        this(f, cardinalsplinemovemodifierconfig, null, ieasefunction);
    }

    public static final float cardinalSplineX(float f, float f1, float f2, float f3, float f4, float f5)
    {
        float f6 = f4 * f4;
        float f7 = f6 * f4;
        float f8 = (1.0F - f5) / 2.0F;
        float f9 = f8 * ((-f7 + 2.0F * f6) - f4);
        float f10 = f8 * (f6 + -f7) + (1.0F + (2.0F * f7 - 3F * f6));
        float f11 = f8 * (f4 + (f7 - 2.0F * f6)) + (-2F * f7 + 3F * f6);
        float f12 = f8 * (f7 - f6);
        return f * f9 + f1 * f10 + f2 * f11 + f3 * f12;
    }

    public static final float cardinalSplineY(float f, float f1, float f2, float f3, float f4, float f5)
    {
        float f6 = f4 * f4;
        float f7 = f6 * f4;
        float f8 = (1.0F - f5) / 2.0F;
        float f9 = f8 * ((-f7 + 2.0F * f6) - f4);
        float f10 = f8 * (f6 + -f7) + (1.0F + (2.0F * f7 - 3F * f6));
        float f11 = f8 * (f4 + (f7 - 2.0F * f6)) + (-2F * f7 + 3F * f6);
        float f12 = f8 * (f7 - f6);
        return f * f9 + f1 * f10 + f2 * f11 + f3 * f12;
    }

    public CardinalSplineMoveModifier deepCopy()
    {
        return new CardinalSplineMoveModifier(mDuration, mCardinalSplineMoveModifierConfig.deepCopy(), mEaseFunction);
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    protected volatile void onManagedInitialize(Object obj)
    {
        onManagedInitialize((IEntity)obj);
    }

    protected void onManagedInitialize(IEntity ientity)
    {
    }

    protected volatile void onManagedUpdate(float f, Object obj)
    {
        onManagedUpdate(f, (IEntity)obj);
    }

    protected void onManagedUpdate(float f, IEntity ientity)
    {
        float f1 = mEaseFunction.getPercentage(getSecondsElapsed(), mDuration);
        int i;
        int j;
        float f2;
        float f3;
        int k;
        float f4;
        float f5;
        int l;
        float f6;
        float f7;
        int i1;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float f17;
        if (f1 == 1.0F)
        {
            i = mControlSegmentCount;
        } else
        {
            i = (int)(f1 / mControlSegmentCountInverse);
        }
        j = MathUtils.bringToBounds(0, mControlSegmentCount, i - 1);
        f2 = mCardinalSplineMoveModifierConfig.mControlPointXs[j];
        f3 = mCardinalSplineMoveModifierConfig.mControlPointYs[j];
        k = MathUtils.bringToBounds(0, mControlSegmentCount, i);
        f4 = mCardinalSplineMoveModifierConfig.mControlPointXs[k];
        f5 = mCardinalSplineMoveModifierConfig.mControlPointYs[k];
        l = MathUtils.bringToBounds(0, mControlSegmentCount, i + 1);
        f6 = mCardinalSplineMoveModifierConfig.mControlPointXs[l];
        f7 = mCardinalSplineMoveModifierConfig.mControlPointYs[l];
        i1 = MathUtils.bringToBounds(0, mControlSegmentCount, i + 2);
        f8 = mCardinalSplineMoveModifierConfig.mControlPointXs[i1];
        f9 = mCardinalSplineMoveModifierConfig.mControlPointYs[i1];
        f10 = (f1 - (float)i * mControlSegmentCountInverse) / mControlSegmentCountInverse;
        f11 = f10 * f10;
        f12 = f11 * f10;
        f13 = (1.0F - mCardinalSplineMoveModifierConfig.mTension) / 2.0F;
        f14 = f13 * ((-f12 + 2.0F * f11) - f10);
        f15 = f13 * (f11 + -f12) + (1.0F + (2.0F * f12 - 3F * f11));
        f16 = f13 * (f10 + (f12 - 2.0F * f11)) + (-2F * f12 + 3F * f11);
        f17 = f13 * (f12 - f11);
        ientity.setPosition(f2 * f14 + f4 * f15 + f6 * f16 + f8 * f17, f3 * f14 + f5 * f15 + f7 * f16 + f9 * f17);
    }

    public CardinalSplineMoveModifier reverse()
    {
        return new CardinalSplineMoveModifier(mDuration, mCardinalSplineMoveModifierConfig.deepCopyReverse(), mEaseFunction);
    }
}
