// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.shader.source;

import org.andengine.opengl.util.GLState;

public interface IShaderSource
{

    public abstract String getShaderSource(GLState glstate);
}
