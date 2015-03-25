.class public Lorg/andengine/util/exception/DeviceNotSupportedException;
.super Lorg/andengine/util/exception/AndEngineException;
.source "DeviceNotSupportedException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x24a5061ff383296cL


# instance fields
.field private final mDeviceNotSupportedCause:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;


# direct methods
.method public constructor <init>(Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;)V
    .locals 0
    .parameter "pDeviceNotSupportedCause"

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/andengine/util/exception/AndEngineException;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/andengine/util/exception/DeviceNotSupportedException;->mDeviceNotSupportedCause:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "pDeviceNotSupportedCause"
    .parameter "pThrowable"

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lorg/andengine/util/exception/AndEngineException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    iput-object p1, p0, Lorg/andengine/util/exception/DeviceNotSupportedException;->mDeviceNotSupportedCause:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    .line 36
    return-void
.end method


# virtual methods
.method public getDeviceNotSupportedCause()Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/andengine/util/exception/DeviceNotSupportedException;->mDeviceNotSupportedCause:Lorg/andengine/util/exception/DeviceNotSupportedException$DeviceNotSupportedCause;

    return-object v0
.end method
