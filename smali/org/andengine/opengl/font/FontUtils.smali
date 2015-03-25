.class public Lorg/andengine/opengl/font/FontUtils;
.super Ljava/lang/Object;
.source "FontUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/font/FontUtils$MeasureDirection;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$entity$text$AutoWrap:[I = null

.field private static final UNSPECIFIED:I = -0x1


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$entity$text$AutoWrap()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lorg/andengine/opengl/font/FontUtils;->$SWITCH_TABLE$org$andengine$entity$text$AutoWrap:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/entity/text/AutoWrap;->values()[Lorg/andengine/entity/text/AutoWrap;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->CJK:Lorg/andengine/entity/text/AutoWrap;

    invoke-virtual {v1}, Lorg/andengine/entity/text/AutoWrap;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->LETTERS:Lorg/andengine/entity/text/AutoWrap;

    invoke-virtual {v1}, Lorg/andengine/entity/text/AutoWrap;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->NONE:Lorg/andengine/entity/text/AutoWrap;

    invoke-virtual {v1}, Lorg/andengine/entity/text/AutoWrap;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lorg/andengine/entity/text/AutoWrap;->WORDS:Lorg/andengine/entity/text/AutoWrap;

    invoke-virtual {v1}, Lorg/andengine/entity/text/AutoWrap;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lorg/andengine/opengl/font/FontUtils;->$SWITCH_TABLE$org$andengine$entity$text$AutoWrap:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static breakText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Lorg/andengine/opengl/font/FontUtils$MeasureDirection;F[F)I
    .locals 1
    .parameter "pFont"
    .parameter "pText"
    .parameter "pMeasureDirection"
    .parameter "pWidthMaximum"
    .parameter "pMeasuredWidth"

    .prologue
    .line 126
    new-instance v0, Lorg/andengine/util/exception/MethodNotYetImplementedException;

    invoke-direct {v0}, Lorg/andengine/util/exception/MethodNotYetImplementedException;-><init>()V

    throw v0
.end method

.method private static getAdvanceCorrection(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;I)F
    .locals 3
    .parameter "pFont"
    .parameter "pText"
    .parameter "pIndex"

    .prologue
    .line 404
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {p0, v1}, Lorg/andengine/opengl/font/IFont;->getLetter(C)Lorg/andengine/opengl/font/Letter;

    move-result-object v0

    .line 405
    .local v0, lastWordLastLetter:Lorg/andengine/opengl/font/Letter;
    iget v1, v0, Lorg/andengine/opengl/font/Letter;->mOffsetX:F

    iget v2, v0, Lorg/andengine/opengl/font/Letter;->mWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    neg-float v1, v1

    iget v2, v0, Lorg/andengine/opengl/font/Letter;->mAdvance:F

    add-float/2addr v1, v2

    return v1
.end method

.method public static measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;)F
    .locals 1
    .parameter "pFont"
    .parameter "pText"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/andengine/opengl/font/FontUtils;->measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;[F)F

    move-result v0

    return v0
.end method

.method public static measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;II)F
    .locals 1
    .parameter "pFont"
    .parameter "pText"
    .parameter "pStart"
    .parameter "pEnd"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/font/FontUtils;->measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;II[F)F

    move-result v0

    return v0
.end method

