.class Lorg/andengine/util/ActivityUtils$2$1;
.super Ljava/lang/Object;
.source "ActivityUtils.java"

# interfaces
.implements Lorg/andengine/util/progress/IProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/ActivityUtils$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/andengine/util/ActivityUtils$2;


# direct methods
.method constructor <init>(Lorg/andengine/util/ActivityUtils$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/ActivityUtils$2$1;->this$1:Lorg/andengine/util/ActivityUtils$2;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 4
    .parameter "pProgress"

    .prologue
    .line 193
    iget-object v0, p0, Lorg/andengine/util/ActivityUtils$2$1;->this$1:Lorg/andengine/util/ActivityUtils$2;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/andengine/util/ActivityUtils$2;->onProgressUpdate([Ljava/lang/Integer;)V

    .line 194
    return-void
.end method
