.class enum Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher$1;
.super Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;
.source "ConfigChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;-><init>(Ljava/lang/String;ILorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)V

    .line 1
    return-void
.end method


# virtual methods
.method public matches(IIIIII)Z
    .locals 2
    .parameter "pRedSize"
    .parameter "pGreenSize"
    .parameter "pBlueSize"
    .parameter "pAlphaSize"
    .parameter "pDepthSize"
    .parameter "pStencilSize"

    .prologue
    const/4 v1, 0x5

    .line 252
    if-nez p5, :cond_0

    if-nez p6, :cond_0

    .line 253
    if-ne p1, v1, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    if-ne p3, v1, :cond_0

    if-nez p4, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 257
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