.method public static measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;II[F)F
    .locals 8
    .parameter "pFont"
    .parameter "pText"
    .parameter "pStart"
    .parameter "pEnd"
    .parameter "pWidths"

    .prologue
    .line 84
    sub-int v4, p3, p2

    .line 86
    .local v4, textLength:I
    if-ne p2, p3, :cond_1

    .line 87
    const/4 v5, 0x0

    .line 112
    :cond_0
    :goto_0
    return v5

    .line 88
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 89
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-interface {p0, v6}, Lorg/andengine/opengl/font/IFont;->getLetter(C)Lorg/andengine/opengl/font/Letter;

    move-result-object v6

    iget v6, v6, Lorg/andengine/opengl/font/Letter;->mWidth:I

    int-to-float v5, v6

    goto :goto_0

    .line 92
    :cond_2
    const/4 v3, 0x0

    .line 93
    .local v3, previousLetter:Lorg/andengine/opengl/font/Letter;
    const/4 v5, 0x0

    .line 94
    .local v5, width:F
    move v2, p2

    .local v2, pos:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v2, p3, :cond_0

    .line 95
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-interface {p0, v6}, Lorg/andengine/opengl/font/IFont;->getLetter(C)Lorg/andengine/opengl/font/Letter;

    move-result-object v1

    .line 96
    .local v1, letter:Lorg/andengine/opengl/font/Letter;
    if-eqz v3, :cond_3

    .line 97
    iget-char v6, v1, Lorg/andengine/opengl/font/Letter;->mCharacter:C

    invoke-virtual {v3, v6}, Lorg/andengine/opengl/font/Letter;->getKerning(I)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    .line 99
    :cond_3
    move-object v3, v1

    .line 102
    add-int/lit8 v6, p3, -0x1

    if-ne v2, v6, :cond_5

    .line 103
    iget v6, v1, Lorg/andengine/opengl/font/Letter;->mOffsetX:F

    iget v7, v1, Lorg/andengine/opengl/font/Letter;->mWidth:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 108
    :goto_2
    if-eqz p4, :cond_4

    .line 109
    aput v5, p4, v0

    .line 94
    :cond_4
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 105
    :cond_5
    iget v6, v1, Lorg/andengine/opengl/font/Letter;->mAdvance:F

    add-float/2addr v5, v6

    goto :goto_2
.end method

.method public static measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;[F)F
    .locals 2
    .parameter "pFont"
    .parameter "pText"
    .parameter "pWidths"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1, p2}, Lorg/andengine/opengl/font/FontUtils;->measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;II[F)F

    move-result v0

    return v0
.end method

