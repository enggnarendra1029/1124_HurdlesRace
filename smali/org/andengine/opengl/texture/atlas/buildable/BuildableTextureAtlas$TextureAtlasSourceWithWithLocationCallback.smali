.class public Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;
.super Ljava/lang/Object;
.source "BuildableTextureAtlas.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasSourceWithWithLocationCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mCallback:Lorg/andengine/util/call/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/call/Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;Lorg/andengine/util/call/Callback;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>.TextureAtlasSourceWithWithLocationCallback<TT;>;"
    .local p1, pTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    .local p2, pCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    .line 265
    iput-object p2, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mCallback:Lorg/andengine/util/call/Callback;

    .line 266
    return-void
.end method

.method static synthetic access$0(Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;)Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    return-object v0
.end method


# virtual methods
.method public getCallback()Lorg/andengine/util/call/Callback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/andengine/util/call/Callback",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>.TextureAtlasSourceWithWithLocationCallback<TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mCallback:Lorg/andengine/util/call/Callback;

    return-object v0
.end method

.method public getTextureAtlasSource()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 273
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas<TS;TT;>.TextureAtlasSourceWithWithLocationCallback<TT;>;"
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    return-object v0
.end method
