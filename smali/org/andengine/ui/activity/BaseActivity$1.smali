.class Lorg/andengine/ui/activity/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/ui/activity/BaseActivity;->toastOnUIThread(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/ui/activity/BaseActivity;

.field private final synthetic val$pDuration:I

.field private final synthetic val$pText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lorg/andengine/ui/activity/BaseActivity;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/ui/activity/BaseActivity$1;->this$0:Lorg/andengine/ui/activity/BaseActivity;

    iput-object p2, p0, Lorg/andengine/ui/activity/BaseActivity$1;->val$pText:Ljava/lang/CharSequence;

    iput p3, p0, Lorg/andengine/ui/activity/BaseActivity$1;->val$pDuration:I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lorg/andengine/ui/activity/BaseActivity$1;->this$0:Lorg/andengine/ui/activity/BaseActivity;

    iget-object v1, p0, Lorg/andengine/ui/activity/BaseActivity$1;->val$pText:Ljava/lang/CharSequence;

    iget v2, p0, Lorg/andengine/ui/activity/BaseActivity$1;->val$pDuration:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 58
    return-void
.end method
