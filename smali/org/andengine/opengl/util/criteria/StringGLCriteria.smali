.class public abstract Lorg/andengine/opengl/util/criteria/StringGLCriteria;
.super Ljava/lang/Object;
.source "StringGLCriteria.java"

# interfaces
.implements Lorg/andengine/opengl/util/criteria/IGLCriteria;


# instance fields
.field private final mCriteria:Ljava/lang/String;

.field private final mStringOperator:Lorg/andengine/util/adt/data/operator/StringOperator;


# direct methods
.method public constructor <init>(Lorg/andengine/util/adt/data/operator/StringOperator;Ljava/lang/String;)V
    .locals 0
    .parameter "pStringOperator"
    .parameter "pCriteria"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lorg/andengine/opengl/util/criteria/StringGLCriteria;->mCriteria:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lorg/andengine/opengl/util/criteria/StringGLCriteria;->mStringOperator:Lorg/andengine/util/adt/data/operator/StringOperator;

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract getActualCriteria(Lorg/andengine/opengl/util/GLState;)Ljava/lang/String;
.end method

.method public isMet(Lorg/andengine/opengl/util/GLState;)Z
    .locals 3
    .parameter "pGLState"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/andengine/opengl/util/criteria/StringGLCriteria;->mStringOperator:Lorg/andengine/util/adt/data/operator/StringOperator;

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/util/criteria/StringGLCriteria;->getActualCriteria(Lorg/andengine/opengl/util/GLState;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/andengine/opengl/util/criteria/StringGLCriteria;->mCriteria:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/andengine/util/adt/data/operator/StringOperator;->check(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
