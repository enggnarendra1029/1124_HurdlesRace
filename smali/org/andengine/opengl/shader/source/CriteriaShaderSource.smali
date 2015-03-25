.class public Lorg/andengine/opengl/shader/source/CriteriaShaderSource;
.super Ljava/lang/Object;
.source "CriteriaShaderSource.java"

# interfaces
.implements Lorg/andengine/opengl/shader/source/IShaderSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;
    }
.end annotation


# instance fields
.field private final mCriteriaShaderSourceEntries:[Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;


# direct methods
.method public varargs constructor <init>([Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;)V
    .locals 0
    .parameter "pCriteriaShaderSourceEntries"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/andengine/opengl/shader/source/CriteriaShaderSource;->mCriteriaShaderSourceEntries:[Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;

    .line 30
    return-void
.end method


# virtual methods
.method public getShaderSource(Lorg/andengine/opengl/util/GLState;)Ljava/lang/String;
    .locals 5
    .parameter "pGLState"

    .prologue
    .line 42
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/andengine/opengl/shader/source/CriteriaShaderSource;->mCriteriaShaderSourceEntries:[Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 48
    new-instance v2, Lorg/andengine/opengl/shader/exception/ShaderProgramException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v4, Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " met!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/andengine/opengl/shader/exception/ShaderProgramException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_0
    iget-object v2, p0, Lorg/andengine/opengl/shader/source/CriteriaShaderSource;->mCriteriaShaderSourceEntries:[Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;

    aget-object v0, v2, v1

    .line 44
    .local v0, criteriaShaderSourceEntry:Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;
    invoke-virtual {v0, p1}, Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;->isMet(Lorg/andengine/opengl/util/GLState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-virtual {v0}, Lorg/andengine/opengl/shader/source/CriteriaShaderSource$CriteriaShaderSourceEntry;->getShaderSource()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
