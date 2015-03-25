.class public Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;
.super Ljava/lang/Object;
.source "CriteriaShaderSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/shader/source/CriteriaShaderSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CriteriaShaderSourceEntry"
.end annotation


# instance fields
.field private final mGLCriterias:[Lorg/andengine/opengl/util/criteria/IGLCriteria;

.field private final mShaderSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pShaderSource"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;-><init>(Ljava/lang/String;[Lorg/andengine/opengl/util/criteria/IGLCriteria;)V

    .line 77
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lorg/andengine/opengl/util/criteria/IGLCriteria;)V
    .locals 0
    .parameter "pShaderSource"
    .parameter "pCriterias"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p2, p0, Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;->mGLCriterias:[Lorg/andengine/opengl/util/criteria/IGLCriteria;

    .line 81
    iput-object p1, p0, Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;->mShaderSource:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getShaderSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;->mShaderSource:Ljava/lang/String;

    return-object v0
.end method

.method public isMet(Lorg/andengine/opengl/util/GLState;)Z
    .locals 6
    .parameter "pGLState"

    .prologue
    const/4 v1, 0x0

    .line 101
    iget-object v2, p0, Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;->mGLCriterias:[Lorg/andengine/opengl/util/criteria/IGLCriteria;

    if-eqz v2, :cond_0

    .line 102
    iget-object v3, p0, Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;->mGLCriterias:[Lorg/andengine/opengl/util/criteria/IGLCriteria;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_2

    .line 108
    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    .line 102
    :cond_2
    aget-object v0, v3, v2

    .line 103
    .local v0, gLCriteria:Lorg/andengine/opengl/util/criteria/IGLCriteria;
    invoke-interface {v0, p1}, Lorg/andengine/opengl/util/criteria/IGLCriteria;->isMet(Lorg/andengine/opengl/util/GLState;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
