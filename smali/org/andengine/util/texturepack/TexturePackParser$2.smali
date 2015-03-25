.class Lorg/andengine/util/texturepack/TexturePackParser$2;
.super Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;
.source "TexturePackParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/texturepack/TexturePackParser;->parseTexture(Lorg/xml/sax/Attributes;)Lorg/andengine/opengl/texture/ITexture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/util/texturepack/TexturePackParser;

.field private final synthetic val$file:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/andengine/util/texturepack/TexturePackParser;Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/texturepack/TexturePackParser$2;->this$0:Lorg/andengine/util/texturepack/TexturePackParser;

    iput-object p6, p0, Lorg/andengine/util/texturepack/TexturePackParser$2;->val$file:Ljava/lang/String;

    .line 182
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;-><init>(Lorg/andengine/opengl/texture/TextureManager;Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture$PVRTextureFormat;Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;Lorg/andengine/opengl/texture/TextureOptions;)V

    return-void
.end method


# virtual methods
.method protected onGetInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackParser$2;->this$0:Lorg/andengine/util/texturepack/TexturePackParser;

    iget-object v1, p0, Lorg/andengine/util/texturepack/TexturePackParser$2;->val$file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/andengine/util/texturepack/TexturePackParser;->onGetInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
