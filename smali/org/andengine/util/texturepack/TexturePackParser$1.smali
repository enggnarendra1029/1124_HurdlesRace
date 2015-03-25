.class Lorg/andengine/util/texturepack/TexturePackParser$1;
.super Ljava/lang/Object;
.source "TexturePackParser.java"

# interfaces
.implements Lorg/andengine/util/adt/io/in/IInputStreamOpener;


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
.method constructor <init>(Lorg/andengine/util/texturepack/TexturePackParser;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/texturepack/TexturePackParser$1;->this$0:Lorg/andengine/util/texturepack/TexturePackParser;

    iput-object p2, p0, Lorg/andengine/util/texturepack/TexturePackParser$1;->val$file:Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public open()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackParser$1;->this$0:Lorg/andengine/util/texturepack/TexturePackParser;

    iget-object v1, p0, Lorg/andengine/util/texturepack/TexturePackParser$1;->val$file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/andengine/util/texturepack/TexturePackParser;->onGetInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
