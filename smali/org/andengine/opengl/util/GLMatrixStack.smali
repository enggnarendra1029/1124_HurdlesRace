.class public Lorg/andengine/opengl/util/GLMatrixStack;
.super Ljava/lang/Object;
.source "GLMatrixStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/util/GLMatrixStack$GLMatrixStackOverflowException;,
        Lorg/andengine/opengl/util/GLMatrixStack$GLMatrixStackUnderflowException;
    }
.end annotation


# static fields
.field private static final GLMATRIXSTACKOFFSET_OVERFLOW:I = 0x200

.field private static final GLMATRIXSTACKOFFSET_UNDERFLOW:I = -0x10

.field public static final GLMATRIXSTACK_DEPTH_MAX:I = 0x20

.field public static final GLMATRIX_SIZE:I = 0x10


# instance fields
.field final mMatrixStack:[F

.field mMatrixStackOffset:I

.field private final mTemp:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/16 v0, 0x200

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    .line 34
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mTemp:[F

    .line 41
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLMatrixStack;->glLoadIdentity()V

    .line 42
    return-void
.end method

.method private static setSkewM([FIFF)V
    .locals 6
    .parameter "pMatrixStack"
    .parameter "pOffset"
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    const v5, -0x437105cb

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 115
    add-int/lit8 v0, p1, 0x0

    aput v4, p0, v0

    .line 116
    add-int/lit8 v0, p1, 0x1

    mul-float v1, v5, p3

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p0, v0

    .line 117
    add-int/lit8 v0, p1, 0x2

    aput v3, p0, v0

    .line 118
    add-int/lit8 v0, p1, 0x3

    aput v3, p0, v0

    .line 120
    add-int/lit8 v0, p1, 0x4

    mul-float v1, v5, p2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, p0, v0

    .line 121
    add-int/lit8 v0, p1, 0x5

    aput v4, p0, v0

    .line 122
    add-int/lit8 v0, p1, 0x6

    aput v3, p0, v0

    .line 123
    add-int/lit8 v0, p1, 0x7

    aput v3, p0, v0

    .line 125
    add-int/lit8 v0, p1, 0x8

    aput v3, p0, v0

    .line 126
    add-int/lit8 v0, p1, 0x9

    aput v3, p0, v0

    .line 127
    add-int/lit8 v0, p1, 0xa

    aput v4, p0, v0

    .line 128
    add-int/lit8 v0, p1, 0xb

    aput v3, p0, v0

    .line 130
    add-int/lit8 v0, p1, 0xc

    aput v3, p0, v0

    .line 131
    add-int/lit8 v0, p1, 0xd

    aput v3, p0, v0

    .line 132
    add-int/lit8 v0, p1, 0xe

    aput v3, p0, v0

    .line 133
    add-int/lit8 v0, p1, 0xf

    aput v4, p0, v0

    .line 134
    return-void
.end method


# virtual methods
.method public getMatrix([F)V
    .locals 4
    .parameter "pMatrix"

    .prologue
    .line 53
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v1, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    return-void
.end method

.method public glLoadIdentity()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v1, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 66
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 8
    .parameter "pLeft"
    .parameter "pRight"
    .parameter "pBottom"
    .parameter "pTop"
    .parameter "pZNear"
    .parameter "pZFar"

    .prologue
    .line 89
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v1, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 90
    return-void
.end method

.method public glPopMatrix()V
    .locals 2

    .prologue
    .line 102
    iget v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    add-int/lit8 v0, v0, -0x10

    const/16 v1, -0x10

    if-gt v0, v1, :cond_0

    .line 103
    new-instance v0, Lorg/andengine/opengl/util/GLMatrixStack$GLMatrixStackUnderflowException;

    invoke-direct {v0}, Lorg/andengine/opengl/util/GLMatrixStack$GLMatrixStackUnderflowException;-><init>()V

    throw v0

    .line 106
    :cond_0
    iget v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    add-int/lit8 v0, v0, -0x10

    iput v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    .line 107
    return-void
.end method

.method public glPushMatrix()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/util/GLMatrixStack$GLMatrixStackOverflowException;
        }
    .end annotation

    .prologue
    .line 93
    iget v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    add-int/lit8 v0, v0, 0x10

    const/16 v1, 0x200

    if-lt v0, v1, :cond_0

    .line 94
    new-instance v0, Lorg/andengine/opengl/util/GLMatrixStack$GLMatrixStackOverflowException;

    invoke-direct {v0}, Lorg/andengine/opengl/util/GLMatrixStack$GLMatrixStackOverflowException;-><init>()V

    throw v0

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v1, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    iget-object v2, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v3, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    add-int/lit8 v3, v3, 0x10

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    .line 99
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 8
    .parameter "pAngle"
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x10

    .line 73
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mTemp:[F

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 74
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v2, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    iget-object v3, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mTemp:[F

    invoke-static {v0, v2, v3, v7, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iget-object v2, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v3, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    iget-object v4, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mTemp:[F

    iget-object v6, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mTemp:[F

    move v5, v7

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 76
    return-void
.end method

.method public glScalef(FFF)V
    .locals 2
    .parameter "pScaleX"
    .parameter "pScaleY"
    .parameter "pScaleZ"

    .prologue
    .line 79
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v1, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 80
    return-void
.end method

.method public glSkewf(FF)V
    .locals 6
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    const/4 v5, 0x0

    const/16 v3, 0x10

    .line 83
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mTemp:[F

    invoke-static {v0, v5, p1, p2}, Lorg/andengine/opengl/util/GLMatrixStack;->setSkewM([FIFF)V

    .line 84
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v1, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    iget-object v2, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mTemp:[F

    invoke-static {v0, v1, v2, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v1, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    iget-object v2, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mTemp:[F

    iget-object v4, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mTemp:[F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 86
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 2
    .parameter "pX"
    .parameter "pY"
    .parameter "pZ"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStack:[F

    iget v1, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 70
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/opengl/util/GLMatrixStack;->mMatrixStackOffset:I

    .line 111
    invoke-virtual {p0}, Lorg/andengine/opengl/util/GLMatrixStack;->glLoadIdentity()V

    .line 112
    return-void
.end method
