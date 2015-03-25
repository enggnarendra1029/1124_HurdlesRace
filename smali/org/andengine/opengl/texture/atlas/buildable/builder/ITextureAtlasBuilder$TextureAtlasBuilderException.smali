.class public Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;
.super Ljava/lang/Exception;
.source "ITextureAtlasBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextureAtlasBuilderException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x413c5d0da2bf813fL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pMessage"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
