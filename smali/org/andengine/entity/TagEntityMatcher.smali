.class public Lorg/andengine/entity/TagEntityMatcher;
.super Ljava/lang/Object;
.source "TagEntityMatcher.java"

# interfaces
.implements Lorg/andengine/entity/IEntityMatcher;


# instance fields
.field private mTag:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "pTag"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lorg/andengine/entity/TagEntityMatcher;->mTag:I

    .line 26
    return-void
.end method


# virtual methods
.method public getTag()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lorg/andengine/entity/TagEntityMatcher;->mTag:I

    return v0
.end method

.method public bridge synthetic matches(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lorg/andengine/entity/IEntity;

    invoke-virtual {p0, p1}, Lorg/andengine/entity/TagEntityMatcher;->matches(Lorg/andengine/entity/IEntity;)Z

    move-result v0

    return v0
.end method

.method public matches(Lorg/andengine/entity/IEntity;)Z
    .locals 2
    .parameter "pEntity"

    .prologue
    .line 46
    iget v0, p0, Lorg/andengine/entity/TagEntityMatcher;->mTag:I

    invoke-interface {p1}, Lorg/andengine/entity/IEntity;->getTag()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTag(I)V
    .locals 0
    .parameter "pTag"

    .prologue
    .line 37
    iput p1, p0, Lorg/andengine/entity/TagEntityMatcher;->mTag:I

    .line 38
    return-void
.end method
