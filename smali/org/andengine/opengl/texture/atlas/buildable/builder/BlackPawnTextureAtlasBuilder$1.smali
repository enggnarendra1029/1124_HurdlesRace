.class Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$1;
.super Ljava/lang/Object;
.source "BlackPawnTextureAtlasBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
        "<*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    check-cast p2, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$1;->compare(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;)I
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<*>;",
            "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, pTextureAtlasSourceWithWithLocationCallbackA:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<*>;"
    .local p2, pTextureAtlasSourceWithWithLocationCallbackB:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<*>;"
    invoke-virtual {p2}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    move-result-object v1

    check-cast v1, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    invoke-interface {v1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v2

    invoke-virtual {p1}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    move-result-object v1

    check-cast v1, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    invoke-interface {v1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v1

    sub-int v0, v2, v1

    .line 29
    .local v0, deltaWidth:I
    if-eqz v0, :cond_0

    .line 32
    .end local v0           #deltaWidth:I
    :goto_0
    return v0

    .restart local v0       #deltaWidth:I
    :cond_0
    invoke-virtual {p2}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    move-result-object v1

    check-cast v1, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    invoke-interface {v1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v2

    invoke-virtual {p1}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    move-result-object v1

    check-cast v1, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    invoke-interface {v1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v1

    sub-int v0, v2, v1

    goto :goto_0
.end method
