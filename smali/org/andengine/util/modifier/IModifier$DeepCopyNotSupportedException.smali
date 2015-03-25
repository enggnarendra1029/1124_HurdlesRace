.class public Lorg/andengine/util/modifier/IModifier$DeepCopyNotSupportedException;
.super Lorg/andengine/util/exception/AndEngineRuntimeException;
.source "IModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/modifier/IModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeepCopyNotSupportedException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5104de4bc5de1eb8L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lorg/andengine/util/exception/AndEngineRuntimeException;-><init>()V

    return-void
.end method
