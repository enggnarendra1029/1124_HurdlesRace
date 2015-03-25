.class public abstract Lorg/andengine/opengl/texture/region/BaseTextureRegion;
.super Ljava/lang/Object;
.source "BaseTextureRegion.java"

# interfaces
.implements Lorg/andengine/opengl/texture/region/ITextureRegion;


# instance fields
.field protected final mTexture:Lorg/andengine/opengl/texture/ITexture;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/texture/ITexture;)V
    .locals 0
    .parameter "pTexture"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/andengine/opengl/texture/region/BaseTextureRegion;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract deepCopy()Lorg/andengine/opengl/texture/region/ITextureRegion;
.end method

.method public getTexture()Lorg/andengine/opengl/texture/ITexture;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lorg/andengine/opengl/texture/region/BaseTextureRegion;->mTexture:Lorg/andengine/opengl/texture/ITexture;

    return-object v0
.end method
