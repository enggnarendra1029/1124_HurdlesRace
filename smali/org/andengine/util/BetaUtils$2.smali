.class Lorg/andengine/util/BetaUtils$2;
.super Ljava/lang/Object;
.source "BetaUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/BetaUtils;->finishWhenExpired(Landroid/app/Activity;Ljava/util/GregorianCalendar;IILandroid/content/Intent;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$pActivity:Landroid/app/Activity;

.field private final synthetic val$pCancelIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/BetaUtils$2;->val$pCancelIntent:Landroid/content/Intent;

    iput-object p2, p0, Lorg/andengine/util/BetaUtils$2;->val$pActivity:Landroid/app/Activity;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "pDialog"
    .parameter "pWhich"

    .prologue
    .line 82
    iget-object v0, p0, Lorg/andengine/util/BetaUtils$2;->val$pCancelIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/andengine/util/BetaUtils$2;->val$pActivity:Landroid/app/Activity;

    iget-object v1, p0, Lorg/andengine/util/BetaUtils$2;->val$pCancelIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lorg/andengine/util/BetaUtils$2;->val$pActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 86
    return-void
.end method
