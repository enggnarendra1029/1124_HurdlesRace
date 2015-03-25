// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle;

import org.andengine.entity.Entity;
import org.andengine.entity.IEntity;
import org.andengine.entity.IEntityFactory;

// Referenced classes of package org.andengine.entity.particle:
//            BatchedPseudoSpriteParticleSystem

class 
    implements IEntityFactory
{

    public Entity create(float f, float f1)
    {
        return new Entity(f, f1);
    }

    public volatile IEntity create(float f, float f1)
    {
        return create(f, f1);
    }

    ()
    {
    }
}
