.class public Lorg/andengine/opengl/util/VertexUtils;
.super Ljava/lang/Object;
.source "VertexUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVertex([FIII)F
    .locals 1
    .parameter "pVertices"
    .parameter "pVertexOffset"
    .parameter "pVertexStride"
    .parameter "pVertexIndex"

    .prologue
    .line 42
    mul-int v0, p3, p2

    add-int/2addr v0, p1

    aget v0, p0, v0

    return v0
.end method
