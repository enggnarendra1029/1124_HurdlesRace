.class public abstract Lorg/andengine/opengl/util/criteria/IntGLCriteria;
.super Ljava/lang/Object;
.source "IntGLCriteria.java"

# interfaces
.implements Lorg/andengine/opengl/util/criteria/IGLCriteria;


# instance fields
.field private final mCriteria:I

.field private final mIntOperator:Lorg/andengine/util/adt/data/operator/IntOperator;


# direct methods
.method public constructor <init>(Lorg/andengine/util/adt/data/operator/IntOperator;I)V
    .locals 0
    .parameter "pIntOperator"
    .parameter "pCriteria"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p2, p0, Lorg/andengine/opengl/util/criteria/IntGLCriteria;->mCriteria:I

    .line 30
    iput-object p1, p0, Lorg/andengine/opengl/util/criteria/IntGLCriteria;->mIntOperator:Lorg/andengine/util/adt/data/operator/IntOperator;

    .line 31
    return-void
.end method


# virtual methods
.method protected abstract getActualCriteria(Lorg/andengine/opengl/util/GLState;)I
.end method

.method public isMet(Lorg/andengine/opengl/util/GLState;)Z
    .locals 3
    .parameter "pGLState"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/andengine/opengl/util/criteria/IntGLCriteria;->mIntOperator:Lorg/andengine/util/adt/data/operator/IntOperator;

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/util/criteria/IntGLCriteria;->getActualCriteria(Lorg/andengine/opengl/util/GLState;)I

    move-result v1

    iget v2, p0, Lorg/andengine/opengl/util/criteria/IntGLCriteria;->mCriteria:I

    invoke-virtual {v0, v1, v2}, Lorg/andengine/util/adt/data/operator/IntOperator;->check(II)Z

    move-result v0

    return v0
.end method
