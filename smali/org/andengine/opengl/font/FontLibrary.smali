.class public Lorg/andengine/opengl/font/FontLibrary;
.super Lorg/andengine/util/adt/map/Library;
.source "FontLibrary.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/map/Library",
        "<",
        "Lorg/andengine/opengl/font/Font;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/andengine/util/adt/map/Library;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pInitialCapacity"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/map/Library;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public loadFonts(Lorg/andengine/opengl/font/FontManager;)V
    .locals 4
    .parameter "pFontManager"

    .prologue
    .line 48
    iget-object v2, p0, Lorg/andengine/opengl/font/FontLibrary;->mItems:Landroid/util/SparseArray;

    .line 49
    .local v2, items:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lorg/andengine/opengl/font/Font;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 55
    return-void

    .line 50
    :cond_0
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/font/Font;

    .line 51
    .local v0, font:Lorg/andengine/opengl/font/Font;
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p1, v0}, Lorg/andengine/opengl/font/FontManager;->loadFont(Lorg/andengine/opengl/font/Font;)V

    .line 49
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
