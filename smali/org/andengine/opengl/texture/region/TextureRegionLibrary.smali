.class public Lorg/andengine/opengl/texture/region/TextureRegionLibrary;
.super Lorg/andengine/util/adt/map/Library;
.source "TextureRegionLibrary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/map/Library",
        "<",
        "Lorg/andengine/opengl/texture/region/ITextureRegion;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "pInitialCapacity"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/map/Library;-><init>(I)V

    .line 27
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/region/TextureRegionLibrary;->get(I)Lorg/andengine/opengl/texture/region/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Lorg/andengine/opengl/texture/region/TextureRegion;
    .locals 1
    .parameter "pID"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lorg/andengine/util/adt/map/Library;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/region/TextureRegion;

    return-object v0
.end method

.method public getTiled(I)Lorg/andengine/opengl/texture/region/TiledTextureRegion;
    .locals 1
    .parameter "pID"

    .prologue
    .line 39
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/TextureRegionLibrary;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/texture/region/TiledTextureRegion;

    return-object v0
.end method
