// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.support.v4.media.VolumeProviderCompat;

// Referenced classes of package android.support.v4.media.session:
//            ParcelableVolumeInfo, MediaSessionCompat

class this._cls0 extends android.support.v4.media.lBase._cls1
{

    final this._cls0 this$0;

    public void onVolumeChanged(VolumeProviderCompat volumeprovidercompat)
    {
        if (cess._mth200(this._cls0.this) != volumeprovidercompat)
        {
            return;
        } else
        {
            ParcelableVolumeInfo parcelablevolumeinfo = new ParcelableVolumeInfo(cess._mth300(this._cls0.this), cess._mth400(this._cls0.this), volumeprovidercompat.getVolumeControl(), volumeprovidercompat.getMaxVolume(), volumeprovidercompat.getCurrentVolume());
            cess._mth500(this._cls0.this, parcelablevolumeinfo);
            return;
        }
    }

    ()
    {
        this$0 = this._cls0.this;
        super();
    }
}
