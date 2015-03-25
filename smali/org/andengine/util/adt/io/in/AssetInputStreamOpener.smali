.class public Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;
.super Ljava/lang/Object;
.source "AssetInputStreamOpener.java"

# interfaces
.implements Lorg/andengine/util/adt/io/in/IInputStreamOpener;


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAssetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0
    .parameter "pAssetManager"
    .parameter "pAssetPath"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;->mAssetManager:Landroid/content/res/AssetManager;

    .line 32
    iput-object p2, p0, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;->mAssetPath:Ljava/lang/String;

    .line 33
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
    .line 45
    iget-object v0, p0, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v1, p0, Lorg/andengine/util/adt/io/in/AssetInputStreamOpener;->mAssetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
