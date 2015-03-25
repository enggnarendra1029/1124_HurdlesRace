.class public Lorg/andengine/engine/handler/DrawHandlerList;
.super Lorg/andengine/util/adt/list/SmartList;
.source "DrawHandlerList.java"

# interfaces
.implements Lorg/andengine/engine/handler/IDrawHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/list/SmartList",
        "<",
        "Lorg/andengine/engine/handler/IDrawHandler;",
        ">;",
        "Lorg/andengine/engine/handler/IDrawHandler;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1886cc80c04620beL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/andengine/util/adt/list/SmartList;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "pCapacity"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/andengine/util/adt/list/SmartList;-><init>(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 3
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/andengine/engine/handler/DrawHandlerList;->size()I

    move-result v0

    .line 47
    .local v0, handlerCount:I
    add-int/lit8 v1, v0, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    invoke-virtual {p0, v1}, Lorg/andengine/engine/handler/DrawHandlerList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/engine/handler/IDrawHandler;

    invoke-interface {v2, p1, p2}, Lorg/andengine/engine/handler/IDrawHandler;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 47
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
