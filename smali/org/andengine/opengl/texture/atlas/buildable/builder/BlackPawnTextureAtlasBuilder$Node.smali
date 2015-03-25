.class public Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;
.super Ljava/lang/Object;
.source "BlackPawnTextureAtlasBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Node"
.end annotation


# instance fields
.field private mChildA:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

.field private mChildB:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

.field private final mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

.field private mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .parameter "pLeft"
    .parameter "pTop"
    .parameter "pWidth"
    .parameter "pHeight"

    .prologue
    .line 200
    new-instance v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;-><init>(IIII)V

    invoke-direct {p0, v0}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;-><init>(Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    .local p1, pRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    .line 205
    return-void
.end method

.method static synthetic access$0(Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    return-object v0
.end method

.method private createChildren(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIIIII)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;
    .locals 8
    .parameter "pTextureAtlasSource"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTextureAtlasSourceSpacing"
    .parameter "pTextureAtlasSourcePadding"
    .parameter "pDeltaWidth"
    .parameter "pDeltaHeight"

    .prologue
    .line 305
    iget-object v6, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    .line 307
    .local v6, rect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;"
    if-lt p6, p7, :cond_0

    .line 309
    new-instance v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    .line 310
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getLeft()I

    move-result v1

    .line 311
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getTop()I

    move-result v2

    .line 312
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v3

    add-int/2addr v3, p4

    mul-int/lit8 v4, p5, 0x2

    add-int/2addr v3, v4

    .line 313
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;-><init>(IIII)V

    .line 309
    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildA:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    .line 316
    new-instance v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    .line 317
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getLeft()I

    move-result v1

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v2

    add-int/2addr v2, p4

    mul-int/lit8 v3, p5, 0x2

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 318
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getTop()I

    move-result v2

    .line 319
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getWidth()I

    move-result v3

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v4

    add-int/2addr v4, p4

    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 320
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;-><init>(IIII)V

    .line 316
    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildB:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    .line 339
    :goto_0
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildA:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->insert(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIII)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-result-object v0

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    .line 325
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getLeft()I

    move-result v1

    .line 326
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getTop()I

    move-result v2

    .line 327
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getWidth()I

    move-result v3

    .line 328
    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v4

    add-int/2addr v4, p4

    mul-int/lit8 v5, p5, 0x2

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;-><init>(IIII)V

    .line 324
    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildA:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    .line 331
    new-instance v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    .line 332
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getLeft()I

    move-result v1

    .line 333
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getTop()I

    move-result v2

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v3

    add-int/2addr v3, p4

    mul-int/lit8 v4, p5, 0x2

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 334
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getWidth()I

    move-result v3

    .line 335
    invoke-virtual {v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getHeight()I

    move-result v4

    invoke-interface {p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v5

    add-int/2addr v5, p4

    mul-int/lit8 v7, p5, 0x2

    add-int/2addr v5, v7

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;-><init>(IIII)V

    .line 331
    iput-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildB:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    goto :goto_0
.end method


# virtual methods
.method public getChildA()Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildA:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    return-object v0
.end method

.method public getChildB()Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildB:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    return-object v0
.end method

.method public getRect()Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    return-object v0
.end method

.method public insert(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIII)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;
    .locals 21
    .parameter "pTextureAtlasSource"
    .parameter "pTextureWidth"
    .parameter "pTextureHeight"
    .parameter "pTextureAtlasSourceSpacing"
    .parameter "pTextureAtlasSourcePadding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildA:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildB:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    if-eqz v2, :cond_1

    .line 233
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildA:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->insert(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIII)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-result-object v12

    .line 234
    .local v12, newNode:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;"
    if-eqz v12, :cond_0

    move-object/from16 p0, v12

    .line 299
    .end local v12           #newNode:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;"
    .end local p0
    :goto_0
    return-object p0

    .line 237
    .restart local v12       #newNode:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;"
    .restart local p0
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mChildB:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->insert(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIII)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-result-object p0

    goto :goto_0

    .line 240
    .end local v12           #newNode:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    if-eqz v2, :cond_2

    .line 241
    const/16 p0, 0x0

    goto :goto_0

    .line 244
    :cond_2
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureWidth()I

    move-result v2

    mul-int/lit8 v3, p5, 0x2

    add-int v19, v2, v3

    .line 245
    .local v19, textureSourceWidth:I
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;->getTextureHeight()I

    move-result v2

    mul-int/lit8 v3, p5, 0x2

    add-int v17, v2, v3

    .line 247
    .local v17, textureSourceHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getWidth()I

    move-result v16

    .line 248
    .local v16, rectWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getHeight()I

    move-result v13

    .line 250
    .local v13, rectHeight:I
    move/from16 v0, v19

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    move/from16 v0, v17

    if-le v0, v13, :cond_4

    .line 251
    :cond_3
    const/16 p0, 0x0

    goto :goto_0

    .line 254
    :cond_4
    add-int v20, v19, p4

    .line 255
    .local v20, textureSourceWidthWithSpacing:I
    add-int v18, v17, p4

    .line 257
    .local v18, textureSourceHeightWithSpacing:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getLeft()I

    move-result v14

    .line 258
    .local v14, rectLeft:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    invoke-virtual {v2}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->getTop()I

    move-result v15

    .line 260
    .local v15, rectTop:I
    move/from16 v0, v17

    if-ne v0, v13, :cond_5

    add-int v2, v15, v17

    move/from16 v0, p3

    if-ne v2, v0, :cond_5

    const/4 v10, 0x1

    .line 261
    .local v10, fitToBottomWithoutSpacing:Z
    :goto_1
    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    add-int v2, v14, v19

    move/from16 v0, p2

    if-ne v2, v0, :cond_6

    const/4 v11, 0x1

    .line 263
    .local v11, fitToRightWithoutSpacing:Z
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 264
    move/from16 v0, v18

    if-ne v0, v13, :cond_7

    .line 265
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    goto/16 :goto_0

    .line 260
    .end local v10           #fitToBottomWithoutSpacing:Z
    .end local v11           #fitToRightWithoutSpacing:Z
    :cond_5
    const/4 v10, 0x0

    goto :goto_1

    .line 261
    .restart local v10       #fitToBottomWithoutSpacing:Z
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 267
    .restart local v11       #fitToRightWithoutSpacing:Z
    :cond_7
    if-eqz v10, :cond_8

    .line 268
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    goto/16 :goto_0

    .line 273
    :cond_8
    if-eqz v11, :cond_c

    .line 274
    move/from16 v0, v18

    if-ne v0, v13, :cond_9

    .line 275
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    goto/16 :goto_0

    .line 277
    :cond_9
    if-eqz v10, :cond_a

    .line 278
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    goto/16 :goto_0

    .line 280
    :cond_a
    move/from16 v0, v18

    if-le v0, v13, :cond_b

    .line 281
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 283
    :cond_b
    sub-int v8, v16, v19

    sub-int v9, v13, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->createChildren(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIIIII)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-result-object p0

    goto/16 :goto_0

    .line 287
    :cond_c
    if-eqz v10, :cond_f

    .line 288
    move/from16 v0, v20

    move/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 289
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mTextureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    goto/16 :goto_0

    .line 291
    :cond_d
    move/from16 v0, v20

    move/from16 v1, v16

    if-le v0, v1, :cond_e

    .line 292
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 294
    :cond_e
    sub-int v8, v16, v20

    sub-int v9, v13, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->createChildren(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIIIII)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-result-object p0

    goto/16 :goto_0

    .line 296
    :cond_f
    move/from16 v0, v20

    move/from16 v1, v16

    if-gt v0, v1, :cond_10

    move/from16 v0, v18

    if-le v0, v13, :cond_11

    .line 297
    :cond_10
    const/16 p0, 0x0

    goto/16 :goto_0

    .line 299
    :cond_11
    sub-int v8, v16, v20

    sub-int v9, v13, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v9}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->createChildren(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIIIII)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-result-object p0

    goto/16 :goto_0
.end method
