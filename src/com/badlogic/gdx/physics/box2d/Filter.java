// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.badlogic.gdx.physics.box2d;


public class Filter
{

    public short categoryBits;
    public short groupIndex;
    public short maskBits;

    public Filter()
    {
        categoryBits = 1;
        maskBits = -1;
        groupIndex = 0;
    }
}
