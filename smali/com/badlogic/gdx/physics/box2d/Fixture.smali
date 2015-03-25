.class public Lcom/badlogic/gdx/physics/box2d/Fixture;
.super Ljava/lang/Object;
.source "Fixture.java"


# instance fields
.field protected addr:J

.field private body:Lcom/badlogic/gdx/physics/box2d/Body;

.field private final filter:Lcom/badlogic/gdx/physics/box2d/Filter;

.field protected shape:Lcom/badlogic/gdx/physics/box2d/Shape;

.field private final tmp:[S

.field protected userData:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lcom/badlogic/gdx/physics/box2d/Body;J)V
    .locals 1
    .parameter "body"
    .parameter "addr"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    .line 157
    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Filter;

    invoke-direct {v0}, Lcom/badlogic/gdx/physics/box2d/Filter;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 44
    iput-wide p2, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    .line 45
    return-void
.end method

.method private native jniGetDensity(J)F
.end method

.method private native jniGetFilterData(J[S)V
.end method

.method private native jniGetFriction(J)F
.end method

.method private native jniGetRestitution(J)F
.end method

.method private native jniGetShape(J)J
.end method

.method private native jniGetType(J)I
.end method

.method private native jniIsSensor(J)Z
.end method

.method private native jniRefilter(J)V
.end method

.method private native jniSetDensity(JF)V
.end method

.method private native jniSetFilterData(JSSS)V
.end method

.method private native jniSetFriction(JF)V
.end method

.method private native jniSetRestitution(JF)V
.end method

.method private native jniSetSensor(JZ)V
.end method

.method private native jniTestPoint(JFF)Z
.end method


# virtual methods
.method public getBody()Lcom/badlogic/gdx/physics/box2d/Body;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    return-object v0
.end method

.method public getDensity()F
    .locals 2

    .prologue
    .line 246
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetDensity(J)F

    move-result v0

    return v0
.end method

.method public getFilterData()Lcom/badlogic/gdx/physics/box2d/Filter;
    .locals 3

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    iget-object v2, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetFilterData(J[S)V

    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    const/4 v2, 0x1

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    .line 163
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    iget-object v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->tmp:[S

    const/4 v2, 0x2

    aget-short v1, v1, v2

    iput-short v1, v0, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    .line 164
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->filter:Lcom/badlogic/gdx/physics/box2d/Filter;

    return-object v0
.end method

.method public getFriction()F
    .locals 2

    .prologue
    .line 256
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetFriction(J)F

    move-result v0

    return v0
.end method

.method public getRestitution()F
    .locals 2

    .prologue
    .line 276
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetRestitution(J)F

    move-result v0

    return v0
.end method

.method public getShape()Lcom/badlogic/gdx/physics/box2d/Shape;
    .locals 5

    .prologue
    .line 88
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    if-nez v3, :cond_1

    .line 89
    iget-wide v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v3, v4}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetShape(J)J

    move-result-wide v0

    .line 90
    .local v0, shapeAddr:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Null shape address!"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_0
    invoke-static {v0, v1}, Lcom/badlogic/gdx/physics/box2d/Shape;->jniGetType(J)I

    move-result v2

    .line 93
    .local v2, type:I
    packed-switch v2, :pswitch_data_0

    .line 107
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Unknown shape type!"

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    :pswitch_0
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/CircleShape;

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/physics/box2d/CircleShape;-><init>(J)V

    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 111
    .end local v0           #shapeAddr:J
    .end local v2           #type:I
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    return-object v3

    .line 98
    .restart local v0       #shapeAddr:J
    .restart local v2       #type:I
    :pswitch_1
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/EdgeShape;

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/physics/box2d/EdgeShape;-><init>(J)V

    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    goto :goto_0

    .line 101
    :pswitch_2
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/PolygonShape;

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/physics/box2d/PolygonShape;-><init>(J)V

    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    goto :goto_0

    .line 104
    :pswitch_3
    new-instance v3, Lcom/badlogic/gdx/physics/box2d/ChainShape;

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/physics/box2d/ChainShape;-><init>(J)V

    iput-object v3, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getType()Lcom/badlogic/gdx/physics/box2d/Shape$Type;
    .locals 3

    .prologue
    .line 57
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniGetType(J)I

    move-result v0

    .line 58
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 68
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Unknown shape type!"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :pswitch_0
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Circle:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    .line 66
    :goto_0
    return-object v1

    .line 62
    :pswitch_1
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Edge:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    goto :goto_0

    .line 64
    :pswitch_2
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Polygon:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    goto :goto_0

    .line 66
    :pswitch_3
    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Shape$Type;->Chain:Lcom/badlogic/gdx/physics/box2d/Shape$Type;

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->userData:Ljava/lang/Object;

    return-object v0
.end method

.method public isSensor()Z
    .locals 2

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniIsSensor(J)Z

    move-result v0

    return v0
.end method

.method public refilter()V
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniRefilter(J)V

    .line 179
    return-void
.end method

.method protected reset(Lcom/badlogic/gdx/physics/box2d/Body;J)V
    .locals 1
    .parameter "body"
    .parameter "addr"

    .prologue
    const/4 v0, 0x0

    .line 48
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->body:Lcom/badlogic/gdx/physics/box2d/Body;

    .line 49
    iput-wide p2, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    .line 50
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->shape:Lcom/badlogic/gdx/physics/box2d/Shape;

    .line 51
    iput-object v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->userData:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public setDensity(F)V
    .locals 2
    .parameter "density"

    .prologue
    .line 236
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetDensity(JF)V

    .line 237
    return-void
.end method

.method public setFilterData(Lcom/badlogic/gdx/physics/box2d/Filter;)V
    .locals 6
    .parameter "filter"

    .prologue
    .line 143
    iget-wide v1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    iget-short v3, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->categoryBits:S

    iget-short v4, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->maskBits:S

    iget-short v5, p1, Lcom/badlogic/gdx/physics/box2d/Filter;->groupIndex:S

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetFilterData(JSSS)V

    .line 144
    return-void
.end method

.method public setFriction(F)V
    .locals 2
    .parameter "friction"

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetFriction(JF)V

    .line 267
    return-void
.end method

.method public setRestitution(F)V
    .locals 2
    .parameter "restitution"

    .prologue
    .line 286
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetRestitution(JF)V

    .line 287
    return-void
.end method

.method public setSensor(Z)V
    .locals 2
    .parameter "sensor"

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniSetSensor(JZ)V

    .line 122
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "userData"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->userData:Ljava/lang/Object;

    .line 302
    return-void
.end method

.method public testPoint(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniTestPoint(JFF)Z

    move-result v0

    return v0
.end method

.method public testPoint(Lcom/badlogic/gdx/math/Vector2;)Z
    .locals 4
    .parameter "p"

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/Fixture;->addr:J

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/physics/box2d/Fixture;->jniTestPoint(JFF)Z

    move-result v0

    return v0
.end method
