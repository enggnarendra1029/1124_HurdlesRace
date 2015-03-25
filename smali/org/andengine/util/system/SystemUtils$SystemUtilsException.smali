.class public Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
.super Ljava/lang/Exception;
.source "SystemUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/util/system/SystemUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemUtilsException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x64b4352ba09be04cL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 266
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pThrowable"

    .prologue
    .line 269
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method
