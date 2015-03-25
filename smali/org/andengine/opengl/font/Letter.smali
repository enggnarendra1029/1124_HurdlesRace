.class public Lorg/andengine/opengl/font/Letter;
.super Ljava/lang/Object;
.source "Letter.java"


# instance fields
.field public final mAdvance:F

.field public final mCharacter:C

.field public final mHeight:I

.field private mKernings:Landroid/util/SparseIntArray;

.field public final mOffsetX:F

.field public final mOffsetY:F

.field public final mTextureX:I

.field public final mTextureY:I

.field public final mU:F

.field public final mU2:F

.field public final mV:F

.field public final mV2:F

.field private final mWhitespace:Z

.field public final mWidth:I


# direct methods
.method constructor <init>(CF)V
    .locals 14
    .parameter "pCharacter"
    .parameter "pAdvance"

    .prologue
    .line 44
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v9, p2

    invoke-direct/range {v0 .. v13}, Lorg/andengine/opengl/font/Letter;-><init>(CZIIIIFFFFFFF)V

    .line 45
    return-void
.end method

.method constructor <init>(CIIIIFFFFFFF)V
    .locals 14
    .parameter "pCharacter"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pOffsetX"
    .parameter "pOffsetY"
    .parameter "pAdvance"
    .parameter "pU"
    .parameter "pV"
    .parameter "pU2"
    .parameter "pV2"

    .prologue
    .line 48
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lorg/andengine/opengl/font/Letter;-><init>(CZIIIIFFFFFFF)V

    .line 49
    return-void
.end method

.method private constructor <init>(CZIIIIFFFFFFF)V
    .locals 0
    .parameter "pCharacter"
    .parameter "pWhitespace"
    .parameter "pTextureX"
    .parameter "pTextureY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pOffsetX"
    .parameter "pOffsetY"
    .parameter "pAdvance"
    .parameter "pU"
    .parameter "pV"
    .parameter "pU2"
    .parameter "pV2"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-char p1, p0, Lorg/andengine/opengl/font/Letter;->mCharacter:C

    .line 53
    iput-boolean p2, p0, Lorg/andengine/opengl/font/Letter;->mWhitespace:Z

    .line 54
    iput p5, p0, Lorg/andengine/opengl/font/Letter;->mWidth:I

    .line 55
    iput p6, p0, Lorg/andengine/opengl/font/Letter;->mHeight:I

    .line 56
    iput p3, p0, Lorg/andengine/opengl/font/Letter;->mTextureX:I

    .line 57
    iput p4, p0, Lorg/andengine/opengl/font/Letter;->mTextureY:I

    .line 58
    iput p7, p0, Lorg/andengine/opengl/font/Letter;->mOffsetX:F

    .line 59
    iput p8, p0, Lorg/andengine/opengl/font/Letter;->mOffsetY:F

    .line 60
    iput p9, p0, Lorg/andengine/opengl/font/Letter;->mAdvance:F

    .line 61
    iput p10, p0, Lorg/andengine/opengl/font/Letter;->mU:F

    .line 62
    iput p11, p0, Lorg/andengine/opengl/font/Letter;->mV:F

    .line 63
    iput p12, p0, Lorg/andengine/opengl/font/Letter;->mU2:F

    .line 64
    iput p13, p0, Lorg/andengine/opengl/font/Letter;->mV2:F

    .line 65
    return-void
.end method


# virtual methods
.method addKerning(II)V
    .locals 1
    .parameter "pCharacter"
    .parameter "pKerning"

    .prologue
    .line 139
    iget-object v0, p0, Lorg/andengine/opengl/font/Letter;->mKernings:Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/font/Letter;->mKernings:Landroid/util/SparseIntArray;

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/andengine/opengl/font/Letter;->mKernings:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "pObject"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    if-ne p0, p1, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 100
    goto :goto_0

    .line 102
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 103
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 105
    check-cast v0, Lorg/andengine/opengl/font/Letter;

    .line 106
    .local v0, other:Lorg/andengine/opengl/font/Letter;
    iget-char v3, p0, Lorg/andengine/opengl/font/Letter;->mCharacter:C

    iget-char v4, v0, Lorg/andengine/opengl/font/Letter;->mCharacter:C

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 107
    goto :goto_0
.end method

.method public getKerning(I)I
    .locals 2
    .parameter "pCharacter"

    .prologue
    const/4 v0, 0x0

    .line 72
    iget-object v1, p0, Lorg/andengine/opengl/font/Letter;->mKernings:Landroid/util/SparseIntArray;

    if-nez v1, :cond_0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/andengine/opengl/font/Letter;->mKernings:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 88
    const/16 v0, 0x1f

    .line 89
    .local v0, prime:I
    const/4 v1, 0x1

    .line 90
    .local v1, result:I
    iget-char v2, p0, Lorg/andengine/opengl/font/Letter;->mCharacter:C

    add-int/lit8 v1, v2, 0x1f

    .line 91
    return v1
.end method

.method public isWhitespace()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/andengine/opengl/font/Letter;->mWhitespace:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    const-string v1, "[Character="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lorg/andengine/opengl/font/Letter;->mCharacter:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string v1, ", Whitespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/andengine/opengl/font/Letter;->mWhitespace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    const-string v1, ", TextureX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mTextureX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string v1, ", TextureY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mTextureY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    const-string v1, ", Width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string v1, ", Height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    const-string v1, ", OffsetX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mOffsetX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string v1, ", OffsetY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mOffsetY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    const-string v1, ", Advance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mAdvance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    const-string v1, ", U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mU:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    const-string v1, ", V="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string v1, ", U2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mU2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 133
    const-string v1, ", V2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/andengine/opengl/font/Letter;->mV2:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string v1, ", Kernings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/opengl/font/Letter;->mKernings:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
