.class public Lcom/badlogic/gdx/physics/box2d/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# static fields
.field public static final COS:I = 0x2

.field public static final POS_X:I = 0x0

.field public static final POS_Y:I = 0x1

.field public static final SIN:I = 0x3


# instance fields
.field private position:Lcom/badlogic/gdx/math/Vector2;

.field public vals:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 1
    .parameter "position"
    .parameter "angle"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    .line 32
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->position:Lcom/badlogic/gdx/math/Vector2;

    .line 42
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/physics/box2d/Transform;->setPosition(Lcom/badlogic/gdx/math/Vector2;)V

    .line 43
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/physics/box2d/Transform;->setRotation(F)V

    .line 44
    return-void
.end method


# virtual methods
.method public getPosition()Lcom/badlogic/gdx/math/Vector2;
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->position:Lcom/badlogic/gdx/math/Vector2;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()F
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public mul(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 49
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v3, v3, v5

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v3, v3, v6

    neg-float v3, v3

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 50
    .local v0, x:F
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v3, v3, v6

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    aget v3, v3, v5

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 52
    .local v1, y:F
    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 53
    iput v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 54
    return-object p1
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v1, 0x0

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v2, v0, v1

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v1, 0x1

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v2, v0, v1

    .line 79
    return-void
.end method

.method public setRotation(F)V
    .locals 4
    .parameter "angle"

    .prologue
    .line 65
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v0, v2

    .local v0, c:F
    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 66
    .local v1, s:F
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x2

    aput v0, v2, v3

    .line 67
    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Transform;->vals:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 68
    return-void
.end method
