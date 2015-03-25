.class public Lorg/andengine/engine/Engine$EngineDestroyedException;
.super Ljava/lang/InterruptedException;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EngineDestroyedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x411ab7b7c2727710L


# instance fields
.field final synthetic this$0:Lorg/andengine/engine/Engine;


# direct methods
.method public constructor <init>(Lorg/andengine/engine/Engine;)V
    .locals 0
    .parameter

    .prologue
    .line 843
    iput-object p1, p0, Lorg/andengine/engine/Engine$EngineDestroyedException;->this$0:Lorg/andengine/engine/Engine;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    return-void
.end method
