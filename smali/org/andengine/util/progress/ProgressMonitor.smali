.class public Lorg/andengine/util/progress/ProgressMonitor;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"

# interfaces
.implements Lorg/andengine/util/progress/IProgressListener;


# instance fields
.field private final mChildProgressMonitorToProgressListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/andengine/util/progress/ProgressMonitor;",
            "Lorg/andengine/util/progress/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProgressListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/util/progress/IProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/progress/ProgressMonitor;->mProgressListeners:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/progress/ProgressMonitor;->mChildProgressMonitorToProgressListenerMap:Ljava/util/HashMap;

    .line 33
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/progress/IProgressListener;)V
    .locals 1
    .parameter "pProgressListener"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/progress/ProgressMonitor;->mProgressListeners:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/progress/ProgressMonitor;->mChildProgressMonitorToProgressListenerMap:Ljava/util/HashMap;

    .line 36
    iget-object v0, p0, Lorg/andengine/util/progress/ProgressMonitor;->mProgressListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method private addProgressListener(Lorg/andengine/util/progress/IProgressListener;)V
    .locals 1
    .parameter "pProgressListener"

    .prologue
    .line 76
    iget-object v0, p0, Lorg/andengine/util/progress/ProgressMonitor;->mProgressListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method

.method private removeProgressListener(Lorg/andengine/util/progress/IProgressListener;)V
    .locals 1
    .parameter "pProgressListener"

    .prologue
    .line 80
    iget-object v0, p0, Lorg/andengine/util/progress/ProgressMonitor;->mProgressListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 3
    .parameter "pProgress"

    .prologue
    .line 49
    iget-object v2, p0, Lorg/andengine/util/progress/ProgressMonitor;->mProgressListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 50
    .local v1, progressListenerCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 53
    return-void

    .line 51
    :cond_0
    iget-object v2, p0, Lorg/andengine/util/progress/ProgressMonitor;->mProgressListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/util/progress/IProgressListener;

    invoke-interface {v2, p1}, Lorg/andengine/util/progress/IProgressListener;->onProgressChanged(I)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public registerChildProgressMonitor(Lorg/andengine/util/progress/ProgressMonitor;II)V
    .locals 2
    .parameter "pChildProgressMonitor"
    .parameter "pChildProgressMonitorRangeFrom"
    .parameter "pChildProgressMonitorRangeTo"

    .prologue
    .line 60
    new-instance v0, Lorg/andengine/util/progress/ProgressMonitor$1;

    invoke-direct {v0, p0, p2, p3}, Lorg/andengine/util/progress/ProgressMonitor$1;-><init>(Lorg/andengine/util/progress/ProgressMonitor;II)V

    .line 67
    .local v0, childProgressMonitorListener:Lorg/andengine/util/progress/IProgressListener;
    invoke-direct {p1, v0}, Lorg/andengine/util/progress/ProgressMonitor;->addProgressListener(Lorg/andengine/util/progress/IProgressListener;)V

    .line 68
    iget-object v1, p0, Lorg/andengine/util/progress/ProgressMonitor;->mChildProgressMonitorToProgressListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public unregisterChildProgressMonitor(Lorg/andengine/util/progress/ProgressMonitor;)V
    .locals 1
    .parameter "pChildProgressMonitor"

    .prologue
    .line 72
    iget-object v0, p0, Lorg/andengine/util/progress/ProgressMonitor;->mChildProgressMonitorToProgressListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/util/progress/IProgressListener;

    invoke-direct {p1, v0}, Lorg/andengine/util/progress/ProgressMonitor;->removeProgressListener(Lorg/andengine/util/progress/IProgressListener;)V

    .line 73
    return-void
.end method
