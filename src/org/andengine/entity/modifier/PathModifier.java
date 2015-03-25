// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.modifier;

import android.util.FloatMath;
import org.andengine.entity.IEntity;
import org.andengine.util.modifier.IModifier;
import org.andengine.util.modifier.SequenceModifier;
import org.andengine.util.modifier.ease.EaseLinear;
import org.andengine.util.modifier.ease.IEaseFunction;

// Referenced classes of package org.andengine.entity.modifier:
//            EntityModifier, MoveModifier, IEntityModifier

public class PathModifier extends EntityModifier
{
    public static interface IPathModifierListener
    {

        public abstract void onPathFinished(PathModifier pathmodifier, IEntity ientity);

        public abstract void onPathStarted(PathModifier pathmodifier, IEntity ientity);

        public abstract void onPathWaypointFinished(PathModifier pathmodifier, IEntity ientity, int i);

        public abstract void onPathWaypointStarted(PathModifier pathmodifier, IEntity ientity, int i);
    }

    public static class Path
    {

        private int mIndex;
        private float mLength;
        private boolean mLengthChanged;
        private final float mXs[];
        private final float mYs[];

        private void updateLength()
        {
            float f = 0.0F;
            int i = -2 + mIndex;
            do
            {
                if (i < 0)
                {
                    mLength = f;
                    return;
                }
                f += getSegmentLength(i);
                i--;
            } while (true);
        }

        public Path deepCopy()
        {
            return new Path(this);
        }

        public float[] getCoordinatesX()
        {
            return mXs;
        }

        public float[] getCoordinatesY()
        {
            return mYs;
        }

        public float getLength()
        {
            if (mLengthChanged)
            {
                updateLength();
            }
            return mLength;
        }

        public float getSegmentLength(int i)
        {
            float af[] = mXs;
            float af1[] = mYs;
            int j = i + 1;
            float f = af[i] - af[j];
            float f1 = af1[i] - af1[j];
            return FloatMath.sqrt(f * f + f1 * f1);
        }

        public int getSize()
        {
            return mXs.length;
        }

        public Path to(float f, float f1)
        {
            mXs[mIndex] = f;
            mYs[mIndex] = f1;
            mIndex = 1 + mIndex;
            mLengthChanged = true;
            return this;
        }

        public Path(int i)
        {
            mLengthChanged = false;
            mXs = new float[i];
            mYs = new float[i];
            mIndex = 0;
            mLengthChanged = false;
        }

        public Path(Path path)
        {
            mLengthChanged = false;
            int i = path.getSize();
            mXs = new float[i];
            mYs = new float[i];
            System.arraycopy(path.mXs, 0, mXs, 0, i);
            System.arraycopy(path.mYs, 0, mYs, 0, i);
            mIndex = path.mIndex;
            mLengthChanged = path.mLengthChanged;
            mLength = path.mLength;
        }

        public Path(float af[], float af1[])
            throws IllegalArgumentException
        {
            mLengthChanged = false;
            if (af.length != af1.length)
            {
                throw new IllegalArgumentException("Coordinate-Arrays must have the same length.");
            } else
            {
                mXs = af;
                mYs = af1;
                mIndex = af.length;
                mLengthChanged = true;
                return;
            }
        }
    }


    private final Path mPath;
    private IPathModifierListener mPathModifierListener;
    private final SequenceModifier mSequenceModifier;

