.class public Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/font/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitmapFontInfo"
.end annotation


# static fields
.field private static final PADDING_BOTTOM_INDEX:I = 0x3

.field private static final PADDING_LEFT_INDEX:I = 0x0

.field private static final PADDING_RIGHT_INDEX:I = 0x2

.field private static final PADDING_TOP_INDEX:I = 0x1

.field private static final SPACING_X_INDEX:I = 0x0

.field private static final SPACING_Y_INDEX:I = 0x1


# instance fields
.field private final mAntiAliased:Z

.field private final mBold:Z

.field private final mCharset:Ljava/lang/String;

.field private final mFace:Ljava/lang/String;

.field private final mItalic:Z

.field private final mPaddingBottom:I

.field private final mPaddingLeft:I

.field private final mPaddingRight:I

.field private final mPaddingTop:I

.field private final mSize:I

.field private final mSmooth:Z

.field private final mSpacingX:I

.field private final mSpacingY:I

.field private final mStretchHeight:I

.field private final mUnicode:I

.field final synthetic this$0:Lorg/andengine/opengl/font/BitmapFont;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/font/BitmapFont;Ljava/lang/String;)V
    .locals 12
    .parameter
    .parameter "pData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/font/exception/FontException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 576
    iput-object p1, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->this$0:Lorg/andengine/opengl/font/BitmapFont;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 577
    if-nez p2, :cond_0

    .line 578
    new-instance v5, Lorg/andengine/opengl/font/exception/FontException;

    const-string v6, "pData must not be null."

    invoke-direct {v5, v6}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 581
    :cond_0
    sget-object v5, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACE:Ljava/util/regex/Pattern;

    const/16 v6, 0xc

    invoke-virtual {v5, p2, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    .line 583
    .local v0, infoAttributes:[Ljava/lang/String;
    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0xb

    if-eq v5, v6, :cond_1

    .line 584
    new-instance v5, Lorg/andengine/opengl/font/exception/FontException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Expected: \'11\' info attributes, found: \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 586
    :cond_1
    aget-object v5, v0, v7

    const-string v6, "info"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 587
    new-instance v5, Lorg/andengine/opengl/font/exception/FontException;

    const-string v6, "Expected: \'info\' attributes."

    invoke-direct {v5, v6}, Lorg/andengine/opengl/font/exception/FontException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 590
    :cond_2
    const-string v5, "face"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getStringAttribute([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v8, v5}, Lorg/andengine/opengl/font/BitmapFont;->access$0([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mFace:Ljava/lang/String;

    .line 591
    const-string v5, "size"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I
    invoke-static {v0, v9, v5}, Lorg/andengine/opengl/font/BitmapFont;->access$1([Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mSize:I

    .line 592
    const-string v5, "bold"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getBooleanAttribute([Ljava/lang/String;ILjava/lang/String;)Z
    invoke-static {v0, v10, v5}, Lorg/andengine/opengl/font/BitmapFont;->access$2([Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mBold:Z

    .line 593
    const-string v5, "italic"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getBooleanAttribute([Ljava/lang/String;ILjava/lang/String;)Z
    invoke-static {v0, v11, v5}, Lorg/andengine/opengl/font/BitmapFont;->access$2([Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mItalic:Z

    .line 594
    const/4 v5, 0x5

    const-string v6, "charset"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getStringAttribute([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v5, v6}, Lorg/andengine/opengl/font/BitmapFont;->access$0([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mCharset:Ljava/lang/String;

    .line 595
    const/4 v5, 0x6

    const-string v6, "unicode"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I
    invoke-static {v0, v5, v6}, Lorg/andengine/opengl/font/BitmapFont;->access$1([Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mUnicode:I

    .line 596
    const/4 v5, 0x7

    const-string v6, "stretchH"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getIntAttribute([Ljava/lang/String;ILjava/lang/String;)I
    invoke-static {v0, v5, v6}, Lorg/andengine/opengl/font/BitmapFont;->access$1([Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mStretchHeight:I

    .line 597
    const/16 v5, 0x8

    const-string v6, "smooth"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getBooleanAttribute([Ljava/lang/String;ILjava/lang/String;)Z
    invoke-static {v0, v5, v6}, Lorg/andengine/opengl/font/BitmapFont;->access$2([Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mSmooth:Z

    .line 598
    const/16 v5, 0x9

    const-string v6, "aa"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getBooleanAttribute([Ljava/lang/String;ILjava/lang/String;)Z
    invoke-static {v0, v5, v6}, Lorg/andengine/opengl/font/BitmapFont;->access$2([Ljava/lang/String;ILjava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mAntiAliased:Z

    .line 600
    const/16 v5, 0xa

    const-string v6, "padding"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getAttribute([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v5, v6}, Lorg/andengine/opengl/font/BitmapFont;->access$3([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 601
    .local v1, padding:Ljava/lang/String;
    sget-object v5, Lorg/andengine/util/TextUtils;->SPLITPATTERN_COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v1, v11}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, paddings:[Ljava/lang/String;
    aget-object v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mPaddingLeft:I

    .line 603
    aget-object v5, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mPaddingTop:I

    .line 604
    aget-object v5, v2, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mPaddingRight:I

    .line 605
    aget-object v5, v2, v10

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mPaddingBottom:I

    .line 607
    const/16 v5, 0xb

    const-string v6, "spacing"

    #calls: Lorg/andengine/opengl/font/BitmapFont;->getAttribute([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v0, v5, v6}, Lorg/andengine/opengl/font/BitmapFont;->access$3([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, spacing:Ljava/lang/String;
    sget-object v5, Lorg/andengine/util/TextUtils;->SPLITPATTERN_COMMA:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v4

    .line 609
    .local v4, spacings:[Ljava/lang/String;
    aget-object v5, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mSpacingX:I

    .line 610
    aget-object v5, v4, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mSpacingY:I

    .line 611
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mFace:Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 666
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mPaddingBottom:I

    return v0
.end method

.method public getPaddingLeft()I
    .locals 1

    .prologue
    .line 654
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mPaddingLeft:I

    return v0
.end method

.method public getPaddingRight()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mPaddingRight:I

    return v0
.end method

.method public getPaddingTop()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mPaddingTop:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 622
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mSize:I

    return v0
.end method

.method public getSpacingX()I
    .locals 1

    .prologue
    .line 670
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mSpacingX:I

    return v0
.end method

.method public getSpacingY()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mSpacingY:I

    return v0
.end method

.method public getStretchHeight()I
    .locals 1

    .prologue
    .line 642
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mStretchHeight:I

    return v0
.end method

.method public getUnicode()I
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mUnicode:I

    return v0
.end method

.method public isAntiAliased()Z
    .locals 1

    .prologue
    .line 650
    iget-boolean v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mAntiAliased:Z

    return v0
.end method

.method public isBold()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mBold:Z

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .prologue
    .line 630
    iget-boolean v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mItalic:Z

    return v0
.end method

.method public isSmooth()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lorg/andengine/opengl/font/BitmapFont$BitmapFontInfo;->mSmooth:Z

    return v0
.end method
