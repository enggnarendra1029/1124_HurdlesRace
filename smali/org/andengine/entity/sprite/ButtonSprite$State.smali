.class public final enum Lorg/andengine/entity/sprite/ButtonSprite$State;
.super Ljava/lang/Enum;
.source "ButtonSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/andengine/entity/sprite/ButtonSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/entity/sprite/ButtonSprite$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISABLED:Lorg/andengine/entity/sprite/ButtonSprite$State;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/entity/sprite/ButtonSprite$State;

.field public static final enum NORMAL:Lorg/andengine/entity/sprite/ButtonSprite$State;

.field public static final enum PRESSED:Lorg/andengine/entity/sprite/ButtonSprite$State;


# instance fields
.field private final mTiledTextureRegionIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    new-instance v0, Lorg/andengine/entity/sprite/ButtonSprite$State;

    const-string v1, "NORMAL"

    .line 193
    invoke-direct {v0, v1, v2, v2}, Lorg/andengine/entity/sprite/ButtonSprite$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->NORMAL:Lorg/andengine/entity/sprite/ButtonSprite$State;

    .line 194
    new-instance v0, Lorg/andengine/entity/sprite/ButtonSprite$State;

    const-string v1, "PRESSED"

    invoke-direct {v0, v1, v3, v3}, Lorg/andengine/entity/sprite/ButtonSprite$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->PRESSED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    .line 195
    new-instance v0, Lorg/andengine/entity/sprite/ButtonSprite$State;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4, v4}, Lorg/andengine/entity/sprite/ButtonSprite$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->DISABLED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    .line 188
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/andengine/entity/sprite/ButtonSprite$State;

    sget-object v1, Lorg/andengine/entity/sprite/ButtonSprite$State;->NORMAL:Lorg/andengine/entity/sprite/ButtonSprite$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/entity/sprite/ButtonSprite$State;->PRESSED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/entity/sprite/ButtonSprite$State;->DISABLED:Lorg/andengine/entity/sprite/ButtonSprite$State;

    aput-object v1, v0, v4

    sput-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->ENUM$VALUES:[Lorg/andengine/entity/sprite/ButtonSprite$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "pTiledTextureRegionIndex"

    .prologue
    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput p3, p0, Lorg/andengine/entity/sprite/ButtonSprite$State;->mTiledTextureRegionIndex:I

    .line 213
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/entity/sprite/ButtonSprite$State;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/sprite/ButtonSprite$State;

    return-object v0
.end method

.method public static values()[Lorg/andengine/entity/sprite/ButtonSprite$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/entity/sprite/ButtonSprite$State;->ENUM$VALUES:[Lorg/andengine/entity/sprite/ButtonSprite$State;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/entity/sprite/ButtonSprite$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getTiledTextureRegionIndex()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lorg/andengine/entity/sprite/ButtonSprite$State;->mTiledTextureRegionIndex:I

    return v0
.end method
