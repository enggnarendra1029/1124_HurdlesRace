.class public Lorg/andengine/opengl/shader/source/StringShaderSource;
.super Ljava/lang/Object;
.source "StringShaderSource.java"

# interfaces
.implements Lorg/andengine/opengl/shader/source/IShaderSource;


# instance fields
.field private final mShaderSource:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "pShaderSource"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/andengine/opengl/shader/source/StringShaderSource;->mShaderSource:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getShaderSource(Lorg/andengine/opengl/util/GLState;)Ljava/lang/String;
    .locals 1
    .parameter "pGLState"

    .prologue
    .line 40
    iget-object v0, p0, Lorg/andengine/opengl/shader/source/StringShaderSource;->mShaderSource:Ljava/lang/String;

    return-object v0
.end method
