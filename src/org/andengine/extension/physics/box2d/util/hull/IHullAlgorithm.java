// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d.util.hull;

import com.badlogic.gdx.math.Vector2;

public interface IHullAlgorithm
{

    public abstract int computeHull(Vector2 avector2[]);
}
