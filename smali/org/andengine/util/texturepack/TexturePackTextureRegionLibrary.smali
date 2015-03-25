.class public Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;
.super Ljava/lang/Object;
.source "TexturePackTextureRegionLibrary.java"


# instance fields
.field private final mIDMapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/util/texturepack/TexturePackTextureRegion;",
            ">;"
        }
    .end annotation
.end field

.field private final mSourceMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/andengine/util/texturepack/TexturePackTextureRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "pInitialCapacity"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mIDMapping:Landroid/util/SparseArray;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mSourceMapping:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method private throwOnCollision(Lorg/andengine/util/texturepack/TexturePackTextureRegion;)V
    .locals 3
    .parameter "pTexturePackTextureRegion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mIDMapping:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->getID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Collision with ID: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->getID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mSourceMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Collision with Source: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->getSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public get(I)Lorg/andengine/util/texturepack/TexturePackTextureRegion;
    .locals 1
    .parameter "pID"

    .prologue
    .line 66
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mIDMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lorg/andengine/util/texturepack/TexturePackTextureRegion;
    .locals 1
    .parameter "pSource"

    .prologue
    .line 70
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mSourceMapping:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/texturepack/TexturePackTextureRegion;

    return-object v0
.end method

.method public get(Ljava/lang/String;Z)Lorg/andengine/util/texturepack/TexturePackTextureRegion;
    .locals 3
    .parameter "pSource"
    .parameter "pStripExtension"

    .prologue
    .line 74
    if-eqz p2, :cond_1

    .line 75
    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 76
    .local v0, indexOfExtension:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->get(Ljava/lang/String;)Lorg/andengine/util/texturepack/TexturePackTextureRegion;

    move-result-object v2

    .line 83
    .end local v0           #indexOfExtension:I
    :goto_0
    return-object v2

    .line 79
    .restart local v0       #indexOfExtension:I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, stripped:Ljava/lang/String;
    iget-object v2, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mSourceMapping:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/util/texturepack/TexturePackTextureRegion;

    goto :goto_0

    .line 83
    .end local v0           #indexOfExtension:I
    .end local v1           #stripped:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->get(Ljava/lang/String;)Lorg/andengine/util/texturepack/TexturePackTextureRegion;

    move-result-object v2

    goto :goto_0
.end method

.method public getIDMapping()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lorg/andengine/util/texturepack/TexturePackTextureRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mIDMapping:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getSourceMapping()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/andengine/util/texturepack/TexturePackTextureRegion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mSourceMapping:Ljava/util/HashMap;

    return-object v0
.end method

.method public put(Lorg/andengine/util/texturepack/TexturePackTextureRegion;)V
    .locals 2
    .parameter "pTexturePackTextureRegion"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->throwOnCollision(Lorg/andengine/util/texturepack/TexturePackTextureRegion;)V

    .line 57
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mIDMapping:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->getID()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mSourceMapping:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/andengine/util/texturepack/TexturePackTextureRegion;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public remove(I)V
    .locals 1
    .parameter "pID"

    .prologue
    .line 62
    iget-object v0, p0, Lorg/andengine/util/texturepack/TexturePackTextureRegionLibrary;->mIDMapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 63
    return-void
.end method
