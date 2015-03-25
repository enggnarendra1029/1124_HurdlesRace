.class public interface abstract Lorg/andengine/entity/sprite/IAnimationData;
.super Ljava/lang/Object;
.source "IAnimationData.java"


# static fields
.field public static final LOOP_CONTINUOUS:I = -0x1


# virtual methods
.method public abstract calculateCurrentFrameIndex(J)I
.end method

.method public abstract deepCopy()Lorg/andengine/entity/sprite/IAnimationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
        }
    .end annotation
.end method

.method public abstract getAnimationDuration()J
.end method

.method public abstract getFirstFrameIndex()I
.end method

.method public abstract getFrameCount()I
.end method

.method public abstract getFrameDurations()[J
.end method

.method public abstract getFrames()[I
.end method

.method public abstract getLoopCount()I
.end method

.method public abstract set(JI)V
.end method

.method public abstract set(JII)V
.end method

.method public abstract set(JIZ)V
.end method

.method public abstract set(Lorg/andengine/entity/sprite/IAnimationData;)V
.end method

.method public abstract set([J)V
.end method

.method public abstract set([JI)V
.end method

.method public abstract set([JII)V
.end method

.method public abstract set([JIII)V
.end method

.method public abstract set([JIIZ)V
.end method

.method public abstract set([JZ)V
.end method

.method public abstract set([J[I)V
.end method

.method public abstract set([J[II)V
.end method

.method public abstract set([J[IZ)V
.end method
