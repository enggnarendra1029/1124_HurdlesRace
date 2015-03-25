// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.texturepack;

import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;
import org.andengine.opengl.texture.ITexture;
import org.andengine.opengl.texture.PixelFormat;
import org.andengine.opengl.texture.TextureManager;
import org.andengine.opengl.texture.TextureOptions;
import org.andengine.opengl.texture.bitmap.BitmapTexture;
import org.andengine.opengl.texture.bitmap.BitmapTextureFormat;
import org.andengine.opengl.texture.compressed.pvr.PVRCCZTexture;
import org.andengine.opengl.texture.compressed.pvr.PVRGZTexture;
import org.andengine.opengl.texture.compressed.pvr.PVRTexture;
import org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy.IPVRTexturePixelBufferStrategy;
import org.andengine.opengl.texture.compressed.pvr.pixelbufferstrategy.SmartPVRTexturePixelBufferStrategy;
import org.andengine.util.SAXUtils;
import org.andengine.util.adt.io.in.IInputStreamOpener;
import org.andengine.util.texturepack.exception.TexturePackParseException;
import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

// Referenced classes of package org.andengine.util.texturepack:
//            TexturePackTextureRegionLibrary, TexturePack, TexturePackTextureRegion

public class TexturePackParser extends DefaultHandler
{

    private static final String TAG_TEXTURE = "texture";
    private static final String TAG_TEXTUREREGION = "textureregion";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_HEIGHT = "height";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_ID = "id";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_ROTATED = "rotated";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_SOURCE = "src";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_SOURCE_HEIGHT = "srcheight";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_SOURCE_WIDTH = "srcwidth";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_SOURCE_X = "srcx";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_SOURCE_Y = "srcy";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_TRIMMED = "trimmed";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_WIDTH = "width";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_X = "x";
    private static final String TAG_TEXTUREREGION_ATTRIBUTE_Y = "y";
    private static final String TAG_TEXTURE_ATTRIBUTE_FILE = "file";
    private static final String TAG_TEXTURE_ATTRIBUTE_MAGFILTER = "magfilter";
    private static final String TAG_TEXTURE_ATTRIBUTE_MAGFILTER_VALUE_LINEAR = "linear";
    private static final String TAG_TEXTURE_ATTRIBUTE_MAGFILTER_VALUE_NEAREST = "nearest";
    private static final String TAG_TEXTURE_ATTRIBUTE_MINFILTER = "minfilter";
    private static final String TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_LINEAR = "linear";
    private static final String TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_LINEAR_MIPMAP_LINEAR = "linear_mipmap_linear";
    private static final String TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_LINEAR_MIPMAP_NEAREST = "linear_mipmap_nearest";
    private static final String TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_NEAREST = "nearest";
    private static final String TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_NEAREST_MIPMAP_LINEAR = "nearest_mipmap_linear";
    private static final String TAG_TEXTURE_ATTRIBUTE_MINFILTER_VALUE_NEAREST_MIPMAP_NEAREST = "nearest_mipmap_nearest";
    private static final String TAG_TEXTURE_ATTRIBUTE_PIXELFORMAT = "pixelformat";
    private static final String TAG_TEXTURE_ATTRIBUTE_PREMULTIPLYALPHA = "premultiplyalpha";
    private static final String TAG_TEXTURE_ATTRIBUTE_TYPE = "type";
    private static final String TAG_TEXTURE_ATTRIBUTE_TYPE_VALUE_BITMAP = "bitmap";
    private static final String TAG_TEXTURE_ATTRIBUTE_TYPE_VALUE_PVR = "pvr";
    private static final String TAG_TEXTURE_ATTRIBUTE_TYPE_VALUE_PVRCCZ = "pvrccz";
    private static final String TAG_TEXTURE_ATTRIBUTE_TYPE_VALUE_PVRGZ = "pvrgz";
    private static final String TAG_TEXTURE_ATTRIBUTE_VERSION = "version";
    private static final String TAG_TEXTURE_ATTRIBUTE_WRAPS = "wraps";
    private static final String TAG_TEXTURE_ATTRIBUTE_WRAPT = "wrapt";
    private static final String TAG_TEXTURE_ATTRIBUTE_WRAP_VALUE_CLAMP = "clamp";
    private static final String TAG_TEXTURE_ATTRIBUTE_WRAP_VALUE_CLAMP_TO_EDGE = "clamp_to_edge";
    private static final String TAG_TEXTURE_ATTRIBUTE_WRAP_VALUE_REPEAT = "repeat";
    private final String mAssetBasePath;
    private final AssetManager mAssetManager;
    private ITexture mTexture;
    private final TextureManager mTextureManager;
    private TexturePack mTexturePack;
    private TexturePackTextureRegionLibrary mTextureRegionLibrary;
    private int mVersion;

