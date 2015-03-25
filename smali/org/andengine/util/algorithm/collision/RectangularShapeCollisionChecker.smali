.class public Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;
.super Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;
.source "RectangularShapeCollisionChecker.java"


# static fields
.field public static final RECTANGULARSHAPE_VERTEX_COUNT:I = 0x4

.field private static final VERTICES_COLLISION_TMP_A:[F

.field private static final VERTICES_COLLISION_TMP_B:[F

.field private static final VERTICES_CONTAINS_TMP:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 25
    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    .line 26
    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    .line 27
    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;-><init>()V

    return-void
.end method

.method public static checkCollision(Lorg/andengine/entity/shape/RectangularShape;Lorg/andengine/entity/primitive/Line;)Z
    .locals 4
    .parameter "pRectangularShape"
    .parameter "pLine"

    .prologue
    .line 93
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/andengine/entity/shape/RectangularShape;[F)V

    .line 94
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/andengine/util/algorithm/collision/LineCollisionChecker;->fillVertices(Lorg/andengine/entity/primitive/Line;[F)V

    .line 96
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    const/4 v1, 0x4

    sget-object v2, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkCollision([FI[FI)Z

    move-result v0

    return v0
.end method

.method public static checkCollision(Lorg/andengine/entity/shape/RectangularShape;Lorg/andengine/entity/shape/RectangularShape;)Z
    .locals 3
    .parameter "pRectangularShapeA"
    .parameter "pRectangularShapeB"

    .prologue
    const/4 v2, 0x4

    .line 86
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/andengine/entity/shape/RectangularShape;[F)V

    .line 87
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/andengine/entity/shape/RectangularShape;[F)V

    .line 89
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    sget-object v1, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v0, v2, v1, v2}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkCollision([FI[FI)Z

    move-result v0

    return v0
.end method

.method public static checkContains(FFFFLorg/andengine/util/adt/transformation/Transformation;FF)Z
    .locals 6
    .parameter "pLocalX"
    .parameter "pLocalY"
    .parameter "pLocalWidth"
    .parameter "pLocalHeight"
    .parameter "pLocalToSceneTransformation"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 50
    sget-object v5, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(FFFFLorg/andengine/util/adt/transformation/Transformation;[F)V

    .line 51
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v1, 0x4

    invoke-static {v0, v1, p5, p6}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v0

    return v0
.end method

.method public static checkContains(Lorg/andengine/entity/Entity;FFFF)Z
    .locals 6
    .parameter "pEntity"
    .parameter "pLocalWidth"
    .parameter "pLocalHeight"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getX()F

    move-result v0

    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getY()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getLocalToSceneTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v4

    sget-object v5, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    move v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(FFFFLorg/andengine/util/adt/transformation/Transformation;[F)V

    .line 56
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v1, 0x4

    invoke-static {v0, v1, p3, p4}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v0

    return v0
.end method

.method public static checkContains(Lorg/andengine/entity/shape/RectangularShape;FF)Z
    .locals 2
    .parameter "pRectangularShape"
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 60
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    invoke-static {p0, v0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/andengine/entity/shape/RectangularShape;[F)V

    .line 61
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_CONTAINS_TMP:[F

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkContains([FIFF)Z

    move-result v0

    return v0
.end method

.method public static fillVertices(FFFFLorg/andengine/util/adt/transformation/Transformation;[F)V
    .locals 5
    .parameter "pLocalX"
    .parameter "pLocalY"
    .parameter "pLocalWidth"
    .parameter "pLocalHeight"
    .parameter "pLocalToSceneTransformation"
    .parameter "pVertices"

    .prologue
    .line 104
    move v1, p0

    .line 105
    .local v1, localXMin:F
    add-float v0, p0, p2

    .line 106
    .local v0, localXMax:F
    move v3, p1

    .line 107
    .local v3, localYMin:F
    add-float v2, p1, p3

    .line 109
    .local v2, localYMax:F
    const/4 v4, 0x0

    aput v1, p5, v4

    .line 110
    const/4 v4, 0x1

    aput v3, p5, v4

    .line 112
    const/4 v4, 0x2

    aput v0, p5, v4

    .line 113
    const/4 v4, 0x3

    aput v3, p5, v4

    .line 115
    const/4 v4, 0x4

    aput v0, p5, v4

    .line 116
    const/4 v4, 0x5

    aput v2, p5, v4

    .line 118
    const/4 v4, 0x6

    aput v1, p5, v4

    .line 119
    const/4 v4, 0x7

    aput v2, p5, v4

    .line 121
    invoke-virtual {p4, p5}, Lorg/andengine/util/adt/transformation/Transformation;->transform([F)V

    .line 122
    return-void
.end method

.method private static fillVertices(Lorg/andengine/engine/camera/Camera;[F)V
    .locals 3
    .parameter "pCamera"
    .parameter "pVertices"

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMin()F

    move-result v1

    aput v1, p1, v0

    .line 126
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMin()F

    move-result v1

    aput v1, p1, v0

    .line 128
    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMax()F

    move-result v1

    aput v1, p1, v0

    .line 129
    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMin()F

    move-result v1

    aput v1, p1, v0

    .line 131
    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMax()F

    move-result v1

    aput v1, p1, v0

    .line 132
    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMax()F

    move-result v1

    aput v1, p1, v0

    .line 134
    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getXMin()F

    move-result v1

    aput v1, p1, v0

    .line 135
    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getYMax()F

    move-result v1

    aput v1, p1, v0

    .line 137
    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getRotation()F

    move-result v0

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterX()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/engine/camera/Camera;->getCenterY()F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/andengine/util/math/MathUtils;->rotateAroundCenter([FFFF)[F

    .line 138
    return-void
.end method

.method public static fillVertices(Lorg/andengine/entity/shape/RectangularShape;[F)V
    .locals 6
    .parameter "pRectangularShape"
    .parameter "pVertices"

    .prologue
    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->getWidth()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->getHeight()F

    move-result v3

    invoke-virtual {p0}, Lorg/andengine/entity/shape/RectangularShape;->getLocalToSceneTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v4

    move v1, v0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(FFFFLorg/andengine/util/adt/transformation/Transformation;[F)V

    .line 101
    return-void
.end method

.method public static isVisible(Lorg/andengine/engine/camera/Camera;FFFFLorg/andengine/util/adt/transformation/Transformation;)Z
    .locals 7
    .parameter "pCamera"
    .parameter "pX"
    .parameter "pY"
    .parameter "pWidth"
    .parameter "pHeight"
    .parameter "pLocalToSceneTransformation"

    .prologue
    const/4 v6, 0x4

    .line 72
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/andengine/engine/camera/Camera;[F)V

    .line 73
    sget-object v5, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(FFFFLorg/andengine/util/adt/transformation/Transformation;[F)V

    .line 75
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    sget-object v1, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v0, v6, v1, v6}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkCollision([FI[FI)Z

    move-result v0

    return v0
.end method

.method public static isVisible(Lorg/andengine/engine/camera/Camera;Lorg/andengine/entity/primitive/Line;)Z
    .locals 4
    .parameter "pCamera"
    .parameter "pLine"

    .prologue
    .line 79
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/andengine/engine/camera/Camera;[F)V

    .line 80
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/andengine/util/algorithm/collision/LineCollisionChecker;->fillVertices(Lorg/andengine/entity/primitive/Line;[F)V

    .line 82
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    const/4 v1, 0x4

    sget-object v2, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkCollision([FI[FI)Z

    move-result v0

    return v0
.end method

.method public static isVisible(Lorg/andengine/engine/camera/Camera;Lorg/andengine/entity/shape/RectangularShape;)Z
    .locals 3
    .parameter "pCamera"
    .parameter "pRectangularShape"

    .prologue
    const/4 v2, 0x4

    .line 65
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    invoke-static {p0, v0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/andengine/engine/camera/Camera;[F)V

    .line 66
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {p1, v0}, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->fillVertices(Lorg/andengine/entity/shape/RectangularShape;[F)V

    .line 68
    sget-object v0, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_A:[F

    sget-object v1, Lorg/andengine/util/algorithm/collision/RectangularShapeCollisionChecker;->VERTICES_COLLISION_TMP_B:[F

    invoke-static {v0, v2, v1, v2}, Lorg/andengine/util/algorithm/collision/ShapeCollisionChecker;->checkCollision([FI[FI)Z

    move-result v0

    return v0
.end method