.method public static splitLines(Ljava/lang/CharSequence;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "pText"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>(",
            "Ljava/lang/CharSequence;",
            "T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, pResult:Ljava/util/List;,"TL;"
    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Lorg/andengine/util/TextUtils;->split(Ljava/lang/CharSequence;CLjava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static splitLines(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Ljava/util/List;Lorg/andengine/entity/text/AutoWrap;F)Ljava/util/List;
    .locals 3
    .parameter "pFont"
    .parameter "pText"
    .parameter
    .parameter "pAutoWrap"
    .parameter "pAutoWrapWidth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>(",
            "Lorg/andengine/opengl/font/IFont;",
            "Ljava/lang/CharSequence;",
            "T",
            "L;",
            "Lorg/andengine/entity/text/AutoWrap;",
            "F)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 146
    .local p2, pResult:Ljava/util/List;,"TL;"
    invoke-static {}, Lorg/andengine/opengl/font/FontUtils;->$SWITCH_TABLE$org$andengine$entity$text$AutoWrap()[I

    move-result-object v0

    invoke-virtual {p3}, Lorg/andengine/entity/text/AutoWrap;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/entity/text/AutoWrap;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :pswitch_0
    invoke-static {p0, p1, p2, p4}, Lorg/andengine/opengl/font/FontUtils;->splitLinesByLetters(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    .line 150
    :pswitch_1
    invoke-static {p0, p1, p2, p4}, Lorg/andengine/opengl/font/FontUtils;->splitLinesByWords(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_2
    invoke-static {p0, p1, p2, p4}, Lorg/andengine/opengl/font/FontUtils;->splitLinesByCJK(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Ljava/util/List;F)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static splitLinesByCJK(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Ljava/util/List;F)Ljava/util/List;
    .locals 9
    .parameter "pFont"
    .parameter "pText"
    .parameter
    .parameter "pAutoWrapWidth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>(",
            "Lorg/andengine/opengl/font/IFont;",
            "Ljava/lang/CharSequence;",
            "T",
            "L;",
            "F)T",
            "L;"
        }
    .end annotation

    .prologue
    .local p2, pResult:Ljava/util/List;,"TL;"
    const/16 v8, 0x20

    .line 339
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 341
    .local v6, textLength:I
    const/4 v4, 0x0

    .line 342
    .local v4, lineStart:I
    const/4 v3, 0x0

    .line 345
    .local v3, lineEnd:I
    :goto_0
    if-ge v4, v6, :cond_0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-eq v7, v8, :cond_2

    .line 350
    :cond_0
    move v1, v3

    .line 351
    .local v1, i:I
    :cond_1
    :goto_1
    if-lt v1, v6, :cond_3

    .line 400
    return-object p2

    .line 346
    .end local v1           #i:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    .restart local v1       #i:I
    :cond_3
    move v4, v3

    .line 355
    const/4 v0, 0x1

    .line 356
    .local v0, charsAvailable:Z
    :goto_2
    if-lt v1, v6, :cond_4

    .line 394
    :goto_3
    if-eqz v0, :cond_1

    .line 395
    invoke-interface {p1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 359
    :cond_4
    move v2, v3

    .line 360
    .local v2, j:I
    :goto_4
    if-lt v2, v6, :cond_7

    .line 368
    :cond_5
    if-ne v2, v6, :cond_8

    .line 369
    if-ne v4, v3, :cond_6

    .line 370
    const/4 v0, 0x0

    .line 372
    :cond_6
    move v1, v6

    .line 373
    goto :goto_3

    .line 361
    :cond_7
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_5

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 377
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 379
    invoke-static {p0, p1, v4, v3}, Lorg/andengine/opengl/font/FontUtils;->measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;II)F

    move-result v5

    .line 381
    .local v5, lineWidth:F
    cmpl-float v7, v5, p3

    if-lez v7, :cond_a

    .line 382
    add-int/lit8 v7, v3, -0x1

    if-ge v4, v7, :cond_9

    .line 383
    add-int/lit8 v3, v3, -0x1

    .line 386
    :cond_9
    invoke-interface {p1, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    const/4 v0, 0x0

    .line 388
    move v1, v3

    .line 389
    goto :goto_3

    .line 391
    :cond_a
    move v1, v3

    goto :goto_2
.end method

.method private static splitLinesByLetters(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Ljava/util/List;F)Ljava/util/List;
    .locals 10
    .parameter "pFont"
    .parameter "pText"
    .parameter
    .parameter "pAutoWrapWidth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>(",
            "Lorg/andengine/opengl/font/IFont;",
            "Ljava/lang/CharSequence;",
            "T",
            "L;",
            "F)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 160
    .local p2, pResult:Ljava/util/List;,"TL;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 162
    .local v8, textLength:I
    const/4 v6, 0x0

    .line 163
    .local v6, lineStart:I
    const/4 v5, 0x0

    .line 164
    .local v5, lineEnd:I
    const/4 v4, 0x0

    .line 165
    .local v4, lastNonWhitespace:I
    const/4 v1, 0x0

    .line 167
    .local v1, charsAvailable:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v8, :cond_0

    .line 212
    return-object p2

    .line 168
    :cond_0
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 169
    .local v0, character:C
    const/16 v9, 0x20

    if-eq v0, v9, :cond_1

    .line 170
    if-eqz v1, :cond_3

    .line 171
    add-int/lit8 v4, v2, 0x1

    .line 180
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 186
    invoke-static {p0, p1, v6, v4}, Lorg/andengine/opengl/font/FontUtils;->measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;II)F

    move-result v7

    .line 188
    .local v7, lookaheadLineWidth:F
    add-int/lit8 v9, v8, -0x1

    if-ne v2, v9, :cond_4

    const/4 v3, 0x1

    .line 189
    .local v3, isEndReached:Z
    :goto_2
    if-eqz v3, :cond_6

    .line 191
    cmpg-float v9, v7, p3

    if-gtz v9, :cond_5

    .line 192
    invoke-interface {p1, v6, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .end local v3           #isEndReached:Z
    .end local v7           #lookaheadLineWidth:F
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 173
    :cond_3
    const/4 v1, 0x1

    .line 174
    move v6, v2

    .line 175
    add-int/lit8 v4, v6, 0x1

    .line 176
    move v5, v4

    goto :goto_1

    .line 188
    .restart local v7       #lookaheadLineWidth:F
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 194
    .restart local v3       #isEndReached:Z
    :cond_5
    invoke-interface {p1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    if-eq v6, v2, :cond_2

    .line 197
    invoke-interface {p1, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 201
    :cond_6
    cmpg-float v9, v7, p3

    if-gtz v9, :cond_7

    .line 202
    move v5, v4

    .line 203
    goto :goto_3

    .line 204
    :cond_7
    invoke-interface {p1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v2, v5, -0x1

    .line 206
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private static splitLinesByWords(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;Ljava/util/List;F)Ljava/util/List;
    .locals 17
    .parameter "pFont"
    .parameter "pText"
    .parameter
    .parameter "pAutoWrapWidth"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>(",
            "Lorg/andengine/opengl/font/IFont;",
            "Ljava/lang/CharSequence;",
            "T",
            "L;",
            "F)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 216
    .local p2, pResult:Ljava/util/List;,"TL;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    .line 218
    .local v10, textLength:I
    if-nez v10, :cond_1

    .line 335
    :cond_0
    :goto_0
    return-object p2

    .line 222
    :cond_1
    const/16 v15, 0x20

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Lorg/andengine/opengl/font/IFont;->getLetter(C)Lorg/andengine/opengl/font/Letter;

    move-result-object v15

    iget v8, v15, Lorg/andengine/opengl/font/Letter;->mAdvance:F

    .line 224
    .local v8, spaceWidth:F
    const/4 v4, -0x1

    .line 225
    .local v4, lastWordEnd:I
    const/4 v6, -0x1

    .line 226
    .local v6, lineStart:I
    const/4 v5, -0x1

    .line 228
    .local v5, lineEnd:I
    move/from16 v7, p3

    .line 229
    .local v7, lineWidthRemaining:F
    const/4 v2, 0x1

    .line 230
    .local v2, firstWordInLine:Z
    const/4 v3, 0x0

    .line 231
    .local v3, i:I
    :cond_2
    :goto_1
    if-ge v3, v10, :cond_0

    .line 232
    const/4 v9, 0x0

    .line 235
    .local v9, spacesSkipped:I
    :goto_2
    if-ge v3, v10, :cond_3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v16, 0x20

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 240
    :cond_3
    move v13, v3

    .line 243
    .local v13, wordStart:I
    const/4 v15, -0x1

    if-ne v6, v15, :cond_4

    .line 244
    move v6, v13

    .line 248
    :cond_4
    :goto_3
    if-ge v3, v10, :cond_5

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_7

    .line 252
    :cond_5
    move v12, v3

    .line 255
    .local v12, wordEnd:I
    if-ne v13, v12, :cond_8

    .line 256
    if-nez v2, :cond_0

    .line 257
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v12           #wordEnd:I
    .end local v13           #wordStart:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 237
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 249
    .restart local v13       #wordStart:I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 265
    .restart local v12       #wordEnd:I
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v13, v12}, Lorg/andengine/opengl/font/FontUtils;->measureText(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;II)F

    move-result v14

    .line 269
    .local v14, wordWidth:F
    if-eqz v2, :cond_9

    .line 270
    move v11, v14

    .line 276
    .local v11, widthNeeded:F
    :goto_4
    cmpg-float v15, v11, v7

    if-gtz v15, :cond_b

    .line 277
    if-eqz v2, :cond_a

    .line 278
    const/4 v2, 0x0

    .line 282
    :goto_5
    sub-float/2addr v7, v11

    .line 283
    move v4, v12

    .line 284
    move v5, v12

    .line 287
    if-ne v12, v10, :cond_2

    .line 288
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    .end local v11           #widthNeeded:F
    :cond_9
    int-to-float v15, v9

    mul-float/2addr v15, v8

    add-float v11, v15, v14

    .restart local v11       #widthNeeded:F
    goto :goto_4

    .line 280
    :cond_a
    add-int/lit8 v15, v4, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lorg/andengine/opengl/font/FontUtils;->getAdvanceCorrection(Lorg/andengine/opengl/font/IFont;Ljava/lang/CharSequence;I)F

    move-result v15

    sub-float/2addr v7, v15

    goto :goto_5

    .line 294
    :cond_b
    if-eqz v2, :cond_e

    .line 296
    cmpl-float v15, v14, p3

    if-ltz v15, :cond_d

    .line 297
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    move/from16 v7, p3

    .line 311
    :cond_c
    const/4 v2, 0x1

    .line 312
    const/4 v4, -0x1

    .line 313
    const/4 v6, -0x1

    .line 314
    const/4 v5, -0x1

    .line 315
    goto/16 :goto_1

    .line 300
    :cond_d
    sub-float v7, p3, v14

    .line 303
    if-ne v12, v10, :cond_c

    .line 304
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 317
    :cond_e
    move-object/from16 v0, p1

    invoke-interface {v0, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    if-ne v12, v10, :cond_f

    .line 322
    move-object/from16 v0, p1

    invoke-interface {v0, v13, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 326
    :cond_f
    sub-float v7, p3, v14

    .line 327
    const/4 v2, 0x0

    .line 328
    move v4, v12

    .line 329
    move v6, v13

    .line 330
    move v5, v12

    goto/16 :goto_1
.end method
