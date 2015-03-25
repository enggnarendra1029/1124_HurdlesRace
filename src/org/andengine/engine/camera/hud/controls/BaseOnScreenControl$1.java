// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.camera.hud.controls;

import org.andengine.entity.sprite.Sprite;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.texture.region.ITextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;

// Referenced classes of package org.andengine.engine.camera.hud.controls:
//            BaseOnScreenControl

class this._cls0 extends Sprite
{

    final BaseOnScreenControl this$0;

    public boolean onAreaTouched(TouchEvent touchevent, float f, float f1)
    {
        return onHandleControlBaseTouched(touchevent, f, f1);
    }

    (float f, float f1, ITextureRegion itextureregion, VertexBufferObjectManager vertexbufferobjectmanager)
    {
        this$0 = BaseOnScreenControl.this;
        super(f, f1, itextureregion, vertexbufferobjectmanager);
    }
}
