.class Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;
.super Ljava/lang/Object;
.source "Vector2Line.java"


# instance fields
.field mVertexA:Lcom/badlogic/gdx/math/Vector2;

.field mVertexB:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 0
    .parameter "pVertexA"
    .parameter "pVertexB"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;->mVertexA:Lcom/badlogic/gdx/math/Vector2;

    .line 30
    iput-object p2, p0, Lorg/andengine/extension/physics/box2d/util/hull/Vector2Line;->mVertexB:Lcom/badlogic/gdx/math/Vector2;

    .line 31
    return-void
.end method