    public PathModifier(float f, Path path)
    {
        this(f, path, null, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public PathModifier(float f, Path path, IEntityModifier.IEntityModifierListener ientitymodifierlistener)
    {
        this(f, path, ientitymodifierlistener, null, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public PathModifier(float f, Path path, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IPathModifierListener ipathmodifierlistener)
        throws IllegalArgumentException
    {
        this(f, path, ientitymodifierlistener, ipathmodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public PathModifier(float f, Path path, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IPathModifierListener ipathmodifierlistener, IEaseFunction ieasefunction)
        throws IllegalArgumentException
    {
        super(ientitymodifierlistener);
        int i = path.getSize();
        if (i < 2)
        {
            throw new IllegalArgumentException("Path needs at least 2 waypoints!");
        }
        mPath = path;
        mPathModifierListener = ipathmodifierlistener;
        MoveModifier amovemodifier[] = new MoveModifier[i - 1];
        float af[] = path.getCoordinatesX();
        float af1[] = path.getCoordinatesY();
        float f1 = path.getLength() / f;
        int j = amovemodifier.length;
        int k = 0;
        do
        {
            if (k >= j)
            {
                mSequenceModifier = new SequenceModifier(new org.andengine.util.modifier.SequenceModifier.ISubSequenceModifierListener() {

                    final PathModifier this$0;

                    public volatile void onSubSequenceFinished(IModifier imodifier, Object obj, int l)
                    {
                        onSubSequenceFinished((IModifier)imodifier, (IEntity)obj, l);
                    }

                    public void onSubSequenceFinished(IModifier imodifier, IEntity ientity, int l)
                    {
                        if (mPathModifierListener != null)
                        {
                            mPathModifierListener.onPathWaypointFinished(PathModifier.this, ientity, l);
                        }
                    }

                    public volatile void onSubSequenceStarted(IModifier imodifier, Object obj, int l)
                    {
                        onSubSequenceStarted((IModifier)imodifier, (IEntity)obj, l);
                    }

                    public void onSubSequenceStarted(IModifier imodifier, IEntity ientity, int l)
                    {
                        if (mPathModifierListener != null)
                        {
                            mPathModifierListener.onPathWaypointStarted(PathModifier.this, ientity, l);
                        }
                    }

            
            {
                this$0 = PathModifier.this;
                super();
            }
                }, new IEntityModifier.IEntityModifierListener() {

                    final PathModifier this$0;

                    public volatile void onModifierFinished(IModifier imodifier, Object obj)
                    {
                        onModifierFinished((IModifier)imodifier, (IEntity)obj);
                    }

                    public void onModifierFinished(IModifier imodifier, IEntity ientity)
                    {
                        PathModifier.this.onModifierFinished(ientity);
                        if (mPathModifierListener != null)
                        {
                            mPathModifierListener.onPathFinished(PathModifier.this, ientity);
                        }
                    }

                    public volatile void onModifierStarted(IModifier imodifier, Object obj)
                    {
                        onModifierStarted((IModifier)imodifier, (IEntity)obj);
                    }

                    public void onModifierStarted(IModifier imodifier, IEntity ientity)
                    {
                        PathModifier.this.onModifierStarted(ientity);
                        if (mPathModifierListener != null)
                        {
                            mPathModifierListener.onPathStarted(PathModifier.this, ientity);
                        }
                    }

            
            {
                this$0 = PathModifier.this;
                super();
            }
                }, amovemodifier);
                return;
            }
            amovemodifier[k] = new MoveModifier(path.getSegmentLength(k) / f1, af[k], af[k + 1], af1[k], af1[k + 1], null, ieasefunction);
            k++;
        } while (true);
    }

    public PathModifier(float f, Path path, IEntityModifier.IEntityModifierListener ientitymodifierlistener, IEaseFunction ieasefunction)
    {
        this(f, path, ientitymodifierlistener, null, ieasefunction);
    }

    public PathModifier(float f, Path path, IPathModifierListener ipathmodifierlistener)
    {
        this(f, path, null, ipathmodifierlistener, ((IEaseFunction) (EaseLinear.getInstance())));
    }

    public PathModifier(float f, Path path, IPathModifierListener ipathmodifierlistener, IEaseFunction ieasefunction)
    {
        this(f, path, null, ipathmodifierlistener, ieasefunction);
    }

    public PathModifier(float f, Path path, IEaseFunction ieasefunction)
    {
        this(f, path, null, null, ieasefunction);
    }

    protected PathModifier(PathModifier pathmodifier)
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        mPath = pathmodifier.mPath.deepCopy();
        mSequenceModifier = pathmodifier.mSequenceModifier.deepCopy();
    }

    public volatile IEntityModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public PathModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return new PathModifier(this);
    }

    public volatile IModifier deepCopy()
        throws org.andengine.util.modifier.IModifier.DeepCopyNotSupportedException
    {
        return deepCopy();
    }

    public float getDuration()
    {
        return mSequenceModifier.getDuration();
    }

    public Path getPath()
    {
        return mPath;
    }

    public IPathModifierListener getPathModifierListener()
    {
        return mPathModifierListener;
    }

    public float getSecondsElapsed()
    {
        return mSequenceModifier.getSecondsElapsed();
    }

    public boolean isFinished()
    {
        return mSequenceModifier.isFinished();
    }

    public volatile float onUpdate(float f, Object obj)
    {
        return onUpdate(f, (IEntity)obj);
    }

    public float onUpdate(float f, IEntity ientity)
    {
        return mSequenceModifier.onUpdate(f, ientity);
    }

    public void reset()
    {
        mSequenceModifier.reset();
    }

    public void setPathModifierListener(IPathModifierListener ipathmodifierlistener)
    {
        mPathModifierListener = ipathmodifierlistener;
    }



}
