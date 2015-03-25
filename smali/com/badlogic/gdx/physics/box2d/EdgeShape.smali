.class public Lcom/badlogic/gdx/physics/box2d/EdgeShape;
.super Lcom/badlogic/gdx/physics/box2d/Shape;
.source "EdgeShape.java"


# static fields
.field static final vertex:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->newEdgeShape()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    .line 31
    return-void
.end method

.method constructor <init>(J)V
    .locals 0
    .parameter "addr"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/physics/box2d/Shape;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    .line 39
    return-void
.end method

.method private native jniGetVertex1(J[F)V
.end method

.method private native jniGetVertex2(J[F)V
.end method

.method private native jniSet(JFFFF)V
.end method

.method private native newEdgeShape()J
.end method


# virtual methods
.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    return-object v0
.end method

.method public getVertex1(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter "vec"

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniGetVertex1(J[F)V

    .line 60
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 61
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 62
    return-void
.end method

.method public getVertex2(Lcom/badlogic/gdx/math/Vector2;)V
    .locals 3
    .parameter "vec"

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    sget-object v2, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniGetVertex2(J[F)V

    .line 72
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 73
    sget-object v0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->vertex:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 74
    return-void
.end method

.method public set(FFFF)V
    .locals 7
    .parameter "v1X"
    .parameter "v1Y"
    .parameter "v2X"
    .parameter "v2Y"

    .prologue
    .line 48
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->addr:J

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->jniSet(JFFFF)V

    .line 49
    return-void
.end method

.method public set(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 4
    .parameter "v1"
    .parameter "v2"

    .prologue
    .line 43
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v2, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;->set(FFFF)V

    .line 44
    return-void
.end method
