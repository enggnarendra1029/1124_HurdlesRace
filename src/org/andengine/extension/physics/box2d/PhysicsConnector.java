// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.entity.shape.IAreaShape;
import org.andengine.entity.shape.IShape;
import org.andengine.extension.physics.box2d.util.constants.PhysicsConstants;
import org.andengine.util.math.MathUtils;

public class PhysicsConnector
    implements IUpdateHandler, PhysicsConstants
{

    protected final Body mBody;
    protected final float mPixelToMeterRatio;
    protected final IShape mShape;
    protected final float mShapeHalfBaseHeight;
    protected final float mShapeHalfBaseWidth;
    protected boolean mUpdatePosition;
    protected boolean mUpdateRotation;

    public PhysicsConnector(IAreaShape iareashape, Body body)
    {
        this(iareashape, body, true, true);
    }

    public PhysicsConnector(IAreaShape iareashape, Body body, float f)
    {
        this(iareashape, body, true, true, f);
    }

    public PhysicsConnector(IAreaShape iareashape, Body body, boolean flag, boolean flag1)
    {
        this(iareashape, body, flag, flag1, 32F);
    }

    public PhysicsConnector(IAreaShape iareashape, Body body, boolean flag, boolean flag1, float f)
    {
        mShape = iareashape;
        mBody = body;
        mUpdatePosition = flag;
        mUpdateRotation = flag1;
        mPixelToMeterRatio = f;
        mShapeHalfBaseWidth = 0.5F * iareashape.getWidth();
        mShapeHalfBaseHeight = 0.5F * iareashape.getHeight();
    }

    public Body getBody()
    {
        return mBody;
    }

    public IShape getShape()
    {
        return mShape;
    }

    public boolean isUpdatePosition()
    {
        return mUpdatePosition;
    }

    public boolean isUpdateRotation()
    {
        return mUpdateRotation;
    }

    public void onUpdate(float f)
    {
        IShape ishape = mShape;
        Body body = mBody;
        if (mUpdatePosition)
        {
            Vector2 vector2 = body.getPosition();
            float f1 = mPixelToMeterRatio;
            ishape.setPosition(f1 * vector2.x - mShapeHalfBaseWidth, f1 * vector2.y - mShapeHalfBaseHeight);
        }
        if (mUpdateRotation)
        {
            ishape.setRotation(MathUtils.radToDeg(body.getAngle()));
        }
    }

    public void reset()
    {
    }

    public void setUpdatePosition(boolean flag)
    {
        mUpdatePosition = flag;
    }

    public void setUpdateRotation(boolean flag)
    {
        mUpdateRotation = flag;
    }
}
