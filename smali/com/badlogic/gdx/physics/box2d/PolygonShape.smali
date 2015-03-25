.class public Lcom/badlogic/gdx/physics/box2d/PolygonShape;
.super Lcom/badlogic/gdx/physics/box2d/Shape;
.source "PolygonShape.java"


# static fields
.field private static verts:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->verts:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->newPolygonShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    .line 30
    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    .line 34
    return-void
.end method

.method private native jniGetVertex(JI[F)V
.end method

.method private native jniGetVertexCount(J)I
.end method

.method private native jniSet(J[FII)V
.end method

.method private native jniSetAsBox(JFF)V
.end method

.method private native jniSetAsBox(JFFFFF)V
.end method

.method private native newPolygonShape()J
.end method


# virtual methods
.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public getVertex(ILcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter "index"
    .parameter "vertex"

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->verts:[F

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniGetVertex(JI[F)V

    .line 124
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->verts:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 125
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->verts:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 126
    return-void
.end method

.method public getVertexCount()I
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniGetVertexCount(J)I

    move-result v0

    return v0
.end method

.method public set([F)V
    .locals 6
    .parameter "vertices"

    .prologue
    .line 61
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    const/4 v4, 0x0

    array-length v5, p1

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSet(J[FII)V

    .line 62
    return-void
.end method

.method public set([FII)V
    .locals 6
    .parameter "vertices"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 67
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSet(J[FII)V

    .line 68
    return-void
.end method

.method public set([Lcom/badlogic/gdx/math/Vector2;)V
    .locals 8
    .parameter "vertices"

    .prologue
    .line 50
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [F

    .line 51
    .local v3, verts:[F
    const/4 v6, 0x0

    .local v6, i:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_0
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    if-lt v6, v0, :cond_0

    .line 55
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    const/4 v4, 0x0

    array-length v5, v3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSet(J[FII)V

    .line 56
    return-void

    .line 52
    :cond_0
    aget-object v0, p1, v7

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    aput v0, v3, v6

    .line 53
    add-int/lit8 v0, v6, 0x1

    aget-object v1, p1, v7

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    aput v1, v3, v0

    .line 51
    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public setAsBox(FF)V
    .locals 2
    .parameter "hx"
    .parameter "hy"

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSetAsBox(JFF)V

    .line 86
    return-void
.end method

.method public setAsBox(FFLcom/badlogic/gdx/math/Vector2;F)V
    .locals 8
    .parameter "hx"
    .parameter "hy"
    .parameter "center"
    .parameter "angle"

    .prologue
    .line 99
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->addr:J

    iget v5, p3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v6, p3, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;->jniSetAsBox(JFFFFF)V

    .line 100
    return-void
.end method
