// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.progress;


// Referenced classes of package org.andengine.util.progress:
//            IProgressListener

public interface ProgressCallable
{

    public abstract Object call(IProgressListener iprogresslistener)
        throws Exception;
}
