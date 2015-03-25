// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.shape;


// Referenced classes of package org.andengine.entity.shape:
//            IShape

public interface IAreaShape
    extends IShape
{

    public abstract float getHeight();

    public abstract float getHeightScaled();

    public abstract float getWidth();

    public abstract float getWidthScaled();

    public abstract void setHeight(float f);

    public abstract void setSize(float f, float f1);

    public abstract void setWidth(float f);
}
