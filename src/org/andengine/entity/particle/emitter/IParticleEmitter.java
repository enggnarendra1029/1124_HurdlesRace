// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.entity.particle.emitter;

import org.andengine.engine.handler.IUpdateHandler;

public interface IParticleEmitter
    extends IUpdateHandler
{

    public abstract void getPositionOffset(float af[]);
}
