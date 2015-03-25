.class public Lorg/andengine/opengl/texture/TextureOptions;
.super Ljava/lang/Object;
.source "TextureOptions.java"


# static fields
.field public static final BILINEAR:Lorg/andengine/opengl/texture/TextureOptions;

.field public static final BILINEAR_PREMULTIPLYALPHA:Lorg/andengine/opengl/texture/TextureOptions;

.field public static final DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

.field public static final NEAREST:Lorg/andengine/opengl/texture/TextureOptions;

.field public static final NEAREST_PREMULTIPLYALPHA:Lorg/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_BILINEAR:Lorg/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_BILINEAR_PREMULTIPLYALPHA:Lorg/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_NEAREST:Lorg/andengine/opengl/texture/TextureOptions;

.field public static final REPEATING_NEAREST_PREMULTIPLYALPHA:Lorg/andengine/opengl/texture/TextureOptions;


# instance fields
.field public final mMagFilter:I

.field public final mMinFilter:I

.field public final mPreMultiplyAlpha:Z

.field public final mWrapS:F

.field public final mWrapT:F


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const v3, 0x812f

    const/16 v14, 0x2901

    const/16 v7, 0x2601

    const/16 v1, 0x2600

    .line 23
    new-instance v0, Lorg/andengine/opengl/texture/TextureOptions;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v0, Lorg/andengine/opengl/texture/TextureOptions;->NEAREST:Lorg/andengine/opengl/texture/TextureOptions;

    .line 24
    new-instance v6, Lorg/andengine/opengl/texture/TextureOptions;

    move v8, v7

    move v9, v3

    move v10, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/andengine/opengl/texture/TextureOptions;->BILINEAR:Lorg/andengine/opengl/texture/TextureOptions;

    .line 25
    new-instance v8, Lorg/andengine/opengl/texture/TextureOptions;

    move v9, v1

    move v10, v1

    move v11, v14

    move v12, v14

    move v13, v5

    invoke-direct/range {v8 .. v13}, Lorg/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v8, Lorg/andengine/opengl/texture/TextureOptions;->REPEATING_NEAREST:Lorg/andengine/opengl/texture/TextureOptions;

    .line 26
    new-instance v6, Lorg/andengine/opengl/texture/TextureOptions;

    move v8, v7

    move v9, v14

    move v10, v14

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/andengine/opengl/texture/TextureOptions;->REPEATING_BILINEAR:Lorg/andengine/opengl/texture/TextureOptions;

    .line 28
    new-instance v0, Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x1

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v0, Lorg/andengine/opengl/texture/TextureOptions;->NEAREST_PREMULTIPLYALPHA:Lorg/andengine/opengl/texture/TextureOptions;

    .line 29
    new-instance v6, Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v11, 0x1

    move v8, v7

    move v9, v3

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lorg/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/andengine/opengl/texture/TextureOptions;->BILINEAR_PREMULTIPLYALPHA:Lorg/andengine/opengl/texture/TextureOptions;

    .line 30
    new-instance v0, Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v5, 0x1

    move v2, v1

    move v3, v14

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v0, Lorg/andengine/opengl/texture/TextureOptions;->REPEATING_NEAREST_PREMULTIPLYALPHA:Lorg/andengine/opengl/texture/TextureOptions;

    .line 31
    new-instance v6, Lorg/andengine/opengl/texture/TextureOptions;

    const/4 v11, 0x1

    move v8, v7

    move v9, v14

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lorg/andengine/opengl/texture/TextureOptions;-><init>(IIIIZ)V

    sput-object v6, Lorg/andengine/opengl/texture/TextureOptions;->REPEATING_BILINEAR_PREMULTIPLYALPHA:Lorg/andengine/opengl/texture/TextureOptions;

    .line 33
    sget-object v0, Lorg/andengine/opengl/texture/TextureOptions;->NEAREST:Lorg/andengine/opengl/texture/TextureOptions;

    sput-object v0, Lorg/andengine/opengl/texture/TextureOptions;->DEFAULT:Lorg/andengine/opengl/texture/TextureOptions;

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 1
    .parameter "pMinFilter"
    .parameter "pMagFilter"
    .parameter "pWrapT"
    .parameter "pWrapS"
    .parameter "pPreMultiplyAlpha"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lorg/andengine/opengl/texture/TextureOptions;->mMinFilter:I

    .line 51
    iput p2, p0, Lorg/andengine/opengl/texture/TextureOptions;->mMagFilter:I

    .line 52
    int-to-float v0, p3

    iput v0, p0, Lorg/andengine/opengl/texture/TextureOptions;->mWrapT:F

    .line 53
    int-to-float v0, p4

    iput v0, p0, Lorg/andengine/opengl/texture/TextureOptions;->mWrapS:F

    .line 54
    iput-boolean p5, p0, Lorg/andengine/opengl/texture/TextureOptions;->mPreMultiplyAlpha:Z

    .line 55
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 3

    .prologue
    const/16 v2, 0xde1

    .line 70
    const/16 v0, 0x2801

    iget v1, p0, Lorg/andengine/opengl/texture/TextureOptions;->mMinFilter:I

    int-to-float v1, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 71
    const/16 v0, 0x2800

    iget v1, p0, Lorg/andengine/opengl/texture/TextureOptions;->mMagFilter:I

    int-to-float v1, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 72
    const/16 v0, 0x2802

    iget v1, p0, Lorg/andengine/opengl/texture/TextureOptions;->mWrapS:F

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 73
    const/16 v0, 0x2803

    iget v1, p0, Lorg/andengine/opengl/texture/TextureOptions;->mWrapT:F

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 74
    return-void
.end method
