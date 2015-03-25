// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.options.resolutionpolicy;

import org.andengine.opengl.view.RenderSurfaceView;

public interface IResolutionPolicy
{

    public abstract void onMeasure(RenderSurfaceView rendersurfaceview, int i, int j);
}
