// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;

import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.texture.region.ITiledTextureRegion;
import org.andengine.opengl.texture.region.TiledTextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.entity.sprite:
//            TiledSprite

public class ButtonSprite extends TiledSprite
{
    public static interface OnClickListener
    {

        public abstract void onClick(ButtonSprite buttonsprite, float f, float f1);
    }

    public static final class State extends Enum
    {

        public static final State DISABLED;
        private static final State ENUM$VALUES[];
        public static final State NORMAL;
        public static final State PRESSED;
        private final int mTiledTextureRegionIndex;

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(org/andengine/entity/sprite/ButtonSprite$State, s);
        }

        public static State[] values()
        {
            State astate[] = ENUM$VALUES;
            int i = astate.length;
            State astate1[] = new State[i];
            System.arraycopy(astate, 0, astate1, 0, i);
            return astate1;
        }

        public int getTiledTextureRegionIndex()
        {
            return mTiledTextureRegionIndex;
        }

        static 
        {
            NORMAL = new State("NORMAL", 0, 0);
            PRESSED = new State("PRESSED", 1, 1);
            DISABLED = new State("DISABLED", 2, 2);
            State astate[] = new State[3];
            astate[0] = NORMAL;
            astate[1] = PRESSED;
            astate[2] = DISABLED;
            ENUM$VALUES = astate;
        }

        private State(String s, int i, int j)
        {
            super(s, i);
            mTiledTextureRegionIndex = j;
        }
    }


    private boolean mEnabled;
    private OnClickListener mOnClickListener;
    private State mState;
    private final int mStateCount;

    public ButtonSprite(float f, float f1, ITextureRegion itextureregion, ITextureRegion itextureregion1, ITextureRegion itextureregion2, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itextureregion, itextureregion1, itextureregion2, vertexbufferobjectmanager, null);
    }

    public ButtonSprite(float f, float f1, ITextureRegion itextureregion, ITextureRegion itextureregion1, ITextureRegion itextureregion2, VertexBufferObjectManager vertexbufferobjectmanager, OnClickListener onclicklistener)
    {
        this(f, f1, ((ITiledTextureRegion) (new TiledTextureRegion(itextureregion.getTexture(), new ITextureRegion[] {
            itextureregion, itextureregion1, itextureregion2
        }))), vertexbufferobjectmanager, onclicklistener);
    }

    public ButtonSprite(float f, float f1, ITextureRegion itextureregion, ITextureRegion itextureregion1, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itextureregion, itextureregion1, vertexbufferobjectmanager, ((OnClickListener) (null)));
    }

    public ButtonSprite(float f, float f1, ITextureRegion itextureregion, ITextureRegion itextureregion1, VertexBufferObjectManager vertexbufferobjectmanager, OnClickListener onclicklistener)
    {
        this(f, f1, ((ITiledTextureRegion) (new TiledTextureRegion(itextureregion.getTexture(), new ITextureRegion[] {
            itextureregion, itextureregion1
        }))), vertexbufferobjectmanager, onclicklistener);
    }

    public ButtonSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itextureregion, vertexbufferobjectmanager, ((OnClickListener) (null)));
    }

    public ButtonSprite(float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager, OnClickListener onclicklistener)
    {
        this(f, f1, ((ITiledTextureRegion) (new TiledTextureRegion(itextureregion.getTexture(), new ITextureRegion[] {
            itextureregion
        }))), vertexbufferobjectmanager, onclicklistener);
    }

    public ButtonSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itiledtextureregion, vertexbufferobjectmanager, ((OnClickListener) (null)));
    }

    public ButtonSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, OnClickListener onclicklistener)
    {
        super(f, f1, itiledtextureregion, vertexbufferobjectmanager);
        mEnabled = true;
        mOnClickListener = onclicklistener;
        mStateCount = itiledtextureregion.getTileCount();
        switch (mStateCount)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder("The supplied ")).append(org/andengine/opengl/texture/region/ITiledTextureRegion.getSimpleName()).append(" has an unexpected amount of states: '").append(mStateCount).append("'.").toString());

        case 1: // '\001'
            Debug.w((new StringBuilder("No ")).append(org/andengine/opengl/texture/region/ITextureRegion.getSimpleName()).append(" supplied for ").append(org/andengine/entity/sprite/ButtonSprite$State.getSimpleName()).append(".").append(State.PRESSED).append(".").toString());
            // fall through

        case 2: // '\002'
            Debug.w((new StringBuilder("No ")).append(org/andengine/opengl/texture/region/ITextureRegion.getSimpleName()).append(" supplied for ").append(org/andengine/entity/sprite/ButtonSprite$State.getSimpleName()).append(".").append(State.DISABLED).append(".").toString());
            // fall through

        case 3: // '\003'
            changeState(State.NORMAL);
            break;
        }
    }

    private void changeState(State state)
    {
        if (state == mState)
        {
            return;
        }
        mState = state;
        int i = mState.getTiledTextureRegionIndex();
        if (i >= mStateCount)
        {
            setCurrentTileIndex(0);
            Debug.w((new StringBuilder(String.valueOf(getClass().getSimpleName()))).append(" changed its ").append(org/andengine/entity/sprite/ButtonSprite$State.getSimpleName()).append(" to ").append(state.toString()).append(", which doesn't have a ").append(org/andengine/opengl/texture/region/ITextureRegion.getSimpleName()).append(" supplied. Applying default ").append(org/andengine/opengl/texture/region/ITextureRegion.getSimpleName()).append(".").toString());
            return;
        } else
        {
            setCurrentTileIndex(i);
            return;
        }
    }

    public boolean contains(float f, float f1)
    {
        if (!isVisible())
        {
            return false;
        } else
        {
            return super.contains(f, f1);
        }
    }

    public State getState()
    {
        return mState;
    }

    public boolean isEnabled()
    {
        return mEnabled;
    }

    public boolean isPressed()
    {
        return mState == State.PRESSED;
    }

    public boolean onAreaTouched(TouchEvent touchevent, float f, float f1)
    {
        if (isEnabled()) goto _L2; else goto _L1
_L1:
        changeState(State.DISABLED);
_L4:
        return true;
_L2:
        if (touchevent.isActionDown())
        {
            changeState(State.PRESSED);
        } else
        if (touchevent.isActionCancel() || !contains(touchevent.getX(), touchevent.getY()))
        {
            changeState(State.NORMAL);
        } else
        if (touchevent.isActionUp() && mState == State.PRESSED)
        {
            changeState(State.NORMAL);
            if (mOnClickListener != null)
            {
                mOnClickListener.onClick(this, f, f1);
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setEnabled(boolean flag)
    {
        mEnabled = flag;
        if (mEnabled && mState == State.DISABLED)
        {
            changeState(State.NORMAL);
        } else
        if (!mEnabled)
        {
            changeState(State.DISABLED);
            return;
        }
    }

    public void setOnClickListener(OnClickListener onclicklistener)
    {
        mOnClickListener = onclicklistener;
    }
}
