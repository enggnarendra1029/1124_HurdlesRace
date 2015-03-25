// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.buildable.builder;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import org.andengine.opengl.texture.atlas.ITextureAtlas;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.call.Callback;

// Referenced classes of package org.andengine.opengl.texture.atlas.buildable.builder:
//            ITextureAtlasBuilder

public class BlackPawnTextureAtlasBuilder
    implements ITextureAtlasBuilder
{
    protected static class Node
    {

        private Node mChildA;
        private Node mChildB;
        private final Rect mRect;
        private ITextureAtlasSource mTextureAtlasSource;

        private Node createChildren(ITextureAtlasSource itextureatlassource, int i, int j, int k, int l, int i1, int j1)
        {
            Rect rect = mRect;
            if (i1 >= j1)
            {
                mChildA = new Node(rect.getLeft(), rect.getTop(), k + itextureatlassource.getTextureWidth() + l * 2, rect.getHeight());
                mChildB = new Node(rect.getLeft() + (k + itextureatlassource.getTextureWidth() + l * 2), rect.getTop(), rect.getWidth() - (k + itextureatlassource.getTextureWidth() + l * 2), rect.getHeight());
            } else
            {
                mChildA = new Node(rect.getLeft(), rect.getTop(), rect.getWidth(), k + itextureatlassource.getTextureHeight() + l * 2);
                mChildB = new Node(rect.getLeft(), rect.getTop() + (k + itextureatlassource.getTextureHeight() + l * 2), rect.getWidth(), rect.getHeight() - (k + itextureatlassource.getTextureHeight() + l * 2));
            }
            return mChildA.insert(itextureatlassource, i, j, k, l);
        }

        public Node getChildA()
        {
            return mChildA;
        }

        public Node getChildB()
        {
            return mChildB;
        }

        public Rect getRect()
        {
            return mRect;
        }

        public Node insert(ITextureAtlasSource itextureatlassource, int i, int j, int k, int l)
            throws IllegalArgumentException
        {
            if (mChildA != null && mChildB != null)
            {
                Node node = mChildA.insert(itextureatlassource, i, j, k, l);
                if (node != null)
                {
                    return node;
                } else
                {
                    return mChildB.insert(itextureatlassource, i, j, k, l);
                }
            }
            if (mTextureAtlasSource != null)
            {
                return null;
            }
            int i1 = itextureatlassource.getTextureWidth() + l * 2;
            int j1 = itextureatlassource.getTextureHeight() + l * 2;
            int k1 = mRect.getWidth();
            int l1 = mRect.getHeight();
            if (i1 > k1 || j1 > l1)
            {
                return null;
            }
            int i2 = i1 + k;
            int j2 = j1 + k;
            int k2 = mRect.getLeft();
            int l2 = mRect.getTop();
            boolean flag;
            boolean flag1;
            if (j1 == l1 && l2 + j1 == j)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (i1 == k1 && k2 + i1 == i)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (i2 == k1)
            {
                if (j2 == l1)
                {
                    mTextureAtlasSource = itextureatlassource;
                    return this;
                }
                if (flag)
                {
                    mTextureAtlasSource = itextureatlassource;
                    return this;
                }
            }
            if (flag1)
            {
                if (j2 == l1)
                {
                    mTextureAtlasSource = itextureatlassource;
                    return this;
                }
                if (flag)
                {
                    mTextureAtlasSource = itextureatlassource;
                    return this;
                }
                if (j2 > l1)
                {
                    return null;
                } else
                {
                    return createChildren(itextureatlassource, i, j, k, l, k1 - i1, l1 - j2);
                }
            }
            if (flag)
            {
                if (i2 == k1)
                {
                    mTextureAtlasSource = itextureatlassource;
                    return this;
                }
                if (i2 > k1)
                {
                    return null;
                } else
                {
                    return createChildren(itextureatlassource, i, j, k, l, k1 - i2, l1 - j1);
                }
            }
            if (i2 > k1 || j2 > l1)
            {
                return null;
            } else
            {
                return createChildren(itextureatlassource, i, j, k, l, k1 - i2, l1 - j2);
            }
        }


        public Node(int i, int j, int k, int l)
        {
            this(new Rect(i, j, k, l));
        }

        public Node(Rect rect)
        {
            mRect = rect;
        }
    }

    protected static class Rect
    {

        private final int mHeight;
        private final int mLeft;
        private final int mTop;
        private final int mWidth;

        public int getBottom()
        {
            return mTop + mHeight;
        }

        public int getHeight()
        {
            return mHeight;
        }

        public int getLeft()
        {
            return mLeft;
        }

        public int getRight()
        {
            return mLeft + mWidth;
        }

        public int getTop()
        {
            return mTop;
        }

        public int getWidth()
        {
            return mWidth;
        }

        public String toString()
        {
            return (new StringBuilder("@: ")).append(mLeft).append("/").append(mTop).append(" * ").append(mWidth).append("x").append(mHeight).toString();
        }



        public Rect(int i, int j, int k, int l)
        {
            mLeft = i;
            mTop = j;
            mWidth = k;
            mHeight = l;
        }
    }


    private static final Comparator TEXTURESOURCE_COMPARATOR = new Comparator() {

        public volatile int compare(Object obj, Object obj1)
        {
            return compare((org.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback)obj, (org.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback)obj1);
        }

        public int compare(org.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback textureatlassourcewithwithlocationcallback, org.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback textureatlassourcewithwithlocationcallback1)
        {
            int i = ((ITextureAtlasSource)textureatlassourcewithwithlocationcallback1.getTextureAtlasSource()).getTextureWidth() - ((ITextureAtlasSource)textureatlassourcewithwithlocationcallback.getTextureAtlasSource()).getTextureWidth();
            if (i != 0)
            {
                return i;
            } else
            {
                return ((ITextureAtlasSource)textureatlassourcewithwithlocationcallback1.getTextureAtlasSource()).getTextureHeight() - ((ITextureAtlasSource)textureatlassourcewithwithlocationcallback.getTextureAtlasSource()).getTextureHeight();
            }
        }

    };
    private final int mTextureAtlasBorderSpacing;
    private final int mTextureAtlasSourcePadding;
    private final int mTextureAtlasSourceSpacing;

    public BlackPawnTextureAtlasBuilder(int i, int j, int k)
    {
        mTextureAtlasBorderSpacing = i;
        mTextureAtlasSourceSpacing = j;
        mTextureAtlasSourcePadding = k;
    }

    public void build(ITextureAtlas itextureatlas, ArrayList arraylist)
        throws ITextureAtlasBuilder.TextureAtlasBuilderException
    {
        Collections.sort(arraylist, TEXTURESOURCE_COMPARATOR);
        int i = itextureatlas.getWidth() - 2 * mTextureAtlasBorderSpacing;
        int j = itextureatlas.getHeight() - 2 * mTextureAtlasBorderSpacing;
        Node node = new Node(new Rect(0, 0, i, j));
        int k = arraylist.size();
        int l = 0;
        do
        {
            if (l >= k)
            {
                return;
            }
            org.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback textureatlassourcewithwithlocationcallback = (org.andengine.opengl.texture.atlas.buildable.BuildableTextureAtlas.TextureAtlasSourceWithWithLocationCallback)arraylist.get(l);
            ITextureAtlasSource itextureatlassource = textureatlassourcewithwithlocationcallback.getTextureAtlasSource();
            Node node1 = node.insert(itextureatlassource, i, j, mTextureAtlasSourceSpacing, mTextureAtlasSourcePadding);
            if (node1 == null)
            {
                throw new ITextureAtlasBuilder.TextureAtlasBuilderException((new StringBuilder("Could not build: '")).append(itextureatlassource.toString()).append("' into: '").append(itextureatlas.getClass().getSimpleName()).append("'.").toString());
            }
            int i1 = node1.mRect.mLeft + mTextureAtlasBorderSpacing + mTextureAtlasSourcePadding;
            int j1 = node1.mRect.mTop + mTextureAtlasBorderSpacing + mTextureAtlasSourcePadding;
            if (mTextureAtlasSourcePadding == 0)
            {
                itextureatlas.addTextureAtlasSource(itextureatlassource, i1, j1);
            } else
            {
                itextureatlas.addTextureAtlasSource(itextureatlassource, i1, j1, mTextureAtlasSourcePadding);
            }
            textureatlassourcewithwithlocationcallback.getCallback().onCallback(itextureatlassource);
            l++;
        } while (true);
    }

}
