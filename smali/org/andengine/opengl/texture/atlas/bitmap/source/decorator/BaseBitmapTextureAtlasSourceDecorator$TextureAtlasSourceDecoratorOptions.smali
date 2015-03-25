.class public Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
.super Ljava/lang/Object;
.source "BaseBitmapTextureAtlasSourceDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasSourceDecoratorOptions"
.end annotation


# static fields
.field public static final DEFAULT:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;


# instance fields
.field private mAntiAliasing:Z

.field private mInsetBottom:F

.field private mInsetLeft:F

.field private mInsetRight:F

.field private mInsetTop:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;-><init>()V

    sput-object v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->DEFAULT:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3e80

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    .line 130
    iput v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    .line 131
    iput v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    .line 132
    iput v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    .line 118
    return-void
.end method


# virtual methods
.method protected deepCopy()Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 5

    .prologue
    .line 141
    new-instance v0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;-><init>()V

    .line 142
    .local v0, textureSourceDecoratorOptions:Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    iget v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    iget v2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    iget v3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    iget v4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->setInsets(FFFF)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    .line 143
    iget-boolean v1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mAntiAliasing:Z

    invoke-virtual {v0, v1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->setAntiAliasing(Z)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    .line 144
    return-object v0
.end method

.method public getAntiAliasing()Z
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mAntiAliasing:Z

    return v0
.end method

.method public getInsetBottom()F
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    return v0
.end method

.method public getInsetLeft()F
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    return v0
.end method

.method public getInsetRight()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    return v0
.end method

.method public getInsetTop()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    return v0
.end method

.method public setAntiAliasing(Z)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0
    .parameter "pAntiAliasing"

    .prologue
    .line 172
    iput-boolean p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mAntiAliasing:Z

    .line 173
    return-object p0
.end method

.method public setInsetBottom(F)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0
    .parameter "pInsetBottom"

    .prologue
    .line 192
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    .line 193
    return-object p0
.end method

.method public setInsetLeft(F)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0
    .parameter "pInsetLeft"

    .prologue
    .line 177
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    .line 178
    return-object p0
.end method

.method public setInsetRight(F)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0
    .parameter "pInsetRight"

    .prologue
    .line 182
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    .line 183
    return-object p0
.end method

.method public setInsetTop(F)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0
    .parameter "pInsetTop"

    .prologue
    .line 187
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    .line 188
    return-object p0
.end method

.method public setInsets(F)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 1
    .parameter "pInsets"

    .prologue
    .line 197
    invoke-virtual {p0, p1, p1, p1, p1}, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->setInsets(FFFF)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;

    move-result-object v0

    return-object v0
.end method

.method public setInsets(FFFF)Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;
    .locals 0
    .parameter "pInsetLeft"
    .parameter "pInsetTop"
    .parameter "pInsetRight"
    .parameter "pInsetBottom"

    .prologue
    .line 201
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetLeft:F

    .line 202
    iput p2, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetTop:F

    .line 203
    iput p3, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetRight:F

    .line 204
    iput p4, p0, Lorg/andengine/opengl/texture/atlas/bitmap/source/decorator/BaseBitmapTextureAtlasSourceDecorator$TextureAtlasSourceDecoratorOptions;->mInsetBottom:F

    .line 205
    return-object p0
.end method
