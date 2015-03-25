.class public Lcom/badlogic/gdx/physics/box2d/joints/RopeJoint;
.super Lcom/badlogic/gdx/physics/box2d/Joint;
.source "RopeJoint.java"


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/physics/box2d/World;J)V
    .locals 0
    .parameter "world"
    .parameter "addr"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/physics/box2d/Joint;-><init>(Lcom/badlogic/gdx/physics/box2d/World;J)V

    .line 34
    return-void
.end method

.method private native jniGetMaxLength(J)F
.end method

.method private native jniSetMaxLength(JF)F
.end method


# virtual methods
.method public getMaxLength()F
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJoint;->addr:J

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/physics/box2d/joints/RopeJoint;->jniGetMaxLength(J)F

    move-result v0

    return v0
.end method

.method public setMaxLength(F)V
    .locals 2
    .parameter "length"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/badlogic/gdx/physics/box2d/joints/RopeJoint;->addr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/badlogic/gdx/physics/box2d/joints/RopeJoint;->jniSetMaxLength(JF)F

    .line 49
    return-void
.end method
