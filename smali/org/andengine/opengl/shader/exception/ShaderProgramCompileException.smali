.class public Lorg/andengine/opengl/shader/exception/ShaderProgramCompileException;
.super Lorg/andengine/opengl/shader/exception/ShaderProgramException;
.source "ShaderProgramCompileException.java"


# static fields
.field private static final serialVersionUID:J = 0x72f7e96bd702bdf7L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "pMessage"
    .parameter "pSource"

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Reason: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nSource:\n##########################\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n##########################"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/andengine/opengl/shader/exception/ShaderProgramException;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method
