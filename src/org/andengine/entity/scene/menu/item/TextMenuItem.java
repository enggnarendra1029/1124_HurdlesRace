// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.menu.item;

import org.andengine.entity.text.Text;
import org.andengine.entity.text.TextOptions;
import org.andengine.entity.text.vbo.ITextVertexBufferObject;
import org.andengine.opengl.font.IFont;
import org.andengine.opengl.shader.ShaderProgram;
import org.andengine.opengl.vbo.DrawType;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.entity.scene.menu.item:
//            IMenuItem

public class TextMenuItem extends Text
    implements IMenuItem
{

    private final int mID;

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, int j, TextOptions textoptions, ITextVertexBufferObject itextvertexbufferobject)
    {
        super(0.0F, 0.0F, ifont, charsequence, j, textoptions, itextvertexbufferobject);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, int j, TextOptions textoptions, ITextVertexBufferObject itextvertexbufferobject, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, ifont, charsequence, j, textoptions, itextvertexbufferobject, shaderprogram);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, int j, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(0.0F, 0.0F, ifont, charsequence, j, textoptions, vertexbufferobjectmanager);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, int j, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(0.0F, 0.0F, ifont, charsequence, j, textoptions, vertexbufferobjectmanager, drawtype);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, int j, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, 
            ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, ifont, charsequence, j, textoptions, vertexbufferobjectmanager, drawtype, shaderprogram);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, int j, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(0.0F, 0.0F, ifont, charsequence, j, vertexbufferobjectmanager);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, int j, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, ifont, charsequence, j, vertexbufferobjectmanager, shaderprogram);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, int j, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(0.0F, 0.0F, ifont, charsequence, j, vertexbufferobjectmanager, drawtype);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, int j, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, ifont, charsequence, j, vertexbufferobjectmanager, drawtype, shaderprogram);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(0.0F, 0.0F, ifont, charsequence, textoptions, vertexbufferobjectmanager);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, ifont, charsequence, textoptions, vertexbufferobjectmanager, shaderprogram);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(0.0F, 0.0F, ifont, charsequence, textoptions, vertexbufferobjectmanager, drawtype);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, TextOptions textoptions, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, ifont, charsequence, textoptions, vertexbufferobjectmanager, drawtype, shaderprogram);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        super(0.0F, 0.0F, ifont, charsequence, vertexbufferobjectmanager);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, VertexBufferObjectManager vertexbufferobjectmanager, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, ifont, charsequence, vertexbufferobjectmanager, shaderprogram);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype)
    {
        super(0.0F, 0.0F, ifont, charsequence, vertexbufferobjectmanager, drawtype);
        mID = i;
    }

    public TextMenuItem(int i, IFont ifont, CharSequence charsequence, VertexBufferObjectManager vertexbufferobjectmanager, DrawType drawtype, ShaderProgram shaderprogram)
    {
        super(0.0F, 0.0F, ifont, charsequence, vertexbufferobjectmanager, drawtype, shaderprogram);
        mID = i;
    }

    public int getID()
    {
        return mID;
    }

    public void onSelected()
    {
    }

    public void onUnselected()
    {
    }
}