    public TexturePackParser(AssetManager assetmanager, String s, TextureManager texturemanager)
    {
        mAssetManager = assetmanager;
        mAssetBasePath = s;
        mTextureManager = texturemanager;
    }

    private static int parseMagFilter(Attributes attributes)
    {
        String s = SAXUtils.getAttributeOrThrow(attributes, "magfilter");
        if (s.equals("nearest"))
        {
            return 9728;
        }
        if (s.equals("linear"))
        {
            return 9729;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Unexpected magfilter attribute: '")).append(s).append("'.").toString());
        }
    }

    private static int parseMinFilter(Attributes attributes)
    {
        String s = SAXUtils.getAttributeOrThrow(attributes, "minfilter");
        if (s.equals("nearest"))
        {
            return 9728;
        }
        if (s.equals("linear"))
        {
            return 9729;
        }
        if (s.equals("linear_mipmap_linear"))
        {
            return 9987;
        }
        if (s.equals("linear_mipmap_nearest"))
        {
            return 9985;
        }
        if (s.equals("nearest_mipmap_linear"))
        {
            return 9986;
        }
        if (s.equals("nearest_mipmap_nearest"))
        {
            return 9984;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Unexpected minfilter attribute: '")).append(s).append("'.").toString());
        }
    }

    private static PixelFormat parsePixelFormat(Attributes attributes)
    {
        return PixelFormat.valueOf(SAXUtils.getAttributeOrThrow(attributes, "pixelformat"));
    }

    private static boolean parsePremultiplyalpha(Attributes attributes)
    {
        return SAXUtils.getBooleanAttributeOrThrow(attributes, "premultiplyalpha");
    }

    private ITexture parseTexture(Attributes attributes)
        throws TexturePackParseException
    {
        final String file = SAXUtils.getAttributeOrThrow(attributes, "file");
        if (mTextureManager.hasMappedTexture(file))
        {
            return mTextureManager.getMappedTexture(file);
        }
        String s = SAXUtils.getAttributeOrThrow(attributes, "type");
        PixelFormat pixelformat = parsePixelFormat(attributes);
        TextureOptions textureoptions = parseTextureOptions(attributes);
        Object obj;
        if (s.equals("bitmap"))
        {
            try
            {
                obj = new BitmapTexture(mTextureManager, new IInputStreamOpener() {

                    final TexturePackParser this$0;
                    private final String val$file;

                    public InputStream open()
                        throws IOException
                    {
                        return onGetInputStream(file);
                    }

            
            {
                this$0 = TexturePackParser.this;
                file = s;
                super();
            }
                }, BitmapTextureFormat.fromPixelFormat(pixelformat), textureoptions);
            }
            catch (IOException ioexception3)
            {
                throw new TexturePackParseException(ioexception3);
            }
        } else
        if (s.equals("pvr"))
        {
            try
            {
                obj = new PVRTexture(org.andengine.opengl.texture.compressed.pvr.PVRTexture.PVRTextureFormat.fromPixelFormat(pixelformat), new SmartPVRTexturePixelBufferStrategy(0x20000), textureoptions, file) {

                    final TexturePackParser this$0;
                    private final String val$file;

                    protected InputStream onGetInputStream()
                        throws IOException
                    {
                        return TexturePackParser.this.onGetInputStream(file);
                    }

            
                throws IllegalArgumentException, IOException
            {
                this$0 = TexturePackParser.this;
                file = s;
                super(final_texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, textureoptions);
            }
                };
            }
            catch (IOException ioexception2)
            {
                throw new TexturePackParseException(ioexception2);
            }
        } else
        if (s.equals("pvrgz"))
        {
            try
            {
                obj = new PVRGZTexture(org.andengine.opengl.texture.compressed.pvr.PVRTexture.PVRTextureFormat.fromPixelFormat(pixelformat), new SmartPVRTexturePixelBufferStrategy(0x20000), textureoptions, file) {

                    final TexturePackParser this$0;
                    private final String val$file;

                    protected InputStream onGetInputStream()
                        throws IOException
                    {
                        return TexturePackParser.this.onGetInputStream(file);
                    }

            
                throws IllegalArgumentException, IOException
            {
                this$0 = TexturePackParser.this;
                file = s;
                super(final_texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, textureoptions);
            }
                };
            }
            catch (IOException ioexception1)
            {
                throw new TexturePackParseException(ioexception1);
            }
        } else
        if (s.equals("pvrccz"))
        {
            try
            {
                obj = new PVRCCZTexture(org.andengine.opengl.texture.compressed.pvr.PVRTexture.PVRTextureFormat.fromPixelFormat(pixelformat), new SmartPVRTexturePixelBufferStrategy(0x20000), textureoptions, file) {

                    final TexturePackParser this$0;
                    private final String val$file;

                    protected InputStream onGetInputStream()
                        throws IOException
                    {
                        return TexturePackParser.this.onGetInputStream(file);
                    }

            
                throws IllegalArgumentException, IOException
            {
                this$0 = TexturePackParser.this;
                file = s;
                super(final_texturemanager, pvrtextureformat, ipvrtexturepixelbufferstrategy, textureoptions);
            }
                };
            }
            catch (IOException ioexception)
            {
                throw new TexturePackParseException(ioexception);
            }
        } else
        {
            throw new TexturePackParseException(new IllegalArgumentException((new StringBuilder("Unsupported pTextureFormat: '")).append(s).append("'.").toString()));
        }
        mTextureManager.addMappedTexture(file, ((ITexture) (obj)));
        return ((ITexture) (obj));
    }

