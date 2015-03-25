// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.progress;

import java.util.ArrayList;
import java.util.HashMap;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.util.progress:
//            IProgressListener

public class ProgressMonitor
    implements IProgressListener
{

    private final HashMap mChildProgressMonitorToProgressListenerMap;
    private final ArrayList mProgressListeners;

    public ProgressMonitor()
    {
        mProgressListeners = new ArrayList();
        mChildProgressMonitorToProgressListenerMap = new HashMap();
    }

    public ProgressMonitor(IProgressListener iprogresslistener)
    {
        mProgressListeners = new ArrayList();
        mChildProgressMonitorToProgressListenerMap = new HashMap();
        mProgressListeners.add(iprogresslistener);
    }

    private void addProgressListener(IProgressListener iprogresslistener)
    {
        mProgressListeners.add(iprogresslistener);
    }

    private void removeProgressListener(IProgressListener iprogresslistener)
    {
        mProgressListeners.add(iprogresslistener);
    }

    public void onProgressChanged(int i)
    {
        int j = mProgressListeners.size();
        int k = 0;
        do
        {
            if (k >= j)
            {
                return;
            }
            ((IProgressListener)mProgressListeners.get(k)).onProgressChanged(i);
            k++;
        } while (true);
    }

    public void registerChildProgressMonitor(ProgressMonitor progressmonitor, final int pChildProgressMonitorRangeFrom, final int pChildProgressMonitorRangeTo)
    {
        IProgressListener iprogresslistener = new IProgressListener() {

            final ProgressMonitor this$0;
            private final int val$pChildProgressMonitorRangeFrom;
            private final int val$pChildProgressMonitorRangeTo;

            public void onProgressChanged(int i)
            {
                int j = MathUtils.mix(pChildProgressMonitorRangeFrom, pChildProgressMonitorRangeTo, (float)i / 100F);
                ProgressMonitor.this.onProgressChanged(j);
            }

            
            {
                this$0 = ProgressMonitor.this;
                pChildProgressMonitorRangeFrom = i;
                pChildProgressMonitorRangeTo = j;
                super();
            }
        };
        progressmonitor.addProgressListener(iprogresslistener);
        mChildProgressMonitorToProgressListenerMap.put(progressmonitor, iprogresslistener);
    }

    public void unregisterChildProgressMonitor(ProgressMonitor progressmonitor)
    {
        progressmonitor.removeProgressListener((IProgressListener)mChildProgressMonitorToProgressListenerMap.get(progressmonitor));
    }
}
