.class enum Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher$4;
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
    .line 282
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;-><init>(Ljava/lang/String;ILorg/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher;)V

    .line 1
    return-void
.end method


# virtual methods
.method public matches(IIIIII)Z
    .locals 1
    .parameter "pRedSize"
    .parameter "pGreenSize"
    .parameter "pBlueSize"
    .parameter "pAlphaSize"
    .parameter "pDepthSize"
    .parameter "pStencilSize"

    .prologue
    .line 285
    const/4 v0, 0x1

    return v0
.end method
