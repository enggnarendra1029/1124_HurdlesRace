.class public Lorg/andengine/util/texturepack/TexturePackTextureRegion;
.super Lorg/andengine/opengl/texture/region/TextureRegion;
.source "TexturePackTextureRegion.java"


# instance fields
.field private final mID:I

.field private final mSource:Ljava/lang/String;

.field private final mSourceHeight:I

.field private final mSourceWidth:I

.field private final mSourceX:I

.field private final mSourceY:I

.field private final mTrimmed:Z


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;IIIIILjava/lang/String;ZZIIII)V
    .locals 8
    .parameter "pTexture"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pID"
    .parameter "pSource"
    .parameter "pRotated"
    .parameter "pTrimmed"
    .parameter "pSourceX"
    .parameter "pSourceY"
    .parameter "pSourceWidth"
    .parameter "pSourceHeight"

    .prologue
    .line 35
    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    int-to-float v6, p5

    move-object v1, p0

    move-object v2, p1

    move/from16 v7, p8

    invoke-direct/range {v1 .. v7}, Lorg/andengine/opengl/texture/region/TextureRegion;-><init>(Lorg/andengine/opengl/texture/ITexture;FFFFZ)V

    .line 37
    iput p6, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mID:I

    .line 38
    iput-object p7, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSource:Ljava/lang/String;

    .line 39
    move/from16 v0, p9

    iput-boolean v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mTrimmed:Z

    .line 40
    move/from16 v0, p10

    iput v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSourceX:I

    .line 41
    move/from16 v0, p11

    iput v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSourceY:I

    .line 42
    move/from16 v0, p12

    iput v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSourceWidth:I

    .line 43
    move/from16 v0, p13

    iput v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSourceHeight:I

    .line 44
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mID:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceHeight()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSourceHeight:I

    return v0
.end method

.method public getSourceWidth()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSourceWidth:I

    return v0
.end method

.method public getSourceX()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSourceX:I

    return v0
.end method

.method public getSourceY()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mSourceY:I

    return v0
.end method

.method public isTrimmed()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->mTrimmed:Z

    return v0
.end method
