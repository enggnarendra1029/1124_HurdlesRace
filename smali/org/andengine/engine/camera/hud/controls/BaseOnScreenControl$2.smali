.class Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;
.super Ljava/lang/Object;
.source "BaseOnScreenControl.java"

# interfaces
.implements Lorg/andengine/engine/handler/timer/ITimerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;-><init>(FFLorg/andengine/engine/camera/Camera;Lorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/texture/region/ITextureRegion;FLorg/andengine/opengl/vbo/VertexBufferObjectManager;Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;


# direct methods
.method constructor <init>(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimePassed(Lorg/andengine/engine/handler/timer/TimerHandler;)V
    .locals 4
    .parameter "pTimerHandler"

    .prologue
    .line 74
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    #getter for: Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mOnScreenControlListener:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;
    invoke-static {v0}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->access$0(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;)Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    iget-object v2, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    #getter for: Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueX:F
    invoke-static {v2}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->access$1(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F

    move-result v2

    iget-object v3, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$2;->this$0:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    #getter for: Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->mControlValueY:F
    invoke-static {v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->access$2(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;)F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$IOnScreenControlListener;->onControlChange(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;FF)V

    .line 75
    return-void
.end method
