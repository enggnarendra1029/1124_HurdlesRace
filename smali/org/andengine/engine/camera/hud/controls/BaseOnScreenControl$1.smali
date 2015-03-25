.class Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;
.super Lorg/andengine/entity/sprite/Sprite;
.source "BaseOnScreenControl.java"


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
.method constructor <init>(Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"
    .parameter "$anonymous3"

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;->this$0:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    .line 57
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/andengine/entity/sprite/Sprite;-><init>(FFLorg/andengine/opengl/texture/region/ITextureRegion;Lorg/andengine/opengl/vbo/VertexBufferObjectManager;)V

    return-void
.end method


# virtual methods
.method public onAreaTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z
    .locals 1
    .parameter "pSceneTouchEvent"
    .parameter "pTouchAreaLocalX"
    .parameter "pTouchAreaLocalY"

    .prologue
    .line 60
    iget-object v0, p0, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl$1;->this$0:Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/engine/camera/hud/controls/BaseOnScreenControl;->onHandleControlBaseTouched(Lorg/andengine/input/touch/TouchEvent;FF)Z

    move-result v0

    return v0
.end method
