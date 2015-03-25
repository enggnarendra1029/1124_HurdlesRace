.class public Lorg/andengine/engine/camera/CameraFactory;
.super Ljava/lang/Object;
.source "CameraFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPixelPerfectCamera(Landroid/content/Context;FF)Lorg/andengine/engine/camera/Camera;
    .locals 6
    .parameter "pContext"
    .parameter "pCenterX"
    .parameter "pCenterY"

    .prologue
    const/high16 v5, 0x3f00

    .line 39
    invoke-static {p0}, Lorg/andengine/engine/camera/CameraFactory;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 41
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v3

    .line 42
    .local v2, width:F
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v3

    .line 44
    .local v1, height:F
    new-instance v3, Lorg/andengine/engine/camera/Camera;

    mul-float v4, v2, v5

    sub-float v4, p1, v4

    mul-float/2addr v5, v1

    sub-float v5, p2, v5

    invoke-direct {v3, v4, v5, v2, v1}, Lorg/andengine/engine/camera/Camera;-><init>(FFFF)V

    return-object v3
.end method

.method private static getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 1
    .parameter "pContext"

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    return-object v0
.end method
