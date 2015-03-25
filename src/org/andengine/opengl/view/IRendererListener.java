// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.view;

import org.andengine.opengl.util.GLState;

public interface IRendererListener
{

    public abstract void onSurfaceChanged(GLState glstate, int i, int j);

    public abstract void onSurfaceCreated(GLState glstate);
}
