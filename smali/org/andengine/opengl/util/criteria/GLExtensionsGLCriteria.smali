.class public Lorg/andengine/opengl/util/criteria/GLExtensionsGLCriteria;
.super Lorg/andengine/opengl/util/criteria/StringGLCriteria;
.source "GLExtensionsGLCriteria.java"


# direct methods
.method public constructor <init>(Lorg/andengine/util/adt/data/operator/StringOperator;Ljava/lang/String;)V
    .locals 0
    .parameter "pStringOperator"
    .parameter "pGLExtensions"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/andengine/opengl/util/criteria/StringGLCriteria;-><init>(Lorg/andengine/util/adt/data/operator/StringOperator;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getActualCriteria(Lorg/andengine/opengl/util/GLState;)Ljava/lang/String;
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 39
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->getExtensions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
