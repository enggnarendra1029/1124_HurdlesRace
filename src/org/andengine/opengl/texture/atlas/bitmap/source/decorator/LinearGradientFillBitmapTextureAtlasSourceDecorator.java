// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.LinearGradient;
import android.graphics.Paint;
import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator:
//            BaseShapeBitmapTextureAtlasSourceDecorator

public class LinearGradientFillBitmapTextureAtlasSourceDecorator extends BaseShapeBitmapTextureAtlasSourceDecorator
{
    public static final class LinearGradientDirection extends Enum
    {

        public static final LinearGradientDirection BOTTOMLEFT_TO_TOPRIGHT;
        public static final LinearGradientDirection BOTTOMRIGHT_TO_TOPLEFT;
        public static final LinearGradientDirection BOTTOM_TO_TOP;
        private static final LinearGradientDirection ENUM$VALUES[];
        public static final LinearGradientDirection LEFT_TO_RIGHT;
        public static final LinearGradientDirection RIGHT_TO_LEFT;
        public static final LinearGradientDirection TOPLEFT_TO_BOTTOMRIGHT;
        public static final LinearGradientDirection TOPRIGHT_TO_BOTTOMLEFT;
        public static final LinearGradientDirection TOP_TO_BOTTOM;
        private final int mFromX;
        private final int mFromY;
        private final int mToX;
        private final int mToY;

        public static LinearGradientDirection valueOf(String s)
        {
            return (LinearGradientDirection)Enum.valueOf(org/andengine/opengl/texture/atlas/bitmap/source/decorator/LinearGradientFillBitmapTextureAtlasSourceDecorator$LinearGradientDirection, s);
        }

        public static LinearGradientDirection[] values()
        {
            LinearGradientDirection alineargradientdirection[] = ENUM$VALUES;
            int i = alineargradientdirection.length;
            LinearGradientDirection alineargradientdirection1[] = new LinearGradientDirection[i];
            System.arraycopy(alineargradientdirection, 0, alineargradientdirection1, 0, i);
            return alineargradientdirection1;
        }

        final int getFromX(int i)
        {
            return i * mFromX;
        }

        final int getFromY(int i)
        {
            return i * mFromY;
        }

        final int getToX(int i)
        {
            return i * mToX;
        }

        final int getToY(int i)
        {
            return i * mToY;
        }

        static 
        {
            LEFT_TO_RIGHT = new LinearGradientDirection("LEFT_TO_RIGHT", 0, 1, 0, 0, 0);
            RIGHT_TO_LEFT = new LinearGradientDirection("RIGHT_TO_LEFT", 1, 0, 0, 1, 0);
            BOTTOM_TO_TOP = new LinearGradientDirection("BOTTOM_TO_TOP", 2, 0, 1, 0, 0);
            TOP_TO_BOTTOM = new LinearGradientDirection("TOP_TO_BOTTOM", 3, 0, 0, 0, 1);
            TOPLEFT_TO_BOTTOMRIGHT = new LinearGradientDirection("TOPLEFT_TO_BOTTOMRIGHT", 4, 0, 0, 1, 1);
            BOTTOMRIGHT_TO_TOPLEFT = new LinearGradientDirection("BOTTOMRIGHT_TO_TOPLEFT", 5, 1, 1, 0, 0);
            TOPRIGHT_TO_BOTTOMLEFT = new LinearGradientDirection("TOPRIGHT_TO_BOTTOMLEFT", 6, 1, 0, 0, 1);
            BOTTOMLEFT_TO_TOPRIGHT = new LinearGradientDirection("BOTTOMLEFT_TO_TOPRIGHT", 7, 0, 1, 1, 0);
            LinearGradientDirection alineargradientdirection[] = new LinearGradientDirection[8];
            alineargradientdirection[0] = LEFT_TO_RIGHT;
            alineargradientdirection[1] = RIGHT_TO_LEFT;
            alineargradientdirection[2] = BOTTOM_TO_TOP;
            alineargradientdirection[3] = TOP_TO_BOTTOM;
            alineargradientdirection[4] = TOPLEFT_TO_BOTTOMRIGHT;
            alineargradientdirection[5] = BOTTOMRIGHT_TO_TOPLEFT;
            alineargradientdirection[6] = TOPRIGHT_TO_BOTTOMLEFT;
            alineargradientdirection[7] = BOTTOMLEFT_TO_TOPRIGHT;
            ENUM$VALUES = alineargradientdirection;
        }

        private LinearGradientDirection(String s, int i, int j, int k, int l, int i1)
        {
            super(s, i);
            mFromX = j;
            mFromY = k;
            mToX = l;
            mToY = i1;
        }
    }


    protected final int mColors[];
    protected final LinearGradientDirection mLinearGradientDirection;
    protected final float mPositions[];

    public LinearGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j, LinearGradientDirection lineargradientdirection)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, j, lineargradientdirection, null);
    }

    public LinearGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j, LinearGradientDirection lineargradientdirection, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, new int[] {
            i, j
        }, ((float []) (null)), lineargradientdirection, textureatlassourcedecoratoroptions);
    }

    public LinearGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int ai[], float af[], LinearGradientDirection lineargradientdirection)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, ai, af, lineargradientdirection, null);
    }

    public LinearGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int ai[], float af[], LinearGradientDirection lineargradientdirection, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, textureatlassourcedecoratoroptions);
        mColors = ai;
        mPositions = af;
        mLinearGradientDirection = lineargradientdirection;
        mPaint.setStyle(android.graphics.Paint.Style.FILL);
        int i = -1 + ibitmaptextureatlassource.getTextureWidth();
        int j = -1 + ibitmaptextureatlassource.getTextureHeight();
        float f = lineargradientdirection.getFromX(i);
        float f1 = lineargradientdirection.getFromY(j);
        float f2 = lineargradientdirection.getToX(i);
        float f3 = lineargradientdirection.getToY(j);
        mPaint.setShader(new LinearGradient(f, f1, f2, f3, ai, af, android.graphics.Shader.TileMode.CLAMP));
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public volatile BaseShapeBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return deepCopy();
    }

    public LinearGradientFillBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return new LinearGradientFillBitmapTextureAtlasSourceDecorator(mBitmapTextureAtlasSource, mBitmapTextureAtlasSourceDecoratorShape, mColors, mPositions, mLinearGradientDirection, mTextureAtlasSourceDecoratorOptions);
    }

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }
}
