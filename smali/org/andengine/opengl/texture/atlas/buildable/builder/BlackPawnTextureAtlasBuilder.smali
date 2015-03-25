.class public Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;
.super Ljava/lang/Object;
.source "BlackPawnTextureAtlasBuilder.java"

# interfaces
.implements Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;,
        Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;",
        "A::",
        "Lorg/andengine/opengl/texture/atlas/ITextureAtlas",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder",
        "<TT;TA;>;"
    }
.end annotation


# static fields
.field private static final TEXTURESOURCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mTextureAtlasBorderSpacing:I

.field private final mTextureAtlasSourcePadding:I

.field private final mTextureAtlasSourceSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$1;

    invoke-direct {v0}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$1;-><init>()V

    sput-object v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->TEXTURESOURCE_COMPARATOR:Ljava/util/Comparator;

    .line 35
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .parameter "pTextureAtlasBorderSpacing"
    .parameter "pTextureAtlasSourceSpacing"
    .parameter "pTextureAtlasSourcePadding"

    .prologue
    .line 54
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder<TT;TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasBorderSpacing:I

    .line 56
    iput p2, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasSourceSpacing:I

    .line 57
    iput p3, p0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasSourcePadding:I

    .line 58
    return-void
.end method


# virtual methods
.method public build(Lorg/andengine/opengl/texture/atlas/ITextureAtlas;Ljava/util/ArrayList;)V
    .locals 16
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback",
            "<TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;
        }
    .end annotation

    .prologue
    .line 70
    .local p0, this:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder<TT;TA;>;"
    .local p1, pTextureAtlas:Lorg/andengine/opengl/texture/atlas/ITextureAtlas;,"TA;"
    .local p2, pTextureAtlasSourcesWithLocationCallback:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<TT;>;>;"
    sget-object v5, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->TEXTURESOURCE_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p2

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 72
    const/4 v9, 0x0

    .line 73
    .local v9, rootX:I
    const/4 v10, 0x0

    .line 74
    .local v10, rootY:I
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasBorderSpacing:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v3, v5, v6

    .line 75
    .local v3, rootWidth:I
    invoke-interface/range {p1 .. p1}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasBorderSpacing:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 76
    .local v4, rootHeight:I
    new-instance v1, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    new-instance v5, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    const/4 v6, 0x0

    const/4 v15, 0x0

    invoke-direct {v5, v6, v15, v3, v4}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;-><init>(IIII)V

    invoke-direct {v1, v5}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;-><init>(Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;)V

    .line 78
    .local v1, root:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 80
    .local v13, textureSourceCount:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-lt v7, v13, :cond_0

    .line 100
    return-void

    .line 81
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;

    .line 82
    .local v14, textureSourceWithLocationCallback:Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;,"Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback<TT;>;"
    invoke-virtual {v14}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getTextureAtlasSource()Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;

    move-result-object v2

    .line 84
    .local v2, textureAtlasSource:Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;,"TT;"
    move-object/from16 v0, p0

    iget v5, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasSourceSpacing:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasSourcePadding:I

    invoke-virtual/range {v1 .. v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->insert(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;IIII)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;

    move-result-object v8

    .line 86
    .local v8, inserted:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;,"Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;"
    if-nez v8, :cond_1

    .line 87
    new-instance v5, Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v15, "Could not build: \'"

    invoke-direct {v6, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\' into: \'"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, "\'."

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/andengine/opengl/texture/atlas/buildable/builder/ITextureAtlasBuilder$TextureAtlasBuilderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_1
    #getter for: Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;
    invoke-static {v8}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->access$0(Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    move-result-object v5

    #getter for: Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->mLeft:I
    invoke-static {v5}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->access$0(Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasBorderSpacing:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasSourcePadding:I

    add-int v11, v5, v6

    .line 91
    .local v11, textureAtlasSourceLeft:I
    #getter for: Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->mRect:Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;
    invoke-static {v8}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;->access$0(Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Node;)Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;

    move-result-object v5

    #getter for: Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->mTop:I
    invoke-static {v5}, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;->access$1(Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder$Rect;)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasBorderSpacing:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasSourcePadding:I

    add-int v12, v5, v6

    .line 92
    .local v12, textureAtlasSourceTop:I
    move-object/from16 v0, p0

    iget v5, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasSourcePadding:I

    if-nez v5, :cond_2

    .line 93
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v11, v12}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;II)V

    .line 98
    :goto_1
    invoke-virtual {v14}, Lorg/andengine/opengl/texture/atlas/buildable/BuildableTextureAtlas$TextureAtlasSourceWithWithLocationCallback;->getCallback()Lorg/andengine/util/call/Callback;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    .line 80
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 95
    :cond_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/andengine/opengl/texture/atlas/buildable/builder/BlackPawnTextureAtlasBuilder;->mTextureAtlasSourcePadding:I

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v11, v12, v5}, Lorg/andengine/opengl/texture/atlas/ITextureAtlas;->addTextureAtlasSource(Lorg/andengine/opengl/texture/atlas/source/ITextureAtlasSource;III)V

    goto :goto_1
.end method
