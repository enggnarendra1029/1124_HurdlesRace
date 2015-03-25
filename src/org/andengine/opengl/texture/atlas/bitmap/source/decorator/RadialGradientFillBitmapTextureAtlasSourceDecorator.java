// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.texture.atlas.bitmap.source.decorator;

import android.graphics.Paint;
import android.graphics.RadialGradient;
import org.andengine.opengl.texture.atlas.bitmap.source.IBitmapTextureAtlasSource;
import org.andengine.opengl.texture.atlas.bitmap.source.decorator.shape.IBitmapTextureAtlasSourceDecoratorShape;
import org.andengine.opengl.texture.atlas.source.ITextureAtlasSource;
import org.andengine.util.adt.array.ArrayUtils;

// Referenced classes of package org.andengine.opengl.texture.atlas.bitmap.source.decorator:
//            BaseShapeBitmapTextureAtlasSourceDecorator

public class RadialGradientFillBitmapTextureAtlasSourceDecorator extends BaseShapeBitmapTextureAtlasSourceDecorator
{
    public static final class RadialGradientDirection extends Enum
    {

        private static final RadialGradientDirection ENUM$VALUES[];
        public static final RadialGradientDirection INSIDE_OUT;
        public static final RadialGradientDirection OUTSIDE_IN;

        public static RadialGradientDirection valueOf(String s)
        {
            return (RadialGradientDirection)Enum.valueOf(org/andengine/opengl/texture/atlas/bitmap/source/decorator/RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection, s);
        }

        public static RadialGradientDirection[] values()
        {
            RadialGradientDirection aradialgradientdirection[] = ENUM$VALUES;
            int i = aradialgradientdirection.length;
            RadialGradientDirection aradialgradientdirection1[] = new RadialGradientDirection[i];
            System.arraycopy(aradialgradientdirection, 0, aradialgradientdirection1, 0, i);
            return aradialgradientdirection1;
        }

        static 
        {
            INSIDE_OUT = new RadialGradientDirection("INSIDE_OUT", 0);
            OUTSIDE_IN = new RadialGradientDirection("OUTSIDE_IN", 1);
            RadialGradientDirection aradialgradientdirection[] = new RadialGradientDirection[2];
            aradialgradientdirection[0] = INSIDE_OUT;
            aradialgradientdirection[1] = OUTSIDE_IN;
            ENUM$VALUES = aradialgradientdirection;
        }

        private RadialGradientDirection(String s, int i)
        {
            super(s, i);
        }
    }


    private static int $SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection[];
    private static final float POSITIONS_DEFAULT[] = {
        0.0F, 1.0F
    };
    protected final int mColors[];
    protected final float mPositions[];
    protected final RadialGradientDirection mRadialGradientDirection;

    static int[] $SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection()
    {
        int ai[] = $SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[RadialGradientDirection.values().length];
        try
        {
            ai1[RadialGradientDirection.INSIDE_OUT.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[RadialGradientDirection.OUTSIDE_IN.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        $SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection = ai1;
        return ai1;
    }

    public RadialGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j, RadialGradientDirection radialgradientdirection)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, i, j, radialgradientdirection, null);
    }

    public RadialGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int i, int j, RadialGradientDirection radialgradientdirection, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, new int[] {
            i, j
        }, POSITIONS_DEFAULT, radialgradientdirection, textureatlassourcedecoratoroptions);
    }

    public RadialGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int ai[], float af[], RadialGradientDirection radialgradientdirection)
    {
        this(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, ai, af, radialgradientdirection, null);
    }

    public RadialGradientFillBitmapTextureAtlasSourceDecorator(IBitmapTextureAtlasSource ibitmaptextureatlassource, IBitmapTextureAtlasSourceDecoratorShape ibitmaptextureatlassourcedecoratorshape, int ai[], float af[], RadialGradientDirection radialgradientdirection, BaseBitmapTextureAtlasSourceDecorator.TextureAtlasSourceDecoratorOptions textureatlassourcedecoratoroptions)
    {
        super(ibitmaptextureatlassource, ibitmaptextureatlassourcedecoratorshape, textureatlassourcedecoratoroptions);
        mColors = ai;
        mPositions = af;
        mRadialGradientDirection = radialgradientdirection;
        mPaint.setStyle(android.graphics.Paint.Style.FILL);
        int i = ibitmaptextureatlassource.getTextureWidth();
        int j = ibitmaptextureatlassource.getTextureHeight();
        float f = 0.5F * (float)i;
        float f1 = 0.5F * (float)j;
        float f2 = Math.max(f, f1);
        switch ($SWITCH_TABLE$org$andengine$opengl$texture$atlas$bitmap$source$decorator$RadialGradientFillBitmapTextureAtlasSourceDecorator$RadialGradientDirection()[radialgradientdirection.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            mPaint.setShader(new RadialGradient(f, f1, f2, ai, af, android.graphics.Shader.TileMode.CLAMP));
            return;

        case 2: // '\002'
            ArrayUtils.reverse(ai);
            break;
        }
        mPaint.setShader(new RadialGradient(f, f1, f2, ai, af, android.graphics.Shader.TileMode.CLAMP));
    }

    public volatile IBitmapTextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

    public volatile BaseShapeBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return deepCopy();
    }

    public RadialGradientFillBitmapTextureAtlasSourceDecorator deepCopy()
    {
        return new RadialGradientFillBitmapTextureAtlasSourceDecorator(mBitmapTextureAtlasSource, mBitmapTextureAtlasSourceDecoratorShape, mColors, mPositions, mRadialGradientDirection, mTextureAtlasSourceDecoratorOptions);
    }

    public volatile ITextureAtlasSource deepCopy()
    {
        return deepCopy();
    }

}
