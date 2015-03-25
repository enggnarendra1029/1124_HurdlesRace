.class public Lracing/game/hurdlesrace/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field static util:Lracing/game/hurdlesrace/Util;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lracing/game/hurdlesrace/Util;

    invoke-direct {v0}, Lracing/game/hurdlesrace/Util;-><init>()V

    sput-object v0, Lracing/game/hurdlesrace/Util;->util:Lracing/game/hurdlesrace/Util;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {}, Lracing/game/hurdlesrace/Util;->init()V

    .line 10
    return-void
.end method

.method public static getUtil()Lracing/game/hurdlesrace/Util;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lracing/game/hurdlesrace/Util;->util:Lracing/game/hurdlesrace/Util;

    return-object v0
.end method

.method static init()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method


# virtual methods
.method public getAngle(F)F
    .locals 4
    .parameter "time"

    .prologue
    const v1, 0x3f19999a

    .line 23
    const/high16 v2, 0x3f80

    const/high16 v3, 0x4248

    div-float v3, p1, v3

    sub-float v0, v2, v3

    .line 25
    .local v0, a:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    .end local v0           #a:F
    :cond_0
    return v0
.end method

.method public getVelocity(I)F
    .locals 5
    .parameter "time"

    .prologue
    const/high16 v1, 0x4120

    .line 31
    const/high16 v2, 0x4080

    int-to-float v3, p1

    const v4, 0x3e4ccccd

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 32
    .local v0, b:F
    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v0, v1

    .end local v0           #b:F
    :cond_0
    return v0
.end method
