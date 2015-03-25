// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.scene.background;

import org.andengine.engine.camera.Camera;
import org.andengine.entity.IEntity;
import org.andengine.opengl.util.GLState;

// Referenced classes of package org.andengine.entity.scene.background:
//            Background

public class EntityBackground extends Background
{

    protected IEntity mEntity;

    public EntityBackground(float f, float f1, float f2, IEntity ientity)
    {
        super(f, f1, f2);
        mEntity = ientity;
    }

    public EntityBackground(IEntity ientity)
    {
        mEntity = ientity;
    }

    public void onDraw(GLState glstate, Camera camera)
    {
        super.onDraw(glstate, camera);
        mEntity.onDraw(glstate, camera);
    }
}
