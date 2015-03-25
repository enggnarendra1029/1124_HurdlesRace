.class public Lorg/andengine/util/DialogUtils;
.super Ljava/lang/Object;
.source "DialogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static keepScreenOn(Landroid/app/Dialog;)V
    .locals 2
    .parameter "pDialog"

    .prologue
    .line 39
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 40
    return-void
.end method
