// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.shape;

import org.andengine.entity.IEntity;
import org.andengine.entity.scene.ITouchArea;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.vbo.IVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

public interface IShape
    extends IEntity, ITouchArea
{

    public static final int BLENDFUNCTION_DESTINATION_DEFAULT = 771;
    public static final int BLENDFUNCTION_DESTINATION_PREMULTIPLYALPHA_DEFAULT = 771;
    public static final int BLENDFUNCTION_SOURCE_DEFAULT = 770;
    public static final int BLENDFUNCTION_SOURCE_PREMULTIPLYALPHA_DEFAULT = 1;

    public abstract boolean collidesWith(IShape ishape);

    public abstract int getBlendFunctionDestination();

    public abstract int getBlendFunctionSource();

    public abstract ShaderProgram getShaderProgram();

    public abstract IVertexBufferObject getVertexBufferObject();

    public abstract VertexBufferObjectManager getVertexBufferObjectManager();

    public abstract boolean isBlendingEnabled();

    public abstract void setBlendFunction(int i, int j);

    public abstract void setBlendFunctionDestination(int i);

    public abstract void setBlendFunctionSource(int i);

    public abstract void setBlendingEnabled(boolean flag);

    public abstract void setShaderProgram(ShaderProgram shaderprogram);
}
