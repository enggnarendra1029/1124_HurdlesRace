.class public Lorg/andengine/opengl/util/criteria/BuildModelGLCriteria;
.super Lorg/andengine/opengl/util/criteria/StringGLCriteria;
.source "BuildModelGLCriteria.java"


# direct methods
.method public constructor <init>(Lorg/andengine/util/adt/data/operator/StringOperator;Ljava/lang/String;)V
    .locals 0
    .parameter "pStringOperator"
    .parameter "pBuildModel"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/andengine/opengl/util/criteria/StringGLCriteria;-><init>(Lorg/andengine/util/adt/data/operator/StringOperator;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getActualCriteria(Lorg/andengine/opengl/util/GLState;)Ljava/lang/String;
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 41
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method
