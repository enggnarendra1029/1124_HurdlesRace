// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.animationpack;

import android.content.res.AssetManager;
import java.util.ArrayList;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.util.SAXUtils;
import org.andengine.util.adt.list.LongArrayList;
import org.andengine.util.animationpack.exception.AnimationPackParseException;
import org.andengine.util.texturepack.TexturePack;
import org.andengine.util.texturepack.TexturePackLibrary;
import org.andengine.util.texturepack.TexturePackLoader;
import org.andengine.util.texturepack.TexturePackTextureRegion;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package org.andengine.util.animationpack:
//            AnimationPackTiledTextureRegion, AnimationPackTiledTextureRegionLibrary, AnimationPack

public class AnimationPackParser extends DefaultHandler
{

    private static final String TAG_ANIMATION = "animation";
    private static final String TAG_ANIMATIONFRAME = "animationframe";
    private static final String TAG_ANIMATIONFRAME_ATTRIBUTE_DURATION = "duration";
    private static final String TAG_ANIMATIONFRAME_ATTRIBUTE_TEXTUREREGION = "textureregion";
    private static final String TAG_ANIMATIONPACK = "animationpack";
    private static final String TAG_ANIMATIONPACK_ATTRIBUTE_VERSION = "version";
    private static final String TAG_ANIMATIONS = "animations";
    private static final String TAG_ANIMATION_ATTRIBUTE_LOOPCOUNT = "loopcount";
    private static final String TAG_ANIMATION_ATTRIBUTE_NAME = "name";
    private static final String TAG_TEXTUREPACK = "texturepack";
    private static final String TAG_TEXTUREPACKS = "texturepacks";
    private static final String TAG_TEXTUREPACK_ATTRIBUTE_FILENAME = "filename";
    private AnimationPack mAnimationPack;
    private AnimationPackTiledTextureRegionLibrary mAnimationPackTiledTextureRegionLibrary;
    private final String mAssetBasePath;
    private final AssetManager mAssetManager;
    private final LongArrayList mCurrentAnimationFrameDurations = new LongArrayList();
    private final ArrayList mCurrentAnimationFrameTexturePackTextureRegions = new ArrayList();
    private int mCurrentAnimationLoopCount;
    private String mCurrentAnimationName;
    private final TextureManager mTextureManager;
    private TexturePackLibrary mTexturePackLibrary;
    private TexturePackLoader mTexturePackLoader;

    public AnimationPackParser(AssetManager assetmanager, String s, TextureManager texturemanager)
    {
        mCurrentAnimationLoopCount = -1;
        mAssetManager = assetmanager;
        mAssetBasePath = s;
        mTextureManager = texturemanager;
    }

    public void endElement(String s, String s1, String s2)
        throws SAXException
    {
        if (!s1.equals("animationpack") && !s1.equals("texturepacks") && !s1.equals("texturepack") && !s1.equals("animations"))
        {
            if (s1.equals("animation"))
            {
                int i = mCurrentAnimationFrameDurations.size();
                long al[] = mCurrentAnimationFrameDurations.toArray();
                TexturePackTextureRegion atexturepacktextureregion[] = new TexturePackTextureRegion[i];
                mCurrentAnimationFrameTexturePackTextureRegions.toArray(atexturepacktextureregion);
                AnimationPackTiledTextureRegion animationpacktiledtextureregion = new AnimationPackTiledTextureRegion(mCurrentAnimationName, al, mCurrentAnimationLoopCount, atexturepacktextureregion[0].getTexture(), atexturepacktextureregion);
                mAnimationPackTiledTextureRegionLibrary.put(animationpacktiledtextureregion);
                mCurrentAnimationName = null;
                mCurrentAnimationLoopCount = -1;
                mCurrentAnimationFrameDurations.clear();
                mCurrentAnimationFrameTexturePackTextureRegions.clear();
            } else
            if (!s1.equals("animationframe"))
            {
                throw new AnimationPackParseException((new StringBuilder("Unexpected end tag: '")).append(s1).append("'.").toString());
            }
        }
    }

    public AnimationPack getAnimationPack()
    {
        return mAnimationPack;
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
        throws SAXException
    {
        if (s1.equals("animationpack"))
        {
            int j = SAXUtils.getIntAttributeOrThrow(attributes, "version");
            if (j != 1)
            {
                throw new AnimationPackParseException((new StringBuilder("Unexpected version: '")).append(j).append("'.").toString());
            }
            mTexturePackLoader = new TexturePackLoader(mAssetManager, mTextureManager);
            mTexturePackLibrary = new TexturePackLibrary();
            mAnimationPackTiledTextureRegionLibrary = new AnimationPackTiledTextureRegionLibrary();
            mAnimationPack = new AnimationPack(mTexturePackLibrary, mAnimationPackTiledTextureRegionLibrary);
        } else
        if (!s1.equals("texturepacks"))
        {
            if (s1.equals("texturepack"))
            {
                String s4 = SAXUtils.getAttributeOrThrow(attributes, "filename");
                String s5 = (new StringBuilder(String.valueOf(mAssetBasePath))).append(s4).toString();
                TexturePack texturepack = mTexturePackLoader.loadFromAsset(s5, mAssetBasePath);
                mTexturePackLibrary.put(s4, texturepack);
                texturepack.loadTexture();
                return;
            }
            if (!s1.equals("animations"))
            {
                if (s1.equals("animation"))
                {
                    mCurrentAnimationName = SAXUtils.getAttributeOrThrow(attributes, "name");
                    mCurrentAnimationLoopCount = SAXUtils.getIntAttribute(attributes, "loopcount", -1);
                    return;
                }
                if (s1.equals("animationframe"))
                {
                    int i = SAXUtils.getIntAttributeOrThrow(attributes, "duration");
                    mCurrentAnimationFrameDurations.add(i);
                    String s3 = SAXUtils.getAttributeOrThrow(attributes, "textureregion");
                    TexturePackTextureRegion texturepacktextureregion = mTexturePackLibrary.getTexturePackTextureRegion(s3);
                    mCurrentAnimationFrameTexturePackTextureRegions.add(texturepacktextureregion);
                    return;
                } else
                {
                    throw new AnimationPackParseException((new StringBuilder("Unexpected tag: '")).append(s1).append("'.").toString());
                }
            }
        }
    }
}
