// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite.batch;

import java.util.ArrayList;
import org.andengine.entity.IEntity;
import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.sprite.batch.vbo.ISpriteBatchVertexBufferObject;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.util.adt.list.SmartList;

// Referenced classes of package org.andengine.entity.sprite.batch:
//            DynamicSpriteBatch

public class SpriteGroup extends DynamicSpriteBatch
{

    public SpriteGroup(float f, float f1, ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject)
    {
        super(f, f1, itexture, i, ispritebatchvertexbufferobject);
        setChildrenVisible(false);
    }

    public SpriteGroup(float f, float f1, ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, itexture, i, ispritebatchvertexbufferobject, shaderprogram);
        setChildrenVisible(false);
    }

    public SpriteGroup(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(f, f1, itexture, i, vertexbufferobjectmanager);
        setChildrenVisible(false);
    }

    public SpriteGroup(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(f, f1, itexture, i, vertexbufferobjectmanager, shaderprogram);
        setChildrenVisible(false);
    }

    public SpriteGroup(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(f, f1, itexture, i, vertexbufferobjectmanager, drawtype);
        setChildrenVisible(false);
    }

    public SpriteGroup(float f, float f1, ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(f, f1, itexture, i, vertexbufferobjectmanager, drawtype, shaderprogram);
        setChildrenVisible(false);
    }

    public SpriteGroup(ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject)
    {
        super(itexture, i, ispritebatchvertexbufferobject);
        setChildrenVisible(false);
    }

    public SpriteGroup(ITexture itexture, int i, ISpriteBatchVertexBufferObject ispritebatchvertexbufferobject, ShaderProgram shaderprogram)
    {
        super(itexture, i, ispritebatchvertexbufferobject, shaderprogram);
        setChildrenVisible(false);
    }

    public SpriteGroup(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(itexture, i, vertexbufferobjectmanager);
        setChildrenVisible(false);
    }

    public SpriteGroup(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(itexture, i, vertexbufferobjectmanager, shaderprogram);
        setChildrenVisible(false);
    }

    public SpriteGroup(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(itexture, i, vertexbufferobjectmanager, drawtype);
        setChildrenVisible(false);
    }

    public SpriteGroup(ITexture itexture, int i, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(itexture, i, vertexbufferobjectmanager, drawtype, shaderprogram);
        setChildrenVisible(false);
    }

    private void assertCapacity()
    {
        if (getChildCount() >= mCapacity)
        {
            throw new IllegalStateException((new StringBuilder("This ")).append(org/andengine/entity/sprite/batch/SpriteGroup.getSimpleName()).append(" has already reached its capacity (").append(mCapacity).append(") !").toString());
        } else
        {
            return;
        }
    }

    public void attachChild(IEntity ientity)
        throws IllegalArgumentException
    {
        if (ientity instanceof Sprite)
        {
            attachChild((Sprite)ientity);
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("A ")).append(org/andengine/entity/sprite/batch/SpriteGroup.getSimpleName()).append(" can only handle children of type Sprite or subclasses of Sprite, like TiledSprite or AnimatedSprite.").toString());
        }
    }

    public void attachChild(Sprite sprite)
    {
        assertCapacity();
        assertTexture(sprite.getTextureRegion());
        super.attachChild(sprite);
    }

    public void attachChildren(ArrayList arraylist)
    {
        int i = arraylist.size();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            attachChild((Sprite)arraylist.get(j));
            j++;
        } while (true);
    }

    protected boolean onUpdateSpriteBatch()
    {
        SmartList smartlist = mChildren;
        if (smartlist == null)
        {
            return false;
        }
        int i = smartlist.size();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return true;
            }
            drawWithoutChecks((Sprite)smartlist.get(j));
            j++;
        } while (true);
    }
}