    private TextureOptions parseTextureOptions(Attributes attributes)
    {
        return new TextureOptions(parseMinFilter(attributes), parseMagFilter(attributes), parseWrapT(attributes), parseWrapS(attributes), parsePremultiplyalpha(attributes));
    }

    private int parseWrap(Attributes attributes, String s)
    {
        String s1;
        for (s1 = SAXUtils.getAttributeOrThrow(attributes, s); mVersion == 1 && s1.equals("clamp") || s1.equals("clamp_to_edge");)
        {
            return 33071;
        }

        if (s1.equals("repeat"))
        {
            return 10497;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("Unexpected ")).append(s).append(" attribute: '").append(s1).append("'.").toString());
        }
    }

    private int parseWrapS(Attributes attributes)
    {
        return parseWrap(attributes, "wraps");
    }

    private int parseWrapT(Attributes attributes)
    {
        return parseWrap(attributes, "wrapt");
    }

    public TexturePack getTexturePack()
    {
        return mTexturePack;
    }

    protected InputStream onGetInputStream(String s)
        throws IOException
    {
        return mAssetManager.open((new StringBuilder(String.valueOf(mAssetBasePath))).append(s).toString());
    }

    public void startElement(String s, String s1, String s2, Attributes attributes)
        throws SAXException
    {
        if (s1.equals("texture"))
        {
            mVersion = SAXUtils.getIntAttributeOrThrow(attributes, "version");
            mTexture = parseTexture(attributes);
            mTextureRegionLibrary = new TexturePackTextureRegionLibrary(10);
            mTexturePack = new TexturePack(mTexture, mTextureRegionLibrary);
            return;
        }
        if (s1.equals("textureregion"))
        {
            int i = SAXUtils.getIntAttributeOrThrow(attributes, "id");
            int j = SAXUtils.getIntAttributeOrThrow(attributes, "x");
            int k = SAXUtils.getIntAttributeOrThrow(attributes, "y");
            int l = SAXUtils.getIntAttributeOrThrow(attributes, "width");
            int i1 = SAXUtils.getIntAttributeOrThrow(attributes, "height");
            String s3 = SAXUtils.getAttributeOrThrow(attributes, "src");
            boolean flag = SAXUtils.getBooleanAttributeOrThrow(attributes, "trimmed");
            boolean flag1 = SAXUtils.getBooleanAttributeOrThrow(attributes, "rotated");
            int j1 = SAXUtils.getIntAttributeOrThrow(attributes, "srcx");
            int k1 = SAXUtils.getIntAttributeOrThrow(attributes, "srcy");
            int l1 = SAXUtils.getIntAttributeOrThrow(attributes, "srcwidth");
            int i2 = SAXUtils.getIntAttributeOrThrow(attributes, "srcheight");
            mTextureRegionLibrary.put(new TexturePackTextureRegion(mTexture, j, k, l, i1, i, s3, flag1, flag, j1, k1, l1, i2));
            return;
        } else
        {
            throw new TexturePackParseException((new StringBuilder("Unexpected tag: '")).append(s1).append("'.").toString());
        }
    }
}
