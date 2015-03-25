.class public Lorg/andengine/util/adt/io/in/ResourceInputStreamOpener;
.super Ljava/lang/Object;
.source "ResourceInputStreamOpener.java"

# interfaces
.implements Lorg/andengine/util/adt/io/in/IInputStreamOpener;


# instance fields
.field private final mResourceID:I

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0
    .parameter "pResources"
    .parameter "pResourceID"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/andengine/util/adt/io/in/ResourceInputStreamOpener;->mResources:Landroid/content/res/Resources;

    .line 32
    iput p2, p0, Lorg/andengine/util/adt/io/in/ResourceInputStreamOpener;->mResourceID:I

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
    iget-object v0, p0, Lorg/andengine/util/adt/io/in/ResourceInputStreamOpener;->mResources:Landroid/content/res/Resources;

    iget v1, p0, Lorg/andengine/util/adt/io/in/ResourceInputStreamOpener;->mResourceID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
