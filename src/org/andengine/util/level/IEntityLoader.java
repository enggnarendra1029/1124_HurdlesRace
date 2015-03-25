// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.level;

import org.andengine.entity.IEntity;
import org.xml.sax.Attributes;

public interface IEntityLoader
{

    public abstract IEntity onLoadEntity(String s, Attributes attributes);
}
