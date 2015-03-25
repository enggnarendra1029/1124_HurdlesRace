.class public Lorg/andengine/util/debug/DebugTimer;
.super Ljava/lang/Object;
.source "DebugTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/debug/DebugTimer$DebugTime;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final INDENT_SPACES:I = 0x0

.field private static final SPLIT_STRING:Ljava/lang/String; = "  Split: "


# instance fields
.field private final mDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

.field private final mDebugTimes:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/andengine/util/debug/DebugTimer$DebugTime;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "  Split: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/andengine/util/debug/DebugTimer;->INDENT_SPACES:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "pLabel"

    .prologue
    .line 35
    sget-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->DEBUG:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-direct {p0, v0, p1}, Lorg/andengine/util/debug/DebugTimer;-><init>(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;)V
    .locals 1
    .parameter "pDebugLevel"
    .parameter "pLabel"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    .line 39
    iput-object p1, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    .line 40
    invoke-direct {p0, p2}, Lorg/andengine/util/debug/DebugTimer;->init(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lorg/andengine/util/debug/DebugTimer;->INDENT_SPACES:I

    return v0
.end method

.method static synthetic access$1(Lorg/andengine/util/debug/DebugTimer;)Lorg/andengine/util/debug/Debug$DebugLevel;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    return-object v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 4
    .parameter "pLabel"

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 57
    .local v1, now:J
    new-instance v0, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/andengine/util/debug/DebugTimer$DebugTime;-><init>(Lorg/andengine/util/debug/DebugTimer;JLjava/lang/String;)V

    .line 58
    .local v0, debugTime:Lorg/andengine/util/debug/DebugTimer$DebugTime;
    iget-object v3, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method


# virtual methods
.method public begin(Ljava/lang/String;)V
    .locals 4
    .parameter "pLabel"

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 63
    .local v1, now:J
    new-instance v0, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/andengine/util/debug/DebugTimer$DebugTime;-><init>(Lorg/andengine/util/debug/DebugTimer;JLjava/lang/String;)V

    .line 64
    .local v0, debugTime:Lorg/andengine/util/debug/DebugTimer$DebugTime;
    iget-object v3, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    invoke-virtual {v3, v0}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->begin(Lorg/andengine/util/debug/DebugTimer$DebugTime;)V

    .line 65
    iget-object v3, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    .line 102
    .local v0, root:Lorg/andengine/util/debug/DebugTimer$DebugTime;
    iget-object v1, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->clear()V

    .line 103
    #getter for: Lorg/andengine/util/debug/DebugTimer$DebugTime;->mLabel:Ljava/lang/String;
    invoke-static {v0}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->access$0(Lorg/andengine/util/debug/DebugTimer$DebugTime;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/andengine/util/debug/DebugTimer;->init(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public dump()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/andengine/util/debug/DebugTimer;->dump(Z)V

    .line 83
    return-void
.end method

.method public dump(Z)V
    .locals 5
    .parameter "pClear"

    .prologue
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 87
    .local v0, now:J
    iget-object v3, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " not all ended!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v3, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->firstElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    .line 92
    .local v2, root:Lorg/andengine/util/debug/DebugTimer$DebugTime;
    invoke-virtual {v2, v0, v1}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->end(J)V

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->dump(I)V

    .line 95
    if-eqz p1, :cond_1

    .line 96
    invoke-virtual {p0}, Lorg/andengine/util/debug/DebugTimer;->clear()V

    .line 98
    :cond_1
    return-void
.end method

.method public end()V
    .locals 5

    .prologue
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 74
    .local v0, now:J
    iget-object v2, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 75
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot end the root of this "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_0
    iget-object v2, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    invoke-virtual {v2, v0, v1}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->end(J)V

    .line 79
    return-void
.end method

.method public split(Ljava/lang/String;)V
    .locals 1
    .parameter "pLabel"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/andengine/util/debug/DebugTimer;->mDebugTimes:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    invoke-virtual {v0, p1}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->split(Ljava/lang/String;)V

    .line 70
    return-void
.end method
