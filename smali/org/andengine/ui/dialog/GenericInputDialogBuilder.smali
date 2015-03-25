.class public abstract Lorg/andengine/ui/dialog/GenericInputDialogBuilder;
.super Ljava/lang/Object;
.source "GenericInputDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mDefaultText:Ljava/lang/String;

.field private final mErrorResID:I

.field protected final mIconResID:I

.field protected final mMessageResID:I

.field protected final mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field protected final mSuccessCallback:Lorg/andengine/util/call/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/call/Callback",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final mTitleResID:I


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
            "<TT;>;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, this:Lorg/andengine/ui/dialog/GenericInputDialogBuilder;,"Lorg/andengine/ui/dialog/GenericInputDialogBuilder<TT;>;"
    .local p7, pSuccessCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mContext:Landroid/content/Context;

    .line 50
    iput p2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mTitleResID:I

    .line 51
    iput p3, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mMessageResID:I

    .line 52
    iput p4, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mErrorResID:I

    .line 53
    iput p5, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mIconResID:I

    .line 54
    iput-object p6, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mDefaultText:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mSuccessCallback:Lorg/andengine/util/call/Callback;

    .line 56
    iput-object p8, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIIILorg/andengine/util/call/Callback;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 9
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
            "<TT;>;",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, this:Lorg/andengine/ui/dialog/GenericInputDialogBuilder;,"Lorg/andengine/ui/dialog/GenericInputDialogBuilder<TT;>;"
    .local p6, pSuccessCallback:Lorg/andengine/util/call/Callback;,"Lorg/andengine/util/call/Callback<TT;>;"
    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;-><init>(Landroid/content/Context;IIIILjava/lang/String;Lorg/andengine/util/call/Callback;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 46
    return-void
.end method

.method static synthetic access$0(Lorg/andengine/ui/dialog/GenericInputDialogBuilder;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mErrorResID:I

    return v0
.end method


# virtual methods
.method public create()Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 74
    .local p0, this:Lorg/andengine/ui/dialog/GenericInputDialogBuilder;,"Lorg/andengine/ui/dialog/GenericInputDialogBuilder<TT;>;"
    new-instance v1, Landroid/widget/EditText;

    iget-object v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 75
    .local v1, etInput:Landroid/widget/EditText;
    iget-object v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mDefaultText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, ab:Landroid/app/AlertDialog$Builder;
    iget v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mTitleResID:I

    if-eqz v2, :cond_0

    .line 79
    iget v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mTitleResID:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 81
    :cond_0
    iget v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mMessageResID:I

    if-eqz v2, :cond_1

    .line 82
    iget v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mMessageResID:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 84
    :cond_1
    iget v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mIconResID:I

    if-eqz v2, :cond_2

    .line 85
    iget v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mIconResID:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 88
    :cond_2
    invoke-virtual {p0, v0, v1}, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->setView(Landroid/app/AlertDialog$Builder;Landroid/widget/EditText;)V

    .line 89
    iget-object v2, p0, Lorg/andengine/ui/dialog/GenericInputDialogBuilder;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 90
    const v3, 0x104000a

    new-instance v4, Lorg/andengine/ui/dialog/GenericInputDialogBuilder$1;

    invoke-direct {v4, p0, v1}, Lorg/andengine/ui/dialog/GenericInputDialogBuilder$1;-><init>(Lorg/andengine/ui/dialog/GenericInputDialogBuilder;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 105
    const/high16 v3, 0x104

    new-instance v4, Lorg/andengine/ui/dialog/GenericInputDialogBuilder$2;

    invoke-direct {v4, p0}, Lorg/andengine/ui/dialog/GenericInputDialogBuilder$2;-><init>(Lorg/andengine/ui/dialog/GenericInputDialogBuilder;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method protected abstract generateResult(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method protected setView(Landroid/app/AlertDialog$Builder;Landroid/widget/EditText;)V
    .locals 0
    .parameter "pBuilder"
    .parameter "pInputEditText"

    .prologue
    .line 117
    .local p0, this:Lorg/andengine/ui/dialog/GenericInputDialogBuilder;,"Lorg/andengine/ui/dialog/GenericInputDialogBuilder<TT;>;"
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 118
    return-void
.end method
