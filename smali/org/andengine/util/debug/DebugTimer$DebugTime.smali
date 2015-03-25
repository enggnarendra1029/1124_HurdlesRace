.class public Lorg/andengine/util/debug/DebugTimer$DebugTime;
.super Ljava/lang/Object;
.source "DebugTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/debug/DebugTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DebugTime"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/util/debug/DebugTimer$DebugTime;",
            ">;"
        }
    .end annotation
.end field

.field private mEndTime:J

.field private final mLabel:Ljava/lang/String;

.field private mLastSplit:Lorg/andengine/util/debug/DebugTimer$DebugTime;

.field private final mSplit:Z

.field private final mStartTime:J

.field final synthetic this$0:Lorg/andengine/util/debug/DebugTimer;


# direct methods
.method public constructor <init>(Lorg/andengine/util/debug/DebugTimer;JLjava/lang/String;)V
    .locals 6
    .parameter
    .parameter "pStartTime"
    .parameter "pLabel"

    .prologue
    .line 132
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/util/debug/DebugTimer$DebugTime;-><init>(Lorg/andengine/util/debug/DebugTimer;JLjava/lang/String;Z)V

    .line 133
    return-void
.end method

.method protected constructor <init>(Lorg/andengine/util/debug/DebugTimer;JLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "pStartTime"
    .parameter "pLabel"
    .parameter "pSplit"

    .prologue
    .line 135
    iput-object p1, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->this$0:Lorg/andengine/util/debug/DebugTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-wide p2, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mStartTime:J

    .line 137
    iput-object p4, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mLabel:Ljava/lang/String;

    .line 138
    iput-boolean p5, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mSplit:Z

    .line 139
    return-void
.end method

.method static synthetic access$0(Lorg/andengine/util/debug/DebugTimer$DebugTime;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method private ensureChildrenAllocated()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mChildren:Ljava/util/ArrayList;

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public begin(Lorg/andengine/util/debug/DebugTimer$DebugTime;)V
    .locals 1
    .parameter "pDebugTime"

    .prologue
    .line 154
    invoke-direct {p0}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->ensureChildrenAllocated()V

    .line 155
    iget-object v0, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public dump(I)V
    .locals 1
    .parameter "pIndent"

    .prologue
    .line 180
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->dump(ILjava/lang/String;)V

    .line 181
    return-void
.end method

.method public dump(ILjava/lang/String;)V
    .locals 10
    .parameter "pIndent"
    .parameter "pPostfix"

    .prologue
    const/16 v6, 0x20

    .line 184
    iget-boolean v4, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mSplit:Z

    if-eqz v4, :cond_0

    .line 185
    add-int/lit8 v4, p1, -0x1

    invoke-static {}, Lorg/andengine/util/debug/DebugTimer;->access$0()I

    move-result v5

    mul-int/2addr v4, v5

    new-array v3, v4, [C

    .line 186
    .local v3, indent:[C
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 187
    iget-object v4, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->this$0:Lorg/andengine/util/debug/DebugTimer;

    #getter for: Lorg/andengine/util/debug/DebugTimer;->mDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;
    invoke-static {v4}, Lorg/andengine/util/debug/DebugTimer;->access$1(Lorg/andengine/util/debug/DebugTimer;)Lorg/andengine/util/debug/Debug$DebugLevel;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "  Split: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mEndTime:J

    iget-wide v8, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/andengine/util/debug/Debug;->log(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 189
    .end local v3           #indent:[C
    :cond_0
    invoke-static {}, Lorg/andengine/util/debug/DebugTimer;->access$0()I

    move-result v4

    mul-int/2addr v4, p1

    new-array v3, v4, [C

    .line 190
    .restart local v3       #indent:[C
    invoke-static {v3, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 191
    iget-object v4, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mChildren:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 192
    iget-object v4, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->this$0:Lorg/andengine/util/debug/DebugTimer;

    #getter for: Lorg/andengine/util/debug/DebugTimer;->mDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;
    invoke-static {v4}, Lorg/andengine/util/debug/DebugTimer;->access$1(Lorg/andengine/util/debug/DebugTimer;)Lorg/andengine/util/debug/Debug$DebugLevel;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' @( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mEndTime:J

    iget-wide v8, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/andengine/util/debug/Debug;->log(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v1, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mChildren:Ljava/util/ArrayList;

    .line 195
    .local v1, children:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/andengine/util/debug/DebugTimer$DebugTime;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 197
    .local v0, childCount:I
    iget-object v4, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->this$0:Lorg/andengine/util/debug/DebugTimer;

    #getter for: Lorg/andengine/util/debug/DebugTimer;->mDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;
    invoke-static {v4}, Lorg/andengine/util/debug/DebugTimer;->access$1(Lorg/andengine/util/debug/DebugTimer;)Lorg/andengine/util/debug/Debug$DebugLevel;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mLabel:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/andengine/util/debug/Debug;->log(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;)V

    .line 198
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-lt v2, v4, :cond_2

    .line 201
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->dump(I)V

    .line 202
    iget-object v4, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->this$0:Lorg/andengine/util/debug/DebugTimer;

    #getter for: Lorg/andengine/util/debug/DebugTimer;->mDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;
    invoke-static {v4}, Lorg/andengine/util/debug/DebugTimer;->access$1(Lorg/andengine/util/debug/DebugTimer;)Lorg/andengine/util/debug/Debug$DebugLevel;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "}@( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mEndTime:J

    iget-wide v8, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mStartTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/andengine/util/debug/Debug;->log(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    add-int/lit8 v5, p1, 0x1

    const-string v6, ","

    invoke-virtual {v4, v5, v6}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->dump(ILjava/lang/String;)V

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public end(J)V
    .locals 0
    .parameter "pEndTime"

    .prologue
    .line 176
    iput-wide p1, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mEndTime:J

    .line 177
    return-void
.end method

.method public split(Ljava/lang/String;)V
    .locals 8
    .parameter "pLabel"

    .prologue
    const/4 v5, 0x1

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 162
    .local v6, now:J
    iget-object v1, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mLastSplit:Lorg/andengine/util/debug/DebugTimer$DebugTime;

    if-nez v1, :cond_0

    .line 163
    new-instance v0, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    iget-object v1, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->this$0:Lorg/andengine/util/debug/DebugTimer;

    iget-wide v2, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mStartTime:J

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/andengine/util/debug/DebugTimer$DebugTime;-><init>(Lorg/andengine/util/debug/DebugTimer;JLjava/lang/String;Z)V

    .line 167
    .local v0, split:Lorg/andengine/util/debug/DebugTimer$DebugTime;
    :goto_0
    invoke-virtual {v0, v6, v7}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->end(J)V

    .line 169
    invoke-direct {p0}, Lorg/andengine/util/debug/DebugTimer$DebugTime;->ensureChildrenAllocated()V

    .line 170
    iget-object v1, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iput-object v0, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mLastSplit:Lorg/andengine/util/debug/DebugTimer$DebugTime;

    .line 173
    return-void

    .line 165
    .end local v0           #split:Lorg/andengine/util/debug/DebugTimer$DebugTime;
    :cond_0
    new-instance v0, Lorg/andengine/util/debug/DebugTimer$DebugTime;

    iget-object v1, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->this$0:Lorg/andengine/util/debug/DebugTimer;

    iget-object v2, p0, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mLastSplit:Lorg/andengine/util/debug/DebugTimer$DebugTime;

    iget-wide v2, v2, Lorg/andengine/util/debug/DebugTimer$DebugTime;->mEndTime:J

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/andengine/util/debug/DebugTimer$DebugTime;-><init>(Lorg/andengine/util/debug/DebugTimer;JLjava/lang/String;Z)V

    .restart local v0       #split:Lorg/andengine/util/debug/DebugTimer$DebugTime;
    goto :goto_0
.end method
