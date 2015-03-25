.class final Lorg/andengine/input/touch/TouchEvent$TouchEventPool;
.super Lorg/andengine/util/adt/pool/GenericPool;
.source "TouchEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/input/touch/TouchEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TouchEventPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/util/adt/pool/GenericPool",
        "<",
        "Lorg/andengine/input/touch/TouchEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/andengine/util/adt/pool/GenericPool;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/andengine/input/touch/TouchEvent$TouchEventPool;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/andengine/input/touch/TouchEvent$TouchEventPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onAllocatePoolItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lorg/andengine/input/touch/TouchEvent$TouchEventPool;->onAllocatePoolItem()Lorg/andengine/input/touch/TouchEvent;

    move-result-object v0

    return-object v0
.end method

.method protected onAllocatePoolItem()Lorg/andengine/input/touch/TouchEvent;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lorg/andengine/input/touch/TouchEvent;

    invoke-direct {v0}, Lorg/andengine/input/touch/TouchEvent;-><init>()V

    return-object v0
.end method
