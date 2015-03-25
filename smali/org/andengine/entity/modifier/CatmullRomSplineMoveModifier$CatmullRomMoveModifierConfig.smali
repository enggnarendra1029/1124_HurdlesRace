.class public Lorg/andengine/entity/modifier/CatmullRomSplineMoveModifier$CatmullRomMoveModifierConfig;
.super Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;
.source "CatmullRomSplineMoveModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/modifier/CatmullRomSplineMoveModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CatmullRomMoveModifierConfig"
.end annotation


# static fields
.field private static final CARDINALSPLINE_CATMULLROM_TENSION:I


# instance fields
.field final synthetic this$0:Lorg/andengine/entity/modifier/CatmullRomSplineMoveModifier;


# direct methods
.method public constructor <init>(Lorg/andengine/entity/modifier/CatmullRomSplineMoveModifier;I)V
    .locals 1
    .parameter
    .parameter "pControlPointCount"

    .prologue
    .line 71
    iput-object p1, p0, Lorg/andengine/entity/modifier/CatmullRomSplineMoveModifier$CatmullRomMoveModifierConfig;->this$0:Lorg/andengine/entity/modifier/CatmullRomSplineMoveModifier;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lorg/andengine/entity/modifier/CardinalSplineMoveModifier$CardinalSplineMoveModifierConfig;-><init>(IF)V

    .line 73
    return-void
.end method
