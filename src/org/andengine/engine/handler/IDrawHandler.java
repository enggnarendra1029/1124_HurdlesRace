// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.engine.handler;

import org.andengine.engine.camera.Camera;
import org.andengine.opengl.util.GLState;

public interface IDrawHandler
{

    public abstract void onDraw(GLState glstate, Camera camera);
}
