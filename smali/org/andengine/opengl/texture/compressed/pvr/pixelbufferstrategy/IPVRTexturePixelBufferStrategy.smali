.class public interface abstract Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy;
.super Ljava/lang/Object;
.source "IPVRTexturePixelBufferStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;
    }
.end annotation


# virtual methods
.method public abstract loadPVRTextureData(Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;IIILorg/andengine/opengl/texture/PixelFormat;III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract newPVRTexturePixelBufferStrategyManager(Lorg/andengine/opengl/texture/compressed/pvr/PVRTexture;)Lorg/andengine/opengl/texture/compressed/pvr/pixelbufferstrategy/IPVRTexturePixelBufferStrategy$IPVRTexturePixelBufferStrategyBufferManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
