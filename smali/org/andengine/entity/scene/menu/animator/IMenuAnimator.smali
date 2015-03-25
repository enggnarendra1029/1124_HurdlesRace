.class public interface abstract Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;
.super Ljava/lang/Object;
.source "IMenuAnimator.java"


# static fields
.field public static final DEFAULT:Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lorg/andengine/entity/scene/menu/animator/AlphaMenuAnimator;

    invoke-direct {v0}, Lorg/andengine/entity/scene/menu/animator/AlphaMenuAnimator;-><init>()V

    sput-object v0, Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;->DEFAULT:Lorg/andengine/entity/scene/menu/animator/IMenuAnimator;

    return-void
.end method


# virtual methods
.method public abstract buildAnimations(Ljava/util/ArrayList;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/scene/menu/item/IMenuItem;",
            ">;FF)V"
        }
    .end annotation
.end method

.method public abstract prepareAnimations(Ljava/util/ArrayList;FF)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/scene/menu/item/IMenuItem;",
            ">;FF)V"
        }
    .end annotation
.end method
