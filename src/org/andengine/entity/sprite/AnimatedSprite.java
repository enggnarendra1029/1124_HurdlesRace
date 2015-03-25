// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;

import org.andengine.entity.sprite.vbo.ITiledSpriteVertexBufferObject;
import org.andengine.opengl.shader.PositionColorTextureCoordinatesShaderProgram;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.region.ITiledTextureRegion;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.sprite:
//            TiledSprite, AnimationData, IAnimationData

public class AnimatedSprite extends TiledSprite
{
    public static interface IAnimationListener
    {

        public abstract void onAnimationFinished(AnimatedSprite animatedsprite);

        public abstract void onAnimationFrameChanged(AnimatedSprite animatedsprite, int i, int j);

        public abstract void onAnimationLoopFinished(AnimatedSprite animatedsprite, int i, int j);

        public abstract void onAnimationStarted(AnimatedSprite animatedsprite, int i);
    }


    private static final int FRAMEINDEX_INVALID = -1;
    private final IAnimationData mAnimationData;
    private IAnimationListener mAnimationListener;
    private long mAnimationProgress;
    private boolean mAnimationRunning;
    private boolean mAnimationStartedFired;
    private int mCurrentFrameIndex;
    private int mRemainingLoopCount;

    public AnimatedSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject)
    {
        super(f, f1, f2, f3, itiledtextureregion, itiledspritevertexbufferobject, PositionColorTextureCoordinatesShaderProgram.getInstance());
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, f2, f3, itiledtextureregion, itiledspritevertexbufferobject, shaderprogram);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(f, f1, f2, f3, itiledtextureregion, vertexbufferobjectmanager, DrawType.DYNAMIC);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(f, f1, f2, f3, itiledtextureregion, vertexbufferobjectmanager, DrawType.DYNAMIC, shaderprogram);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(f, f1, f2, f3, itiledtextureregion, vertexbufferobjectmanager, drawtype);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, 
            ShaderProgram shaderprogram)
    {
        super(f, f1, f2, f3, itiledtextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject)
    {
        super(f, f1, itiledtextureregion, itiledspritevertexbufferobject);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, itiledtextureregion, itiledspritevertexbufferobject, shaderprogram);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(f, f1, itiledtextureregion, vertexbufferobjectmanager, DrawType.DYNAMIC);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(f, f1, itiledtextureregion, vertexbufferobjectmanager, DrawType.DYNAMIC, shaderprogram);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(f, f1, itiledtextureregion, vertexbufferobjectmanager, drawtype);
        mAnimationData = new AnimationData();
    }

    public AnimatedSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(f, f1, itiledtextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
        mAnimationData = new AnimationData();
    }

    private void initAnimation(IAnimationListener ianimationlistener)
    {
        mAnimationStartedFired = false;
        mAnimationListener = ianimationlistener;
        mRemainingLoopCount = mAnimationData.getLoopCount();
        mAnimationProgress = 0L;
        mAnimationRunning = true;
    }

    public void animate(long l)
    {
        animate(l, ((IAnimationListener) (null)));
    }

    public void animate(long l, int i)
    {
        animate(l, i, ((IAnimationListener) (null)));
    }

    public void animate(long l, int i, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(l, getTileCount(), i);
        initAnimation(ianimationlistener);
    }

    public void animate(long l, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(l, getTileCount());
        initAnimation(ianimationlistener);
    }

    public void animate(long l, boolean flag)
    {
        animate(l, flag, ((IAnimationListener) (null)));
    }

    public void animate(long l, boolean flag, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(l, getTileCount(), flag);
        initAnimation(ianimationlistener);
    }

    public void animate(IAnimationData ianimationdata)
    {
        animate(ianimationdata, ((IAnimationListener) (null)));
    }

    public void animate(IAnimationData ianimationdata, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(ianimationdata);
        initAnimation(ianimationlistener);
    }

    public void animate(long al[])
    {
        animate(al, ((IAnimationListener) (null)));
    }

    public void animate(long al[], int i)
    {
        animate(al, i, ((IAnimationListener) (null)));
    }

    public void animate(long al[], int i, int j, int k)
    {
        animate(al, i, j, k, null);
    }

    public void animate(long al[], int i, int j, int k, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(al, i, j, k);
        initAnimation(ianimationlistener);
    }

    public void animate(long al[], int i, int j, boolean flag)
    {
        animate(al, i, j, flag, null);
    }

    public void animate(long al[], int i, int j, boolean flag, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(al, i, j, flag);
        initAnimation(ianimationlistener);
    }

    public void animate(long al[], int i, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(al, i);
        initAnimation(ianimationlistener);
    }

    public void animate(long al[], IAnimationListener ianimationlistener)
    {
        mAnimationData.set(al);
        initAnimation(ianimationlistener);
    }

    public void animate(long al[], boolean flag)
    {
        animate(al, flag, ((IAnimationListener) (null)));
    }

    public void animate(long al[], boolean flag, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(al, flag);
        initAnimation(ianimationlistener);
    }

    public void animate(long al[], int ai[])
    {
        animate(al, ai, ((IAnimationListener) (null)));
    }

    public void animate(long al[], int ai[], int i)
    {
        animate(al, ai, i, ((IAnimationListener) (null)));
    }

    public void animate(long al[], int ai[], int i, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(al, ai, i);
        initAnimation(ianimationlistener);
    }

    public void animate(long al[], int ai[], IAnimationListener ianimationlistener)
    {
        mAnimationData.set(al, ai);
        initAnimation(ianimationlistener);
    }

    public void animate(long al[], int ai[], boolean flag)
    {
        animate(al, ai, flag, ((IAnimationListener) (null)));
    }

    public void animate(long al[], int ai[], boolean flag, IAnimationListener ianimationlistener)
    {
        mAnimationData.set(al, ai, flag);
        initAnimation(ianimationlistener);
    }

    public boolean isAnimationRunning()
    {
        return mAnimationRunning;
    }

    protected void onManagedUpdate(float f)
    {
        super.onManagedUpdate(f);
        if (!mAnimationRunning) goto _L2; else goto _L1
_L1:
        int i;
        int ai[];
        long l;
        i = mAnimationData.getLoopCount();
        ai = mAnimationData.getFrames();
        l = mAnimationData.getAnimationDuration();
        if (!mAnimationStartedFired && mAnimationProgress == 0L)
        {
            mAnimationStartedFired = true;
            if (ai == null)
            {
                setCurrentTileIndex(mAnimationData.getFirstFrameIndex());
            } else
            {
                setCurrentTileIndex(ai[0]);
            }
            mCurrentFrameIndex = 0;
            if (mAnimationListener != null)
            {
                mAnimationListener.onAnimationStarted(this, i);
                mAnimationListener.onAnimationFrameChanged(this, -1, 0);
            }
        }
        mAnimationProgress = (long)(1E+09F * f) + mAnimationProgress;
        if (i != -1) goto _L4; else goto _L3
_L3:
        if (mAnimationProgress > l) goto _L6; else goto _L5
_L5:
        if (i != -1 && mRemainingLoopCount < 0) goto _L8; else goto _L7
_L7:
        int j = mAnimationData.calculateCurrentFrameIndex(mAnimationProgress);
        if (mCurrentFrameIndex != j)
        {
            if (ai == null)
            {
                setCurrentTileIndex(j + mAnimationData.getFirstFrameIndex());
            } else
            {
                setCurrentTileIndex(ai[j]);
            }
            if (mAnimationListener != null)
            {
                mAnimationListener.onAnimationFrameChanged(this, mCurrentFrameIndex, j);
            }
        }
        mCurrentFrameIndex = j;
_L2:
        return;
_L6:
        mAnimationProgress = mAnimationProgress - l;
        if (mAnimationListener != null)
        {
            mAnimationListener.onAnimationLoopFinished(this, mRemainingLoopCount, i);
        }
        continue; /* Loop/switch isn't completed */
_L4:
        while (mAnimationProgress > l) 
        {
            mAnimationProgress = mAnimationProgress - l;
            mRemainingLoopCount = -1 + mRemainingLoopCount;
            if (mRemainingLoopCount < 0)
            {
                break;
            }
            if (mAnimationListener != null)
            {
                mAnimationListener.onAnimationLoopFinished(this, mRemainingLoopCount, i);
            }
        }
          goto _L5
_L8:
        mAnimationRunning = false;
        if (mAnimationListener == null) goto _L2; else goto _L9
_L9:
        mAnimationListener.onAnimationFinished(this);
        return;
        if (true) goto _L3; else goto _L10
_L10:
    }

    public void stopAnimation()
    {
        mAnimationRunning = false;
    }

    public void stopAnimation(int i)
    {
        mAnimationRunning = false;
        setCurrentTileIndex(i);
    }
}
