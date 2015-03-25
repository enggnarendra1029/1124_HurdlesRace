.class public interface abstract Lorg/andengine/util/IDisposable;
.super Ljava/lang/Object;
.source "IDisposable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/IDisposable$AlreadyDisposedException;
    }
.end annotation


# virtual methods
.method public abstract dispose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/IDisposable$AlreadyDisposedException;
        }
    .end annotation
.end method

.method public abstract isDisposed()Z
.end method
