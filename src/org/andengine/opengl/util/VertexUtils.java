// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.util;


public class VertexUtils
{

    public VertexUtils()
    {
    }

    public static float getVertex(float af[], int i, int j, int k)
    {
        return af[i + k * j];
    }
}
