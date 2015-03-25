.class Lorg/andengine/util/progress/ProgressMonitor$1;
.super Ljava/lang/Object;
.source "ProgressMonitor.java"

# interfaces
.implements Lorg/andengine/util/progress/IProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/progress/ProgressMonitor;->registerChildProgressMonitor(Lorg/andengine/util/progress/ProgressMonitor;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/util/progress/ProgressMonitor;

.field private final synthetic val$pChildProgressMonitorRangeFrom:I

.field private final synthetic val$pChildProgressMonitorRangeTo:I


# direct methods
.method constructor <init>(Lorg/andengine/util/progress/ProgressMonitor;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/progress/ProgressMonitor$1;->this$0:Lorg/andengine/util/progress/ProgressMonitor;

    iput p2, p0, Lorg/andengine/util/progress/ProgressMonitor$1;->val$pChildProgressMonitorRangeFrom:I

    iput p3, p0, Lorg/andengine/util/progress/ProgressMonitor$1;->val$pChildProgressMonitorRangeTo:I

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 5
    .parameter "pProgress"

    .prologue
    .line 63
    iget v1, p0, Lorg/andengine/util/progress/ProgressMonitor$1;->val$pChildProgressMonitorRangeFrom:I

    iget v2, p0, Lorg/andengine/util/progress/ProgressMonitor$1;->val$pChildProgressMonitorRangeTo:I

    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    invoke-static {v1, v2, v3}, Lorg/andengine/util/math/MathUtils;->mix(IIF)I

    move-result v0

    .line 64
    .local v0, progress:I
    iget-object v1, p0, Lorg/andengine/util/progress/ProgressMonitor$1;->this$0:Lorg/andengine/util/progress/ProgressMonitor;

    invoke-virtual {v1, v0}, Lorg/andengine/util/progress/ProgressMonitor;->onProgressChanged(I)V

    .line 65
    return-void
.end method
