.class public Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/font/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapFontOptions"
.end annotation


# static fields
.field public static final DEFAULT:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;


# instance fields
.field private final mTextureOffsetX:I

.field private final mTextureOffsetY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 494
    new-instance v0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

    invoke-direct {v0, v1, v1}, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;-><init>(II)V

    sput-object v0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->DEFAULT:Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .parameter "pTextureOffsetX"
    .parameter "pTextureOffsetY"

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput p1, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->mTextureOffsetX:I

    .line 509
    iput p2, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->mTextureOffsetY:I

    .line 510
    return-void
.end method

.method static synthetic access$0(Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 500
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->mTextureOffsetX:I

    return v0
.end method

.method static synthetic access$1(Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;)I
    .locals 1
    .parameter

    .prologue
    .line 501
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->mTextureOffsetY:I

    return v0
.end method


# virtual methods
.method public getTextureOffsetX()I
    .locals 1

    .prologue
    .line 517
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->mTextureOffsetX:I

    return v0
.end method

.method public getTextureOffsetY()I
    .locals 1

    .prologue
    .line 521
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontOptions;->mTextureOffsetY:I

    return v0
.end method
