// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            PlaybackStateCompat, ParcelableVolumeInfo, IMediaControllerCallback

public interface IMediaSession
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements IMediaSession
    {

        private static final String DESCRIPTOR = "android.support.v4.media.session.IMediaSession";
        static final int TRANSACTION_adjustVolume = 11;
        static final int TRANSACTION_fastForward = 21;
        static final int TRANSACTION_getExtras = 30;
        static final int TRANSACTION_getFlags = 9;
        static final int TRANSACTION_getLaunchPendingIntent = 8;
        static final int TRANSACTION_getMetadata = 26;
        static final int TRANSACTION_getPackageName = 6;
        static final int TRANSACTION_getPlaybackState = 27;
        static final int TRANSACTION_getQueue = 28;
        static final int TRANSACTION_getQueueTitle = 29;
        static final int TRANSACTION_getRatingType = 31;
        static final int TRANSACTION_getTag = 7;
        static final int TRANSACTION_getVolumeAttributes = 10;
        static final int TRANSACTION_isTransportControlEnabled = 5;
        static final int TRANSACTION_next = 19;
        static final int TRANSACTION_pause = 17;
        static final int TRANSACTION_play = 13;
        static final int TRANSACTION_playFromMediaId = 14;
        static final int TRANSACTION_playFromSearch = 15;
        static final int TRANSACTION_previous = 20;
        static final int TRANSACTION_rate = 24;
        static final int TRANSACTION_registerCallbackListener = 3;
        static final int TRANSACTION_rewind = 22;
        static final int TRANSACTION_seekTo = 23;
        static final int TRANSACTION_sendCommand = 1;
        static final int TRANSACTION_sendCustomAction = 25;
        static final int TRANSACTION_sendMediaButton = 2;
        static final int TRANSACTION_setVolumeTo = 12;
        static final int TRANSACTION_skipToQueueItem = 16;
        static final int TRANSACTION_stop = 18;
        static final int TRANSACTION_unregisterCallbackListener = 4;

        public static IMediaSession asInterface(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("android.support.v4.media.session.IMediaSession");
            if (iinterface != null && (iinterface instanceof IMediaSession))
            {
                return (IMediaSession)iinterface;
            } else
            {
                return new Proxy(ibinder);
            }
        }

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("android.support.v4.media.session.IMediaSession");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                String s5 = parcel.readString();
                Bundle bundle4;
                MediaSessionCompat.ResultReceiverWrapper resultreceiverwrapper;
                if (parcel.readInt() != 0)
                {
                    bundle4 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle4 = null;
                }
                if (parcel.readInt() != 0)
                {
                    resultreceiverwrapper = (MediaSessionCompat.ResultReceiverWrapper)MediaSessionCompat.ResultReceiverWrapper.CREATOR.createFromParcel(parcel);
                } else
                {
                    resultreceiverwrapper = null;
                }
                sendCommand(s5, bundle4, resultreceiverwrapper);
                parcel1.writeNoException();
                return true;

            case 2: // '\002'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                KeyEvent keyevent;
                boolean flag1;
                int j1;
                if (parcel.readInt() != 0)
                {
                    keyevent = (KeyEvent)KeyEvent.CREATOR.createFromParcel(parcel);
                } else
                {
                    keyevent = null;
                }
                flag1 = sendMediaButton(keyevent);
                parcel1.writeNoException();
                j1 = 0;
                if (flag1)
                {
                    j1 = 1;
                }
                parcel1.writeInt(j1);
                return true;

            case 3: // '\003'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                registerCallbackListener(IMediaControllerCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                unregisterCallbackListener(IMediaControllerCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                boolean flag = isTransportControlEnabled();
                parcel1.writeNoException();
                int i1 = 0;
                if (flag)
                {
                    i1 = 1;
                }
                parcel1.writeInt(i1);
                return true;

            case 6: // '\006'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                String s4 = getPackageName();
                parcel1.writeNoException();
                parcel1.writeString(s4);
                return true;

            case 7: // '\007'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                String s3 = getTag();
                parcel1.writeNoException();
                parcel1.writeString(s3);
                return true;

            case 8: // '\b'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                PendingIntent pendingintent = getLaunchPendingIntent();
                parcel1.writeNoException();
                if (pendingintent != null)
                {
                    parcel1.writeInt(1);
                    pendingintent.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 9: // '\t'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                long l = getFlags();
                parcel1.writeNoException();
                parcel1.writeLong(l);
                return true;

            case 10: // '\n'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                ParcelableVolumeInfo parcelablevolumeinfo = getVolumeAttributes();
                parcel1.writeNoException();
                if (parcelablevolumeinfo != null)
                {
                    parcel1.writeInt(1);
                    parcelablevolumeinfo.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 11: // '\013'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                adjustVolume(parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                setVolumeTo(parcel.readInt(), parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 13: // '\r'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                play();
                parcel1.writeNoException();
                return true;

            case 14: // '\016'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                String s2 = parcel.readString();
                Bundle bundle3;
                if (parcel.readInt() != 0)
                {
                    bundle3 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle3 = null;
                }
                playFromMediaId(s2, bundle3);
                parcel1.writeNoException();
                return true;

            case 15: // '\017'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                String s1 = parcel.readString();
                Bundle bundle2;
                if (parcel.readInt() != 0)
                {
                    bundle2 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle2 = null;
                }
                playFromSearch(s1, bundle2);
                parcel1.writeNoException();
                return true;

            case 16: // '\020'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                skipToQueueItem(parcel.readLong());
                parcel1.writeNoException();
                return true;

            case 17: // '\021'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                pause();
                parcel1.writeNoException();
                return true;

            case 18: // '\022'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                stop();
                parcel1.writeNoException();
                return true;

            case 19: // '\023'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                next();
                parcel1.writeNoException();
                return true;

            case 20: // '\024'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                previous();
                parcel1.writeNoException();
                return true;

            case 21: // '\025'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                fastForward();
                parcel1.writeNoException();
                return true;

            case 22: // '\026'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                rewind();
                parcel1.writeNoException();
                return true;

            case 23: // '\027'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                seekTo(parcel.readLong());
                parcel1.writeNoException();
                return true;

            case 24: // '\030'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                RatingCompat ratingcompat;
                if (parcel.readInt() != 0)
                {
                    ratingcompat = (RatingCompat)RatingCompat.CREATOR.createFromParcel(parcel);
                } else
                {
                    ratingcompat = null;
                }
                rate(ratingcompat);
                parcel1.writeNoException();
                return true;

            case 25: // '\031'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                String s = parcel.readString();
                Bundle bundle1;
                if (parcel.readInt() != 0)
                {
                    bundle1 = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
                } else
                {
                    bundle1 = null;
                }
                sendCustomAction(s, bundle1);
                parcel1.writeNoException();
                return true;

            case 26: // '\032'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                MediaMetadataCompat mediametadatacompat = getMetadata();
                parcel1.writeNoException();
                if (mediametadatacompat != null)
                {
                    parcel1.writeInt(1);
                    mediametadatacompat.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 27: // '\033'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                PlaybackStateCompat playbackstatecompat = getPlaybackState();
                parcel1.writeNoException();
                if (playbackstatecompat != null)
                {
                    parcel1.writeInt(1);
                    playbackstatecompat.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 28: // '\034'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                List list = getQueue();
                parcel1.writeNoException();
                parcel1.writeTypedList(list);
                return true;

            case 29: // '\035'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                CharSequence charsequence = getQueueTitle();
                parcel1.writeNoException();
                if (charsequence != null)
                {
                    parcel1.writeInt(1);
                    TextUtils.writeToParcel(charsequence, parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 30: // '\036'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                Bundle bundle = getExtras();
                parcel1.writeNoException();
                if (bundle != null)
                {
                    parcel1.writeInt(1);
                    bundle.writeToParcel(parcel1, 1);
                    return true;
                } else
                {
                    parcel1.writeInt(0);
                    return true;
                }

            case 31: // '\037'
                parcel.enforceInterface("android.support.v4.media.session.IMediaSession");
                int k = getRatingType();
                parcel1.writeNoException();
                parcel1.writeInt(k);
                return true;
            }
        }

        public Stub()
        {
            attachInterface(this, "android.support.v4.media.session.IMediaSession");
        }
    }

    private static class Stub.Proxy
        implements IMediaSession
    {

        private IBinder mRemote;

        public void adjustVolume(int i, int j, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeInt(i);
            parcel.writeInt(j);
            parcel.writeString(s);
            mRemote.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public IBinder asBinder()
        {
            return mRemote;
        }

        public void fastForward()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public Bundle getExtras()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(30, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            Bundle bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return bundle;
_L2:
            bundle = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public long getFlags()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            long l;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            l = parcel1.readLong();
            parcel1.recycle();
            parcel.recycle();
            return l;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String getInterfaceDescriptor()
        {
            return "android.support.v4.media.session.IMediaSession";
        }

        public PendingIntent getLaunchPendingIntent()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            PendingIntent pendingintent = (PendingIntent)PendingIntent.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return pendingintent;
_L2:
            pendingintent = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public MediaMetadataCompat getMetadata()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(26, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            MediaMetadataCompat mediametadatacompat = (MediaMetadataCompat)MediaMetadataCompat.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return mediametadatacompat;
_L2:
            mediametadatacompat = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String getPackageName()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public PlaybackStateCompat getPlaybackState()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(27, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            PlaybackStateCompat playbackstatecompat = (PlaybackStateCompat)PlaybackStateCompat.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return playbackstatecompat;
_L2:
            playbackstatecompat = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public List getQueue()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            java.util.ArrayList arraylist;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(28, parcel, parcel1, 0);
            parcel1.readException();
            arraylist = parcel1.createTypedArrayList(MediaSessionCompat.QueueItem.CREATOR);
            parcel1.recycle();
            parcel.recycle();
            return arraylist;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public CharSequence getQueueTitle()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(29, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            CharSequence charsequence = (CharSequence)TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return charsequence;
_L2:
            charsequence = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public int getRatingType()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(31, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            parcel1.recycle();
            parcel.recycle();
            return i;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public String getTag()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            String s;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public ParcelableVolumeInfo getVolumeAttributes()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            if (parcel1.readInt() == 0) goto _L2; else goto _L1
_L1:
            ParcelableVolumeInfo parcelablevolumeinfo = (ParcelableVolumeInfo)ParcelableVolumeInfo.CREATOR.createFromParcel(parcel1);
_L4:
            parcel1.recycle();
            parcel.recycle();
            return parcelablevolumeinfo;
_L2:
            parcelablevolumeinfo = null;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean isTransportControlEnabled()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            int i;
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            boolean flag = false;
            if (i != 0)
            {
                flag = true;
            }
            parcel1.recycle();
            parcel.recycle();
            return flag;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void next()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void pause()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void play()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void playFromMediaId(String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s);
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            mRemote.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void playFromSearch(String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s);
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            mRemote.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void previous()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void rate(RatingCompat ratingcompat)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (ratingcompat == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            ratingcompat.writeToParcel(parcel, 0);
_L1:
            mRemote.transact(24, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void registerCallbackListener(IMediaControllerCallback imediacontrollercallback)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (imediacontrollercallback == null)
            {
                break MISSING_BLOCK_LABEL_59;
            }
            IBinder ibinder = imediacontrollercallback.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            mRemote.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            ibinder = null;
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void rewind()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(22, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void seekTo(long l)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeLong(l);
            mRemote.transact(23, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void sendCommand(String s, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultreceiverwrapper)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s);
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            if (resultreceiverwrapper == null)
            {
                break MISSING_BLOCK_LABEL_113;
            }
            parcel.writeInt(1);
            resultreceiverwrapper.writeToParcel(parcel, 0);
_L4:
            mRemote.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
            parcel.writeInt(0);
              goto _L4
        }

        public void sendCustomAction(String s, Bundle bundle)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeString(s);
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_66;
            }
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L1:
            mRemote.transact(25, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public boolean sendMediaButton(KeyEvent keyevent)
            throws RemoteException
        {
            boolean flag;
            Parcel parcel;
            Parcel parcel1;
            flag = true;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (keyevent == null)
            {
                break MISSING_BLOCK_LABEL_75;
            }
            parcel.writeInt(1);
            keyevent.writeToParcel(parcel, 0);
_L1:
            int i;
            mRemote.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            i = parcel1.readInt();
            Exception exception;
            if (i == 0)
            {
                flag = false;
            }
            parcel1.recycle();
            parcel.recycle();
            return flag;
            parcel.writeInt(0);
              goto _L1
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void setVolumeTo(int i, int j, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeInt(i);
            parcel.writeInt(j);
            parcel.writeString(s);
            mRemote.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void skipToQueueItem(long l)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            parcel.writeLong(l);
            mRemote.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void stop()
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            mRemote.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void unregisterCallbackListener(IMediaControllerCallback imediacontrollercallback)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("android.support.v4.media.session.IMediaSession");
            if (imediacontrollercallback == null)
            {
                break MISSING_BLOCK_LABEL_59;
            }
            IBinder ibinder = imediacontrollercallback.asBinder();
_L1:
            parcel.writeStrongBinder(ibinder);
            mRemote.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            ibinder = null;
              goto _L1
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        Stub.Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    public abstract void adjustVolume(int i, int j, String s)
        throws RemoteException;

    public abstract void fastForward()
        throws RemoteException;

    public abstract Bundle getExtras()
        throws RemoteException;

    public abstract long getFlags()
        throws RemoteException;

    public abstract PendingIntent getLaunchPendingIntent()
        throws RemoteException;

    public abstract MediaMetadataCompat getMetadata()
        throws RemoteException;

    public abstract String getPackageName()
        throws RemoteException;

    public abstract PlaybackStateCompat getPlaybackState()
        throws RemoteException;

    public abstract List getQueue()
        throws RemoteException;

    public abstract CharSequence getQueueTitle()
        throws RemoteException;

    public abstract int getRatingType()
        throws RemoteException;

    public abstract String getTag()
        throws RemoteException;

    public abstract ParcelableVolumeInfo getVolumeAttributes()
        throws RemoteException;

    public abstract boolean isTransportControlEnabled()
        throws RemoteException;

    public abstract void next()
        throws RemoteException;

    public abstract void pause()
        throws RemoteException;

    public abstract void play()
        throws RemoteException;

    public abstract void playFromMediaId(String s, Bundle bundle)
        throws RemoteException;

    public abstract void playFromSearch(String s, Bundle bundle)
        throws RemoteException;

    public abstract void previous()
        throws RemoteException;

    public abstract void rate(RatingCompat ratingcompat)
        throws RemoteException;

    public abstract void registerCallbackListener(IMediaControllerCallback imediacontrollercallback)
        throws RemoteException;

    public abstract void rewind()
        throws RemoteException;

    public abstract void seekTo(long l)
        throws RemoteException;

    public abstract void sendCommand(String s, Bundle bundle, MediaSessionCompat.ResultReceiverWrapper resultreceiverwrapper)
        throws RemoteException;

    public abstract void sendCustomAction(String s, Bundle bundle)
        throws RemoteException;

    public abstract boolean sendMediaButton(KeyEvent keyevent)
        throws RemoteException;

    public abstract void setVolumeTo(int i, int j, String s)
        throws RemoteException;

    public abstract void skipToQueueItem(long l)
        throws RemoteException;

    public abstract void stop()
        throws RemoteException;

    public abstract void unregisterCallbackListener(IMediaControllerCallback imediacontrollercallback)
        throws RemoteException;
}
