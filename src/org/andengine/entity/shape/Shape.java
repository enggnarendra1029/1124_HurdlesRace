// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.shape;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.Entity;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.IVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.shape:
//            IShape

public abstract class Shape extends Entity
    implements IShape
{

    protected int mBlendFunctionDestination;
    protected int mBlendFunctionSource;
    protected boolean mBlendingEnabled;
    protected ShaderProgram mShaderProgram;

    public Shape(float f, float f1, ShaderProgram shaderprogram)
    {
        super(f, f1);
        mBlendFunctionSource = 770;
        mBlendFunctionDestination = 771;
        mBlendingEnabled = false;
        mShaderProgram = shaderprogram;
    }

    public void dispose()
    {
        super.dispose();
        IVertexBufferObject ivertexbufferobject = getVertexBufferObject();
        if (ivertexbufferobject != null && ivertexbufferobject.isAutoDispose() && !ivertexbufferobject.isDisposed())
        {
            ivertexbufferobject.dispose();
        }
    }

    public int getBlendFunctionDestination()
    {
        return mBlendFunctionDestination;
    }

    public int getBlendFunctionSource()
    {
        return mBlendFunctionSource;
    }

    public ShaderProgram getShaderProgram()
    {
        return mShaderProgram;
    }

    public VertexBufferObjectManager getVertexBufferObjectManager()
    {
        return getVertexBufferObject().getVertexBufferObjectManager();
    }

    protected void initBlendFunction(ITexture itexture)
    {
        initBlendFunction(itexture.getTextureOptions());
    }

    protected void initBlendFunction(TextureOptions textureoptions)
    {
        if (textureoptions.mPreMultiplyAlpha)
        {
            setBlendFunction(1, 771);
        }
    }

    protected void initBlendFunction(ITextureRegion itextureregion)
    {
        initBlendFunction(itextureregion.getTexture());
    }

    public boolean isBlendingEnabled()
    {
        return mBlendingEnabled;
    }

    public boolean onAreaTouched(TouchEvent touchevent, float f, float f1)
    {
        return false;
    }

    protected abstract void onUpdateVertices();

    protected void postDraw(GLState glstate, Camera camera)
    {
        if (mBlendingEnabled)
        {
            glstate.disableBlend();
        }
    }

    protected void preDraw(GLState glstate, Camera camera)
    {
        if (mBlendingEnabled)
        {
            glstate.enableBlend();
            glstate.blendFunction(mBlendFunctionSource, mBlendFunctionDestination);
        }
    }

    public void reset()
    {
        super.reset();
        mBlendFunctionSource = 770;
        mBlendFunctionDestination = 771;
    }

    public void setBlendFunction(int i, int j)
    {
        mBlendFunctionSource = i;
        mBlendFunctionDestination = j;
    }

    public void setBlendFunctionDestination(int i)
    {
        mBlendFunctionDestination = i;
    }

    public void setBlendFunctionSource(int i)
    {
        mBlendFunctionSource = i;
    }

    public void setBlendingEnabled(boolean flag)
    {
        mBlendingEnabled = flag;
    }

    public void setShaderProgram(ShaderProgram shaderprogram)
    {
        mShaderProgram = shaderprogram;
    }
}
