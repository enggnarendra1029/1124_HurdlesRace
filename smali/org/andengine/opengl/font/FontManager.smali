.class public Lorg/andengine/opengl/font/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# instance fields
.field private final mFontsManaged:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/opengl/font/Font;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    .line 15
    return-void
.end method


# virtual methods
.method public declared-synchronized loadFont(Lorg/andengine/opengl/font/Font;)V
    .locals 2
    .parameter "pFont"

    .prologue
    .line 56
    monitor-enter p0

    if-nez p1, :cond_0

    .line 57
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pFont must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 59
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    monitor-exit p0

    return-void
.end method

.method public varargs declared-synchronized loadFonts([Lorg/andengine/opengl/font/Font;)V
    .locals 2
    .parameter "pFonts"

    .prologue
    .line 63
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 66
    monitor-exit p0

    return-void

    .line 64
    :cond_0
    :try_start_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/andengine/opengl/font/FontManager;->loadFont(Lorg/andengine/opengl/font/Font;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public declared-synchronized onDestroy()V
    .locals 3

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    .line 48
    .local v1, managedFonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Font;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 52
    iget-object v2, p0, Lorg/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/opengl/font/Font;

    invoke-virtual {v2}, Lorg/andengine/opengl/font/Font;->invalidateLetters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 47
    .end local v0           #i:I
    .end local v1           #managedFonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Font;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onReload()V
    .locals 3

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    .line 93
    .local v1, managedFonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Font;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-gez v0, :cond_0

    .line 96
    monitor-exit p0

    return-void

    .line 94
    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/opengl/font/Font;

    invoke-virtual {v2}, Lorg/andengine/opengl/font/Font;->invalidateLetters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 92
    .end local v0           #i:I
    .end local v1           #managedFonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Font;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unloadFont(Lorg/andengine/opengl/font/Font;)V
    .locals 2
    .parameter "pFont"

    .prologue
    .line 69
    monitor-enter p0

    if-nez p1, :cond_0

    .line 70
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pFont must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    monitor-exit p0

    return-void
.end method

.method public varargs declared-synchronized unloadFonts([Lorg/andengine/opengl/font/Font;)V
    .locals 2
    .parameter "pFonts"

    .prologue
    .line 76
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    .line 79
    monitor-exit p0

    return-void

    .line 77
    :cond_0
    :try_start_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/andengine/opengl/font/FontManager;->unloadFont(Lorg/andengine/opengl/font/Font;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized updateFonts(Lorg/andengine/opengl/util/GLState;)V
    .locals 4
    .parameter "pGLState"

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/andengine/opengl/font/FontManager;->mFontsManaged:Ljava/util/ArrayList;

    .line 83
    .local v1, fonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Font;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 84
    .local v0, fontCount:I
    if-lez v0, :cond_0

    .line 85
    add-int/lit8 v2, v0, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 89
    .end local v2           #i:I
    :cond_0
    monitor-exit p0

    return-void

    .line 86
    .restart local v2       #i:I
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/opengl/font/Font;

    invoke-virtual {v3, p1}, Lorg/andengine/opengl/font/Font;->update(Lorg/andengine/opengl/util/GLState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 82
    .end local v0           #fontCount:I
    .end local v1           #fonts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/opengl/font/Font;>;"
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method
