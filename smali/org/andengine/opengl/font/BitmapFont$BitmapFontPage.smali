.class public Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/font/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapFontPage"
.end annotation


# instance fields
.field private mID:I

.field private final mTexture:Lorg/andengine/opengl/texture/ITexture;

.field final synthetic this$0:Lorg/andengine/opengl/font/BitmapFont;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/font/BitmapFont;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "pAssetManager"
    .parameter "pAssetBasePath"
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 706
    iput-object p1, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;->this$0:Lorg/andengine/opengl/font/BitmapFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 707
    sget-object v3, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACE:Ljava/util/regex/Pattern;

    const/4 v4, 0x3

    invoke-virtual {v3, p4, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, pageAttributes:[Ljava/lang/String;
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-eq v3, v5, :cond_0

    .line 710
    new-instance v3, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected: \'2\' page attributes, found: \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 712
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const-string v4, "page"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 713
    new-instance v3, Lorg/andengine/opengl/font/exception/FontException;

    const-string v4, "Expected: \'page\' attributes."

    invoke-direct {v3, v4}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 716
    :cond_1
    const/4 v3, 0x1

    const-string v4, "id"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I
    invoke-static {v2, v3, v4}, Lorg/andengine/opengl/font/BitmapFont;->access$1([Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    iput v3, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;->mID:I

    .line 717
    const-string v3, "file"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getStringAttribute([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v5, v3}, Lorg/andengine/opengl/font/BitmapFont;->access$0([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, file:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, assetPath:Ljava/lang/String;
    new-instance v3, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;

    #getter for: Lorg/andengine/opengl/font/BitmapFont;->mTextureManager:Lorg/andengine/opengl/texture/TextureManager;
    invoke-static {p1}, Lorg/andengine/opengl/font/BitmapFont;->access$4(Lorg/andengine/opengl/font/BitmapFont;)Lorg/andengine/opengl/texture/TextureManager;

    move-result-object v4

    new-instance v5, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;

    invoke-direct {v5, p2, v0}, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    #getter for: Lorg/andengine/opengl/font/BitmapFont;->mBitmapTextureFormat:Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;
    invoke-static {p1}, Lorg/andengine/opengl/font/BitmapFont;->access$5(Lorg/andengine/opengl/font/BitmapFont;)Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;

    move-result-object v6

    #getter for: Lorg/andengine/opengl/font/BitmapFont;->mTextureOptions:Lorg/andengine/opengl/texture/TextureOptions;
    invoke-static {p1}, Lorg/andengine/opengl/font/BitmapFont;->access$6(Lorg/andengine/opengl/font/BitmapFont;)Lorg/andengine/opengl/texture/TextureOptions;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/andengine/opengl/texture/bitmap/BitmapTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/util/adt/io/in/IInputStreamOpener;Lorg/andengine/opengl/texture/bitmap/BitmapTextureFormat;Lorg/andengine/opengl/texture/TextureOptions;)V

    iput-object v3, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    .line 721
    return-void
.end method


# virtual methods
.method public getID()I
    .locals 1

    .prologue
    .line 728
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;->mID:I

    return v0
.end method

.method public getTexture()Lorg/andengine/opengl/texture/ITexture;
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontPage;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    return-object v0
.end method
