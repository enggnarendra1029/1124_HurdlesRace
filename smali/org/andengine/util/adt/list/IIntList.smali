.class public interface abstract Lorg/andengine/util/adt/list/IIntList;
.super Ljava/lang/Object;
.source "IIntList.java"


# virtual methods
.method public abstract add(I)V
.end method

.method public abstract add(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract get(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract remove(I)F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract size()I
.end method

.method public abstract toArray()[I
.end method
