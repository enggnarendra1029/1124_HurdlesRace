.class public final enum Lorg/andengine/opengl/vbo/DrawType;
.super Ljava/lang/Enum;
.source "DrawType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/andengine/opengl/vbo/DrawType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

.field private static final synthetic ENUM$VALUES:[Lorg/andengine/opengl/vbo/DrawType;

.field public static final enum STATIC:Lorg/andengine/opengl/vbo/DrawType;

.field public static final enum STREAM:Lorg/andengine/opengl/vbo/DrawType;


# instance fields
.field private final mUsage:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lorg/andengine/opengl/vbo/DrawType;

    const-string v1, "STATIC"

    .line 16
    const v2, 0x88e4

    invoke-direct {v0, v1, v3, v2}, Lorg/andengine/opengl/vbo/DrawType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    .line 17
    new-instance v0, Lorg/andengine/opengl/vbo/DrawType;

    const-string v1, "DYNAMIC"

    const v2, 0x88e8

    invoke-direct {v0, v1, v4, v2}, Lorg/andengine/opengl/vbo/DrawType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    .line 18
    new-instance v0, Lorg/andengine/opengl/vbo/DrawType;

    const-string v1, "STREAM"

    const v2, 0x88e0

    invoke-direct {v0, v1, v5, v2}, Lorg/andengine/opengl/vbo/DrawType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/opengl/vbo/DrawType;->STREAM:Lorg/andengine/opengl/vbo/DrawType;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/andengine/opengl/vbo/DrawType;

    sget-object v1, Lorg/andengine/opengl/vbo/DrawType;->STATIC:Lorg/andengine/opengl/vbo/DrawType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/opengl/vbo/DrawType;->DYNAMIC:Lorg/andengine/opengl/vbo/DrawType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/opengl/vbo/DrawType;->STREAM:Lorg/andengine/opengl/vbo/DrawType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/andengine/opengl/vbo/DrawType;->ENUM$VALUES:[Lorg/andengine/opengl/vbo/DrawType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "pUsage"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lorg/andengine/opengl/vbo/DrawType;->mUsage:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/vbo/DrawType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lorg/andengine/opengl/vbo/DrawType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/vbo/DrawType;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/vbo/DrawType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lorg/andengine/opengl/vbo/DrawType;->ENUM$VALUES:[Lorg/andengine/opengl/vbo/DrawType;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/vbo/DrawType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getUsage()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lorg/andengine/opengl/vbo/DrawType;->mUsage:I

    return v0
.end method
