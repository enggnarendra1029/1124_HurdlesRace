.class public Lorg/andengine/opengl/util/criteria/AndroidVersionCodeGLCriteria;
.super Lorg/andengine/opengl/util/criteria/IntGLCriteria;
.source "AndroidVersionCodeGLCriteria.java"


# direct methods
.method public constructor <init>(Lorg/andengine/util/adt/data/operator/IntOperator;I)V
    .locals 0
    .parameter "pIntOperator"
    .parameter "pAndroidVersionCode"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/andengine/opengl/util/criteria/IntGLCriteria;-><init>(Lorg/andengine/util/adt/data/operator/IntOperator;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected getActualCriteria(Lorg/andengine/opengl/util/GLState;)I
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
