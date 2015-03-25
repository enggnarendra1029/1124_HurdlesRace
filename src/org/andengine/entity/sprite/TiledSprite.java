// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.sprite;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.sprite.vbo.HighPerformanceTiledSpriteVertexBufferObject;
import org.andengine.entity.sprite.vbo.ISpriteVertexBufferObject;
import org.andengine.entity.sprite.vbo.ITiledSpriteVertexBufferObject;
import org.andengine.opengl.shader.PositionColorTextureCoordinatesShaderProgram;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.texture.region.ITiledTextureRegion;
import org.andengine.opengl.util.GLState;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.IVertexBufferObject;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.sprite:
//            Sprite

public class TiledSprite extends Sprite
{

    public static final int TILEDSPRITE_SIZE = 30;
    public static final int VERTEX_SIZE = 5;
    public static final int VERTICES_PER_TILEDSPRITE = 6;
    private int mCurrentTileIndex;
    private final ITiledSpriteVertexBufferObject mTiledSpriteVertexBufferObject;

    public TiledSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject)
    {
        this(f, f1, f2, f3, itiledtextureregion, itiledspritevertexbufferobject, ((ShaderProgram) (PositionColorTextureCoordinatesShaderProgram.getInstance())));
    }

    public TiledSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        super(f, f1, f2, f3, itiledtextureregion, itiledspritevertexbufferobject, shaderprogram);
        mTiledSpriteVertexBufferObject = itiledspritevertexbufferobject;
    }

    public TiledSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, f2, f3, itiledtextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public TiledSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itiledtextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public TiledSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, f2, f3, itiledtextureregion, ((ITiledSpriteVertexBufferObject) (new HighPerformanceTiledSpriteVertexBufferObject(vertexbufferobjectmanager, 30 * itiledtextureregion.getTileCount(), drawtype, true, Sprite.VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))));
    }

    public TiledSprite(float f, float f1, float f2, float f3, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, 
            ShaderProgram shaderprogram)
    {
        this(f, f1, f2, f3, itiledtextureregion, ((ITiledSpriteVertexBufferObject) (new HighPerformanceTiledSpriteVertexBufferObject(vertexbufferobjectmanager, 30 * itiledtextureregion.getTileCount(), drawtype, true, Sprite.VERTEXBUFFEROBJECTATTRIBUTES_DEFAULT))), shaderprogram);
    }

    public TiledSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject)
    {
        this(f, f1, itiledtextureregion.getWidth(), itiledtextureregion.getHeight(), itiledtextureregion, itiledspritevertexbufferobject);
    }

    public TiledSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, ITiledSpriteVertexBufferObject itiledspritevertexbufferobject, ShaderProgram shaderprogram)
    {
        this(f, f1, itiledtextureregion.getWidth(), itiledtextureregion.getHeight(), itiledtextureregion, itiledspritevertexbufferobject, shaderprogram);
    }

    public TiledSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this(f, f1, itiledtextureregion, vertexbufferobjectmanager, DrawType.STATIC);
    }

    public TiledSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        this(f, f1, itiledtextureregion, vertexbufferobjectmanager, DrawType.STATIC, shaderprogram);
    }

    public TiledSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        this(f, f1, itiledtextureregion.getWidth(), itiledtextureregion.getHeight(), itiledtextureregion, vertexbufferobjectmanager, drawtype);
    }

    public TiledSprite(float f, float f1, ITiledTextureRegion itiledtextureregion, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        this(f, f1, itiledtextureregion.getWidth(), itiledtextureregion.getHeight(), itiledtextureregion, vertexbufferobjectmanager, drawtype, shaderprogram);
    }

    protected void draw(GLState glstate, Camera camera)
    {
        mTiledSpriteVertexBufferObject.draw(4, 6 * mCurrentTileIndex, 6);
    }

    public int getCurrentTileIndex()
    {
        return mCurrentTileIndex;
    }

    public ITextureRegion getTextureRegion()
    {
        return getTiledTextureRegion().getTextureRegion(mCurrentTileIndex);
    }

    public int getTileCount()
    {
        return getTiledTextureRegion().getTileCount();
    }

    public ITiledTextureRegion getTiledTextureRegion()
    {
        return (ITiledTextureRegion)mTextureRegion;
    }

    public volatile ISpriteVertexBufferObject getVertexBufferObject()
    {
        return getVertexBufferObject();
    }

    public ITiledSpriteVertexBufferObject getVertexBufferObject()
    {
        return (ITiledSpriteVertexBufferObject)super.getVertexBufferObject();
    }

    public volatile IVertexBufferObject getVertexBufferObject()
    {
        return getVertexBufferObject();
    }

    protected void onUpdateColor()
    {
        getVertexBufferObject().onUpdateColor(this);
    }

    protected void onUpdateTextureCoordinates()
    {
        getVertexBufferObject().onUpdateTextureCoordinates(this);
    }

    protected void onUpdateVertices()
    {
        getVertexBufferObject().onUpdateVertices(this);
    }

    public void setCurrentTileIndex(int i)
    {
        mCurrentTileIndex = i;
    }
}
