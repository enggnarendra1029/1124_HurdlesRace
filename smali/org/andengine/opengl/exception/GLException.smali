.class public Lorg/andengine/opengl/exception/GLException;
.super Ljava/lang/RuntimeException;
.source "GLException.java"


# static fields
.field private static final serialVersionUID:J = -0x68035109e7b1a532L


# instance fields
.field private final mError:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "pError"

    .prologue
    .line 29
    invoke-static {p1}, Lorg/andengine/opengl/exception/GLException;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/andengine/opengl/exception/GLException;-><init>(ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "pError"
    .parameter "pString"

    .prologue
    .line 33
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 35
    iput p1, p0, Lorg/andengine/opengl/exception/GLException;->mError:I

    .line 36
    return-void
.end method

.method private static getErrorString(I)Ljava/lang/String;
    .locals 3
    .parameter "pError"

    .prologue
    .line 55
    invoke-static {p0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, errorString:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown error \'0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getError()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/andengine/opengl/exception/GLException;->mError:I

    return v0
.end method
