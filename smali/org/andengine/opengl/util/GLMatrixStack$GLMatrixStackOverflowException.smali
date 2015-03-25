.class public Lorg/andengine/opengl/util/GLMatrixStack$GLMatrixStackOverflowException;
.super Lorg/andengine/util/exception/AndEngineRuntimeException;
.source "GLMatrixStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/util/GLMatrixStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLMatrixStackOverflowException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xb1d2ed07562ca04L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>()V

    .line 157
    return-void
.end method
