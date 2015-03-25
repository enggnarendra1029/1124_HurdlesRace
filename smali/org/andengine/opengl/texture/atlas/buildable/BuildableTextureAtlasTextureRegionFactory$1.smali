.class Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;
.super Ljava/lang/Object;
.source "BuildableTextureAtlasTextureRegionFactory.java"

# interfaces
.implements Lorg/andengine/util/call/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory;->createFromSource(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Z)Lorg/andengine/opengl/texture/region/TextureRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/andengine/util/call/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final synthetic val$textureRegion:Lorg/andengine/opengl/texture/region/TextureRegion;


# direct methods
.method constructor <init>(Lorg/andengine/opengl/texture/region/TextureRegion;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;->val$textureRegion:Lorg/andengine/opengl/texture/region/TextureRegion;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;->onCallback(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V

    return-void
.end method

.method public onCallback(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, pCallbackValue:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlasTextureRegionFactory$1;->val$textureRegion:Lorg/andengine/opengl/texture/region/TextureRegion;

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureX()I

    move-result v1

    int-to-float v1, v1

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/andengine/opengl/texture/region/TextureRegion;->setTexturePosition(FF)V

    .line 57
    return-void
.end method
