.class public Lorg/andengine/opengl/util/criteria/LogicalAndGLCriteria;
.super Ljava/lang/Object;
.source "LogicalAndGLCriteria.java"

# interfaces
.implements Lorg/andengine/opengl/util/criteria/IGLCriteria;


# instance fields
.field private final mGLCriterias:[Lorg/andengine/opengl/util/criteria/IGLCriteria;


# direct methods
.method public varargs constructor <init>([Lorg/andengine/opengl/util/criteria/IGLCriteria;)V
    .locals 0
    .parameter "pGLCriterias"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/andengine/opengl/util/criteria/LogicalAndGLCriteria;->mGLCriterias:[Lorg/andengine/opengl/util/criteria/IGLCriteria;

    .line 28
    return-void
.end method


# virtual methods
.method public isMet(Lorg/andengine/opengl/util/GLState;)Z
    .locals 6
    .parameter "pGLState"

    .prologue
    const/4 v1, 0x0

    .line 40
    iget-object v3, p0, Lorg/andengine/opengl/util/criteria/LogicalAndGLCriteria;->mGLCriterias:[Lorg/andengine/opengl/util/criteria/IGLCriteria;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 45
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 40
    :cond_1
    aget-object v0, v3, v2

    .line 41
    .local v0, gLCriteria:Lorg/andengine/opengl/util/criteria/IGLCriteria;
    invoke-interface {v0, p1}, Lorg/andengine/opengl/util/criteria/IGLCriteria;->isMet(Lorg/andengine/opengl/util/GLState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
