.class public Lorg/andengine/util/debug/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/debug/Debug$DebugLevel;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel:[I

.field private static sDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

.field private static sDebugUser:Ljava/lang/String;

.field private static sTag:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()[I
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lorg/andengine/util/debug/Debug;->$SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/util/debug/Debug$DebugLevel;->values()[Lorg/andengine/util/debug/Debug$DebugLevel;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->DEBUG:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->ERROR:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->INFO:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->NONE:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->VERBOSE:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->WARNING:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lorg/andengine/util/debug/Debug;->$SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "AndEngine"

    sput-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    .line 24
    const-string v0, ""

    sput-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    .line 25
    sget-object v0, Lorg/andengine/util/debug/Debug$DebugLevel;->VERBOSE:Lorg/andengine/util/debug/Debug$DebugLevel;

    sput-object v0, Lorg/andengine/util/debug/Debug;->sDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2
    .parameter "pMessage"

    .prologue
    .line 204
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 216
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->DEBUG:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v0, v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->isSameOrLessThan(Lorg/andengine/util/debug/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    if-nez p2, :cond_1

    .line 218
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 208
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    return-void
.end method

.method public static dUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 226
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-static {p0}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method

.method public static dUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 238
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method public static dUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 244
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-static {p0, p1, p2}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    :cond_0
    return-void
.end method

.method public static dUser(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 232
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter "pMessage"

    .prologue
    .line 352
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 368
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->ERROR:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v0, v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->isSameOrLessThan(Lorg/andengine/util/debug/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    if-nez p2, :cond_1

    .line 370
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 360
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 361
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "pThrowable"

    .prologue
    .line 356
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    return-void
.end method

.method public static eUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 378
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-static {p0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;)V

    .line 381
    :cond_0
    return-void
.end method

.method public static eUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 396
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    return-void
.end method

.method public static eUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 402
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {p0, p1, p2}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    :cond_0
    return-void
.end method

.method public static eUser(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 390
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 393
    :cond_0
    return-void
.end method

.method public static eUser(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 384
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-static {p0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    .line 387
    :cond_0
    return-void
.end method

.method public static getDebugLevel()Lorg/andengine/util/debug/Debug$DebugLevel;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    return-object v0
.end method

.method public static getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .parameter "pMessage"

    .prologue
    .line 250
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"

    .prologue
    .line 258
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 262
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->INFO:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v0, v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->isSameOrLessThan(Lorg/andengine/util/debug/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    if-nez p2, :cond_1

    .line 264
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 254
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 255
    return-void
.end method

.method public static iUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 272
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {p0}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method public static iUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 284
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method

.method public static iUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 290
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-static {p0, p1, p2}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    :cond_0
    return-void
.end method

.method public static iUser(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 278
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    :cond_0
    return-void
.end method

.method public static log(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;)V
    .locals 2
    .parameter "pDebugLevel"
    .parameter "pMessage"

    .prologue
    .line 70
    invoke-static {}, Lorg/andengine/util/debug/Debug;->$SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    invoke-static {p1}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :pswitch_2
    invoke-static {p1}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :pswitch_3
    invoke-static {p1}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_4
    invoke-static {p1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :pswitch_5
    invoke-static {p1}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static log(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pDebugLevel"
    .parameter "pTag"
    .parameter "pMessage"

    .prologue
    .line 114
    invoke-static {}, Lorg/andengine/util/debug/Debug;->$SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    :pswitch_0
    return-void

    .line 118
    :pswitch_1
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_2
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    :pswitch_3
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :pswitch_4
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :pswitch_5
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static log(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "pDebugLevel"
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 136
    invoke-static {}, Lorg/andengine/util/debug/Debug;->$SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 155
    :goto_0
    :pswitch_0
    return-void

    .line 140
    :pswitch_1
    invoke-static {p1, p2, p3}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 143
    :pswitch_2
    invoke-static {p1, p2, p3}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 146
    :pswitch_3
    invoke-static {p1, p2, p3}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    :pswitch_4
    invoke-static {p1, p2, p3}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 152
    :pswitch_5
    invoke-static {p1, p2, p3}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static log(Lorg/andengine/util/debug/Debug$DebugLevel;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "pDebugLevel"
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 92
    invoke-static {}, Lorg/andengine/util/debug/Debug;->$SWITCH_TABLE$org$andengine$util$debug$Debug$DebugLevel()[I

    move-result-object v0

    invoke-virtual {p0}, Lorg/andengine/util/debug/Debug$DebugLevel;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 111
    :goto_0
    :pswitch_0
    return-void

    .line 96
    :pswitch_1
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    :pswitch_3
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :pswitch_4
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :pswitch_5
    invoke-static {p1, p2}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public static setDebugLevel(Lorg/andengine/util/debug/Debug$DebugLevel;)V
    .locals 2
    .parameter "pDebugLevel"

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pDebugLevel must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    sput-object p0, Lorg/andengine/util/debug/Debug;->sDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    .line 52
    return-void
.end method

.method public static setDebugUser(Ljava/lang/String;)V
    .locals 2
    .parameter "pDebugUser"

    .prologue
    .line 55
    if-nez p0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pDebugUser must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    sput-object p0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 0
    .parameter "pTag"

    .prologue
    .line 40
    sput-object p0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .parameter "pMessage"

    .prologue
    .line 158
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 159
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 170
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->VERBOSE:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v0, v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->isSameOrLessThan(Lorg/andengine/util/debug/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    if-nez p2, :cond_1

    .line 172
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 162
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    return-void
.end method

.method public static vUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 180
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-static {p0}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public static vUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 192
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method public static vUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 198
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-static {p0, p1, p2}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 201
    :cond_0
    return-void
.end method

.method public static vUser(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 186
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->v(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .parameter "pMessage"

    .prologue
    .line 296
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 297
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"

    .prologue
    .line 308
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 312
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugLevel:Lorg/andengine/util/debug/Debug$DebugLevel;

    sget-object v1, Lorg/andengine/util/debug/Debug$DebugLevel;->WARNING:Lorg/andengine/util/debug/Debug$DebugLevel;

    invoke-virtual {v0, v1}, Lorg/andengine/util/debug/Debug$DebugLevel;->isSameOrLessThan(Lorg/andengine/util/debug/Debug$DebugLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    if-nez p2, :cond_1

    .line 314
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"

    .prologue
    .line 304
    sget-object v0, Lorg/andengine/util/debug/Debug;->sTag:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "pThrowable"

    .prologue
    .line 300
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 301
    return-void
.end method

.method public static wUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 322
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-static {p0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;)V

    .line 325
    :cond_0
    return-void
.end method

.method public static wUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pDebugUser"

    .prologue
    .line 340
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_0
    return-void
.end method

.method public static wUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pTag"
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 346
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    invoke-static {p0, p1, p2}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    :cond_0
    return-void
.end method

.method public static wUser(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pMessage"
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 334
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {p0, p1}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    :cond_0
    return-void
.end method

.method public static wUser(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .parameter "pThrowable"
    .parameter "pDebugUser"

    .prologue
    .line 328
    sget-object v0, Lorg/andengine/util/debug/Debug;->sDebugUser:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    invoke-static {p0}, Lorg/andengine/util/debug/Debug;->w(Ljava/lang/Throwable;)V

    .line 331
    :cond_0
    return-void
.end method
