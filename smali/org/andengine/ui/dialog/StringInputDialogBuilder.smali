.class public Lorg/andengine/ui/dialog/StringInputDialogBuilder;
.super Lorg/andengine/ui/dialog/GenericInputDialogBuilder;
.source "StringInputDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/andengine/ui/dialog/GenericInputDialogBuilder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIILjava/lang/String;Lorg/andengine/util/call/Callback;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "pContext"
    .parameter "pTitleResID"
    .parameter "pMessageResID"
    .parameter "pErrorResID"
    .parameter "pIconResID"
    .parameter "pDefaultText"
    .parameter
    .parameter "pOnCancelListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Ljava/lang/String;",
            "Lorg/andengine/util/call/Callback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p7, pSuccessCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p8}, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;-><init>(Landroid/content/Context;IIIILjava/lang/String;Lorg/andengine/util/call/Callback;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIILorg/andengine/util/call/Callback;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter "pContext"
    .parameter "pTitleResID"
    .parameter "pMessageResID"
    .parameter "pErrorResID"
    .parameter "pIconResID"
    .parameter
    .parameter "pOnCancelListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Lorg/andengine/util/call/Callback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    .local p6, pSuccessCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p7}, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;-><init>(Landroid/content/Context;IIIILorg/andengine/util/call/Callback;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected bridge synthetic generateResult(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lorg/andengine/ui/dialog/StringInputDialogBuilder;->generateResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected generateResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "pInput"

    .prologue
    .line 46
    return-object p1
.end method
