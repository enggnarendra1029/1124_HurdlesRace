.class Landroid/support/v4/view/ViewGroupCompatApi21;
.super Ljava/lang/Object;
.source "ViewGroupCompatApi21.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .locals 1
    .parameter "group"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v0

    return v0
.end method

.method public static setTransitionGroup(Landroid/view/ViewGroup;Z)V
    .locals 0
    .parameter "group"
    .parameter "isTransitionGroup"

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTransitionGroup(Z)V

    .line 25
    return-void
.end method
