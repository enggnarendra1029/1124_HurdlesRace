.class public Lorg/andengine/opengl/util/GLMatrixStack$GLMatrixStackUnderflowException;
.super Lorg/andengine/util/exception/AndEngineRuntimeException;
.source "GLMatrixStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/util/GLMatrixStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLMatrixStackUnderflowException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2d5a582b6c68f8daL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>()V

    .line 193
    return-void
.end method
