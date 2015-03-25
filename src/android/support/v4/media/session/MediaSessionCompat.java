// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.media.session;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteCallbackList;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.SystemClock;
import android.support.v4.media.MediaDescriptionCompat;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.RatingCompat;
import android.support.v4.media.VolumeProviderCompat;
import android.text.TextUtils;
import android.view.KeyEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package android.support.v4.media.session:
//            MediaControllerCompat, PlaybackStateCompat, MediaSessionCompatApi21, MediaSessionCompatApi22, 
//            MediaSessionCompatApi14, IMediaControllerCallback, MediaSessionCompatApi18, MediaSessionCompatApi8, 
//            MediaSessionCompatApi19, ParcelableVolumeInfo

public class MediaSessionCompat
{
    public static abstract class Callback
    {

        final Object mCallbackObj;

        public void onCommand(String s, Bundle bundle, ResultReceiver resultreceiver)
        {
        }

        public void onCustomAction(String s, Bundle bundle)
        {
        }

        public void onFastForward()
        {
        }

        public boolean onMediaButtonEvent(Intent intent)
        {
            return false;
        }

        public void onPause()
        {
        }

        public void onPlay()
        {
        }

        public void onPlayFromMediaId(String s, Bundle bundle)
        {
        }

        public void onPlayFromSearch(String s, Bundle bundle)
        {
        }

        public void onRewind()
        {
        }

        public void onSeekTo(long l)
        {
        }

        public void onSetRating(RatingCompat ratingcompat)
        {
        }

        public void onSkipToNext()
        {
        }

        public void onSkipToPrevious()
        {
        }

        public void onSkipToQueueItem(long l)
        {
        }

        public void onStop()
        {
        }

        public Callback()
        {
            if (android.os.Build.VERSION.SDK_INT >= 21)
            {
                mCallbackObj = MediaSessionCompatApi21.createCallback(new StubApi21());
                return;
            } else
            {
                mCallbackObj = null;
                return;
            }
        }
    }

    private class Callback.StubApi21
        implements MediaSessionCompatApi21.Callback
    {

        final Callback this$0;

        public void onCommand(String s, Bundle bundle, ResultReceiver resultreceiver)
        {
            Callback.this.onCommand(s, bundle, resultreceiver);
        }

        public void onCustomAction(String s, Bundle bundle)
        {
            Callback.this.onCustomAction(s, bundle);
        }

        public void onFastForward()
        {
            Callback.this.onFastForward();
        }

        public boolean onMediaButtonEvent(Intent intent)
        {
            return Callback.this.onMediaButtonEvent(intent);
        }

        public void onPause()
        {
            Callback.this.onPause();
        }

        public void onPlay()
        {
            Callback.this.onPlay();
        }

        public void onPlayFromMediaId(String s, Bundle bundle)
        {
            Callback.this.onPlayFromMediaId(s, bundle);
        }

        public void onPlayFromSearch(String s, Bundle bundle)
        {
            Callback.this.onPlayFromSearch(s, bundle);
        }

        public void onRewind()
        {
            Callback.this.onRewind();
        }

        public void onSeekTo(long l)
        {
            Callback.this.onSeekTo(l);
        }

        public void onSetRating(Object obj)
        {
            Callback.this.onSetRating(RatingCompat.fromRating(obj));
        }

        public void onSkipToNext()
        {
            Callback.this.onSkipToNext();
        }

        public void onSkipToPrevious()
        {
            Callback.this.onSkipToPrevious();
        }

        public void onSkipToQueueItem(long l)
        {
            Callback.this.onSkipToQueueItem(l);
        }

        public void onStop()
        {
            Callback.this.onStop();
        }

        private Callback.StubApi21()
        {
            this$0 = Callback.this;
            super();
        }

    }

    static interface MediaSessionImpl
    {

        public abstract Object getMediaSession();

        public abstract Object getRemoteControlClient();

        public abstract Token getSessionToken();

        public abstract boolean isActive();

        public abstract void release();

        public abstract void sendSessionEvent(String s, Bundle bundle);

        public abstract void setActive(boolean flag);

        public abstract void setCallback(Callback callback, Handler handler);

        public abstract void setExtras(Bundle bundle);

        public abstract void setFlags(int i);

        public abstract void setMediaButtonReceiver(PendingIntent pendingintent);

        public abstract void setMetadata(MediaMetadataCompat mediametadatacompat);

        public abstract void setPlaybackState(PlaybackStateCompat playbackstatecompat);

        public abstract void setPlaybackToLocal(int i);

        public abstract void setPlaybackToRemote(VolumeProviderCompat volumeprovidercompat);

        public abstract void setQueue(List list);

        public abstract void setQueueTitle(CharSequence charsequence);

        public abstract void setRatingType(int i);

        public abstract void setSessionActivity(PendingIntent pendingintent);
    }

    static class MediaSessionImplApi21
        implements MediaSessionImpl
    {

        private PendingIntent mMediaButtonIntent;
        private final Object mSessionObj;
        private final Token mToken;

        public Object getMediaSession()
        {
            return mSessionObj;
        }

        public Object getRemoteControlClient()
        {
            return null;
        }

        public Token getSessionToken()
        {
            return mToken;
        }

        public boolean isActive()
        {
            return MediaSessionCompatApi21.isActive(mSessionObj);
        }

        public void release()
        {
            MediaSessionCompatApi21.release(mSessionObj);
        }

        public void sendSessionEvent(String s, Bundle bundle)
        {
            MediaSessionCompatApi21.sendSessionEvent(mSessionObj, s, bundle);
        }

        public void setActive(boolean flag)
        {
            MediaSessionCompatApi21.setActive(mSessionObj, flag);
        }

        public void setCallback(Callback callback, Handler handler)
        {
            MediaSessionCompatApi21.setCallback(mSessionObj, callback.mCallbackObj, handler);
        }

        public void setExtras(Bundle bundle)
        {
            MediaSessionCompatApi21.setExtras(mSessionObj, bundle);
        }

        public void setFlags(int i)
        {
            MediaSessionCompatApi21.setFlags(mSessionObj, i);
        }

        public void setMediaButtonReceiver(PendingIntent pendingintent)
        {
            mMediaButtonIntent = pendingintent;
            MediaSessionCompatApi21.setMediaButtonReceiver(mSessionObj, pendingintent);
        }

        public void setMetadata(MediaMetadataCompat mediametadatacompat)
        {
            MediaSessionCompatApi21.setMetadata(mSessionObj, mediametadatacompat.getMediaMetadata());
        }

        public void setPlaybackState(PlaybackStateCompat playbackstatecompat)
        {
            MediaSessionCompatApi21.setPlaybackState(mSessionObj, playbackstatecompat.getPlaybackState());
        }

        public void setPlaybackToLocal(int i)
        {
            MediaSessionCompatApi21.setPlaybackToLocal(mSessionObj, i);
        }

        public void setPlaybackToRemote(VolumeProviderCompat volumeprovidercompat)
        {
            MediaSessionCompatApi21.setPlaybackToRemote(mSessionObj, volumeprovidercompat.getVolumeProvider());
        }

        public void setQueue(List list)
        {
            ArrayList arraylist = null;
            if (list != null)
            {
                arraylist = new ArrayList();
                for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.add(((QueueItem)iterator.next()).getQueueItem())) { }
            }
            MediaSessionCompatApi21.setQueue(mSessionObj, arraylist);
        }

        public void setQueueTitle(CharSequence charsequence)
        {
            MediaSessionCompatApi21.setQueueTitle(mSessionObj, charsequence);
        }

        public void setRatingType(int i)
        {
            if (android.os.Build.VERSION.SDK_INT < 22)
            {
                return;
            } else
            {
                MediaSessionCompatApi22.setRatingType(mSessionObj, i);
                return;
            }
        }

        public void setSessionActivity(PendingIntent pendingintent)
        {
            MediaSessionCompatApi21.setSessionActivity(mSessionObj, pendingintent);
        }

        public MediaSessionImplApi21(Context context, String s)
        {
            mSessionObj = MediaSessionCompatApi21.createSession(context, s);
            mToken = new Token(MediaSessionCompatApi21.getSessionToken(mSessionObj));
        }

        public MediaSessionImplApi21(Object obj)
        {
            mSessionObj = MediaSessionCompatApi21.verifySession(obj);
            mToken = new Token(MediaSessionCompatApi21.getSessionToken(mSessionObj));
        }
    }

    static class MediaSessionImplBase
        implements MediaSessionImpl
    {

        private final AudioManager mAudioManager;
        private Callback mCallback;
        private final ComponentName mComponentName;
        private final Context mContext;
        private final RemoteCallbackList mControllerCallbacks = new RemoteCallbackList();
        private boolean mDestroyed;
        private Bundle mExtras;
        private int mFlags;
        private final MessageHandler mHandler = new MessageHandler(Looper.myLooper());
        private boolean mIsActive;
        private boolean mIsMbrRegistered;
        private boolean mIsRccRegistered;
        private int mLocalStream;
        private final Object mLock = new Object();
        private final PendingIntent mMediaButtonEventReceiver;
        private MediaMetadataCompat mMetadata;
        private final String mPackageName;
        private List mQueue;
        private CharSequence mQueueTitle;
        private int mRatingType;
        private final Object mRccObj;
        private PendingIntent mSessionActivity;
        private PlaybackStateCompat mState;
        private final MediaSessionStub mStub = new MediaSessionStub();
        private final String mTag;
        private final Token mToken;
        private android.support.v4.media.VolumeProviderCompat.Callback mVolumeCallback;
        private VolumeProviderCompat mVolumeProvider;
        private int mVolumeType;

        private void adjustVolume(int i, int j)
        {
            if (mVolumeType == 2)
            {
                if (mVolumeProvider != null)
                {
                    mVolumeProvider.onAdjustVolume(i);
                }
                return;
            } else
            {
                mAudioManager.adjustStreamVolume(i, mLocalStream, j);
                return;
            }
        }

        private PlaybackStateCompat getStateWithUpdatedPosition()
        {
            long l;
            PlaybackStateCompat playbackstatecompat;
            PlaybackStateCompat playbackstatecompat1;
            l = -1L;
            synchronized (mLock)
            {
                playbackstatecompat = mState;
                if (mMetadata != null && mMetadata.containsKey("android.media.metadata.DURATION"))
                {
                    l = mMetadata.getLong("android.media.metadata.DURATION");
                }
            }
            playbackstatecompat1 = null;
            if (playbackstatecompat == null) goto _L2; else goto _L1
_L1:
            if (playbackstatecompat.getState() == 3 || playbackstatecompat.getState() == 4) goto _L4; else goto _L3
_L3:
            int j;
            j = playbackstatecompat.getState();
            playbackstatecompat1 = null;
            if (j != 5) goto _L2; else goto _L4
_L4:
            long l1;
            long l2;
            int i;
            l1 = playbackstatecompat.getLastPositionUpdateTime();
            l2 = SystemClock.elapsedRealtime();
            i = l1 != 0L;
            playbackstatecompat1 = null;
            if (i <= 0) goto _L2; else goto _L5
_L5:
            long l3 = (long)(playbackstatecompat.getPlaybackSpeed() * (float)(l2 - l1)) + playbackstatecompat.getPosition();
            if (l < 0L || l3 <= l) goto _L7; else goto _L6
_L6:
            l3 = l;
_L9:
            PlaybackStateCompat.Builder builder = new PlaybackStateCompat.Builder(playbackstatecompat);
            builder.setState(playbackstatecompat.getState(), l3, playbackstatecompat.getPlaybackSpeed(), l2);
            playbackstatecompat1 = builder.build();
_L2:
            if (playbackstatecompat1 == null)
            {
                return playbackstatecompat;
            } else
            {
                return playbackstatecompat1;
            }
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
_L7:
            if (l3 < 0L)
            {
                l3 = 0L;
            }
            if (true) goto _L9; else goto _L8
_L8:
        }

        private void sendEvent(String s, Bundle bundle)
        {
            int i = -1 + mControllerCallbacks.beginBroadcast();
            while (i >= 0) 
            {
                IMediaControllerCallback imediacontrollercallback = (IMediaControllerCallback)mControllerCallbacks.getBroadcastItem(i);
                try
                {
                    imediacontrollercallback.onEvent(s, bundle);
                }
                catch (RemoteException remoteexception) { }
                i--;
            }
            mControllerCallbacks.finishBroadcast();
        }

        private void sendMetadata(MediaMetadataCompat mediametadatacompat)
        {
            int i = -1 + mControllerCallbacks.beginBroadcast();
            while (i >= 0) 
            {
                IMediaControllerCallback imediacontrollercallback = (IMediaControllerCallback)mControllerCallbacks.getBroadcastItem(i);
                try
                {
                    imediacontrollercallback.onMetadataChanged(mediametadatacompat);
                }
                catch (RemoteException remoteexception) { }
                i--;
            }
            mControllerCallbacks.finishBroadcast();
        }

        private void sendQueue(List list)
        {
            int i = -1 + mControllerCallbacks.beginBroadcast();
            while (i >= 0) 
            {
                IMediaControllerCallback imediacontrollercallback = (IMediaControllerCallback)mControllerCallbacks.getBroadcastItem(i);
                try
                {
                    imediacontrollercallback.onQueueChanged(list);
                }
                catch (RemoteException remoteexception) { }
                i--;
            }
            mControllerCallbacks.finishBroadcast();
        }

        private void sendQueueTitle(CharSequence charsequence)
        {
            int i = -1 + mControllerCallbacks.beginBroadcast();
            while (i >= 0) 
            {
                IMediaControllerCallback imediacontrollercallback = (IMediaControllerCallback)mControllerCallbacks.getBroadcastItem(i);
                try
                {
                    imediacontrollercallback.onQueueTitleChanged(charsequence);
                }
                catch (RemoteException remoteexception) { }
                i--;
            }
            mControllerCallbacks.finishBroadcast();
        }

        private void sendSessionDestroyed()
        {
            int i = -1 + mControllerCallbacks.beginBroadcast();
            while (i >= 0) 
            {
                IMediaControllerCallback imediacontrollercallback = (IMediaControllerCallback)mControllerCallbacks.getBroadcastItem(i);
                try
                {
                    imediacontrollercallback.onSessionDestroyed();
                }
                catch (RemoteException remoteexception) { }
                i--;
            }
            mControllerCallbacks.finishBroadcast();
            mControllerCallbacks.kill();
        }

        private void sendState(PlaybackStateCompat playbackstatecompat)
        {
            int i = -1 + mControllerCallbacks.beginBroadcast();
            while (i >= 0) 
            {
                IMediaControllerCallback imediacontrollercallback = (IMediaControllerCallback)mControllerCallbacks.getBroadcastItem(i);
                try
                {
                    imediacontrollercallback.onPlaybackStateChanged(playbackstatecompat);
                }
                catch (RemoteException remoteexception) { }
                i--;
            }
            mControllerCallbacks.finishBroadcast();
        }

        private void sendVolumeInfoChanged(ParcelableVolumeInfo parcelablevolumeinfo)
        {
            int i = -1 + mControllerCallbacks.beginBroadcast();
            while (i >= 0) 
            {
                IMediaControllerCallback imediacontrollercallback = (IMediaControllerCallback)mControllerCallbacks.getBroadcastItem(i);
                try
                {
                    imediacontrollercallback.onVolumeInfoChanged(parcelablevolumeinfo);
                }
                catch (RemoteException remoteexception) { }
                i--;
            }
            mControllerCallbacks.finishBroadcast();
        }

        private void setVolumeTo(int i, int j)
        {
            if (mVolumeType == 2)
            {
                if (mVolumeProvider != null)
                {
                    mVolumeProvider.onSetVolumeTo(i);
                }
                return;
            } else
            {
                mAudioManager.setStreamVolume(mLocalStream, i, j);
                return;
            }
        }

        private boolean update()
        {
            if (!mIsActive) goto _L2; else goto _L1
_L1:
            if (android.os.Build.VERSION.SDK_INT < 8) goto _L4; else goto _L3
_L3:
            if (mIsMbrRegistered || (1 & mFlags) == 0) goto _L6; else goto _L5
_L5:
            boolean flag1;
            int i;
            if (android.os.Build.VERSION.SDK_INT >= 18)
            {
                MediaSessionCompatApi18.registerMediaButtonEventReceiver(mContext, mMediaButtonEventReceiver);
            } else
            {
                MediaSessionCompatApi8.registerMediaButtonEventReceiver(mContext, mComponentName);
            }
            mIsMbrRegistered = true;
_L4:
            i = android.os.Build.VERSION.SDK_INT;
            flag1 = false;
            if (i < 14) goto _L8; else goto _L7
_L7:
            if (mIsRccRegistered || (2 & mFlags) == 0) goto _L10; else goto _L9
_L9:
            MediaSessionCompatApi14.registerRemoteControlClient(mContext, mRccObj);
            mIsRccRegistered = true;
            flag1 = true;
_L8:
            return flag1;
_L6:
            if (mIsMbrRegistered && (1 & mFlags) == 0)
            {
                if (android.os.Build.VERSION.SDK_INT >= 18)
                {
                    MediaSessionCompatApi18.unregisterMediaButtonEventReceiver(mContext, mMediaButtonEventReceiver);
                } else
                {
                    MediaSessionCompatApi8.unregisterMediaButtonEventReceiver(mContext, mComponentName);
                }
                mIsMbrRegistered = false;
            }
            continue; /* Loop/switch isn't completed */
_L10:
            boolean flag2;
            flag2 = mIsRccRegistered;
            flag1 = false;
            if (!flag2) goto _L8; else goto _L11
_L11:
            int j;
            j = 2 & mFlags;
            flag1 = false;
            if (j != 0) goto _L8; else goto _L12
_L12:
            MediaSessionCompatApi14.unregisterRemoteControlClient(mContext, mRccObj);
            mIsRccRegistered = false;
            return false;
_L2:
            if (mIsMbrRegistered)
            {
                boolean flag;
                if (android.os.Build.VERSION.SDK_INT >= 18)
                {
                    MediaSessionCompatApi18.unregisterMediaButtonEventReceiver(mContext, mMediaButtonEventReceiver);
                } else
                {
                    MediaSessionCompatApi8.unregisterMediaButtonEventReceiver(mContext, mComponentName);
                }
                mIsMbrRegistered = false;
            }
            flag = mIsRccRegistered;
            flag1 = false;
            if (!flag) goto _L8; else goto _L13
_L13:
            MediaSessionCompatApi14.unregisterRemoteControlClient(mContext, mRccObj);
            mIsRccRegistered = false;
            return false;
            if (true) goto _L4; else goto _L14
_L14:
        }

        public Object getMediaSession()
        {
            return null;
        }

        public Object getRemoteControlClient()
        {
            return mRccObj;
        }

        public Token getSessionToken()
        {
            return mToken;
        }

        public boolean isActive()
        {
            return mIsActive;
        }

        public void release()
        {
            mIsActive = false;
            mDestroyed = true;
            update();
            sendSessionDestroyed();
        }

        public void sendSessionEvent(String s, Bundle bundle)
        {
            sendEvent(s, bundle);
        }

        public void setActive(boolean flag)
        {
            if (flag != mIsActive)
            {
                mIsActive = flag;
                if (update())
                {
                    setMetadata(mMetadata);
                    setPlaybackState(mState);
                    return;
                }
            }
        }

        public void setCallback(Callback callback, Handler handler)
        {
            if (callback == mCallback)
            {
                return;
            }
            if (callback != null && android.os.Build.VERSION.SDK_INT >= 18) goto _L2; else goto _L1
_L1:
            if (android.os.Build.VERSION.SDK_INT >= 18)
            {
                MediaSessionCompatApi18.setOnPlaybackPositionUpdateListener(mRccObj, null);
            }
            if (android.os.Build.VERSION.SDK_INT >= 19)
            {
                MediaSessionCompatApi19.setOnMetadataUpdateListener(mRccObj, null);
            }
_L4:
            mCallback = callback;
            return;
_L2:
            if (handler == null)
            {
                new Handler();
            }
            MediaSessionCompatApi14.Callback callback1 = callback. new MediaSessionCompatApi14.Callback() {

                final MediaSessionImplBase this$0;
                final Callback val$callback;

                public void onCommand(String s, Bundle bundle, ResultReceiver resultreceiver)
                {
                    callback.onCommand(s, bundle, resultreceiver);
                }

                public void onFastForward()
                {
                    callback.onFastForward();
                }

                public boolean onMediaButtonEvent(Intent intent)
                {
                    return callback.onMediaButtonEvent(intent);
                }

                public void onPause()
                {
                    callback.onPause();
                }

                public void onPlay()
                {
                    callback.onPlay();
                }

                public void onRewind()
                {
                    callback.onRewind();
                }

                public void onSeekTo(long l)
                {
                    callback.onSeekTo(l);
                }

                public void onSetRating(Object obj)
                {
                    callback.onSetRating(RatingCompat.fromRating(obj));
                }

                public void onSkipToNext()
                {
                    callback.onSkipToNext();
                }

                public void onSkipToPrevious()
                {
                    callback.onSkipToPrevious();
                }

                public void onStop()
                {
                    callback.onStop();
                }

            
            {
                this$0 = final_mediasessionimplbase;
                callback = Callback.this;
                super();
            }
            };
            if (android.os.Build.VERSION.SDK_INT >= 18)
            {
                Object obj1 = MediaSessionCompatApi18.createPlaybackPositionUpdateListener(callback1);
                MediaSessionCompatApi18.setOnPlaybackPositionUpdateListener(mRccObj, obj1);
            }
            if (android.os.Build.VERSION.SDK_INT >= 19)
            {
                Object obj = MediaSessionCompatApi19.createMetadataUpdateListener(callback1);
                MediaSessionCompatApi19.setOnMetadataUpdateListener(mRccObj, obj);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public void setExtras(Bundle bundle)
        {
            mExtras = bundle;
        }

        public void setFlags(int i)
        {
            synchronized (mLock)
            {
                mFlags = i;
            }
            update();
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void setMediaButtonReceiver(PendingIntent pendingintent)
        {
        }

        public void setMetadata(MediaMetadataCompat mediametadatacompat)
        {
            synchronized (mLock)
            {
                mMetadata = mediametadatacompat;
            }
            sendMetadata(mediametadatacompat);
            if (mIsActive)
            {
                if (android.os.Build.VERSION.SDK_INT >= 19)
                {
                    boolean flag;
                    Object obj2;
                    Bundle bundle1;
                    if (mState != null && (128L & mState.getActions()) != 0L)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    obj2 = mRccObj;
                    bundle1 = null;
                    if (mediametadatacompat != null)
                    {
                        bundle1 = mediametadatacompat.getBundle();
                    }
                    MediaSessionCompatApi19.setMetadata(obj2, bundle1, flag);
                    return;
                }
                if (android.os.Build.VERSION.SDK_INT >= 14)
                {
                    Object obj1 = mRccObj;
                    Bundle bundle = null;
                    if (mediametadatacompat != null)
                    {
                        bundle = mediametadatacompat.getBundle();
                    }
                    MediaSessionCompatApi14.setMetadata(obj1, bundle);
                    return;
                }
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void setPlaybackState(PlaybackStateCompat playbackstatecompat)
        {
            synchronized (mLock)
            {
                mState = playbackstatecompat;
            }
            sendState(playbackstatecompat);
            if (mIsActive) goto _L2; else goto _L1
_L1:
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
_L2:
            if (playbackstatecompat != null)
            {
                break; /* Loop/switch isn't completed */
            }
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                MediaSessionCompatApi14.setState(mRccObj, 0);
                return;
            }
            if (true) goto _L1; else goto _L3
_L3:
            if (android.os.Build.VERSION.SDK_INT >= 18)
            {
                MediaSessionCompatApi18.setState(mRccObj, playbackstatecompat.getState(), playbackstatecompat.getPosition(), playbackstatecompat.getPlaybackSpeed(), playbackstatecompat.getLastPositionUpdateTime());
                return;
            }
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                MediaSessionCompatApi14.setState(mRccObj, playbackstatecompat.getState());
                return;
            }
            if (true) goto _L1; else goto _L4
_L4:
        }

        public void setPlaybackToLocal(int i)
        {
            if (mVolumeProvider != null)
            {
                mVolumeProvider.setCallback(null);
            }
            mVolumeType = 1;
            sendVolumeInfoChanged(new ParcelableVolumeInfo(mVolumeType, mLocalStream, 2, mAudioManager.getStreamMaxVolume(mLocalStream), mAudioManager.getStreamVolume(mLocalStream)));
        }

        public void setPlaybackToRemote(VolumeProviderCompat volumeprovidercompat)
        {
            if (volumeprovidercompat == null)
            {
                throw new IllegalArgumentException("volumeProvider may not be null");
            }
            if (mVolumeProvider != null)
            {
                mVolumeProvider.setCallback(null);
            }
            mVolumeType = 2;
            mVolumeProvider = volumeprovidercompat;
            sendVolumeInfoChanged(new ParcelableVolumeInfo(mVolumeType, mLocalStream, mVolumeProvider.getVolumeControl(), mVolumeProvider.getMaxVolume(), mVolumeProvider.getCurrentVolume()));
            volumeprovidercompat.setCallback(mVolumeCallback);
        }

        public void setQueue(List list)
        {
            mQueue = list;
            sendQueue(list);
        }

        public void setQueueTitle(CharSequence charsequence)
        {
            mQueueTitle = charsequence;
            sendQueueTitle(charsequence);
        }

        public void setRatingType(int i)
        {
            mRatingType = i;
        }

        public void setSessionActivity(PendingIntent pendingintent)
        {
            synchronized (mLock)
            {
                mSessionActivity = pendingintent;
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }























        public MediaSessionImplBase(Context context, String s, ComponentName componentname, PendingIntent pendingintent)
        {
            mDestroyed = false;
            mIsActive = false;
            mIsRccRegistered = false;
            mIsMbrRegistered = false;
            mVolumeCallback = new _cls1();
            if (componentname == null)
            {
                throw new IllegalArgumentException("MediaButtonReceiver component may not be null.");
            }
            if (pendingintent == null)
            {
                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                intent.setComponent(componentname);
                pendingintent = PendingIntent.getBroadcast(context, 0, intent, 0);
            }
            mContext = context;
            mPackageName = context.getPackageName();
            mAudioManager = (AudioManager)context.getSystemService("audio");
            mTag = s;
            mComponentName = componentname;
            mMediaButtonEventReceiver = pendingintent;
            mToken = new Token(mStub);
            mRatingType = 0;
            mVolumeType = 1;
            mLocalStream = 3;
            if (android.os.Build.VERSION.SDK_INT >= 14)
            {
                mRccObj = MediaSessionCompatApi14.createRemoteControlClient(pendingintent);
                return;
            } else
            {
                mRccObj = null;
                return;
            }
        }
    }

    private static final class MediaSessionImplBase.Command
    {

        public final String command;
        public final Bundle extras;
        public final ResultReceiver stub;

        public MediaSessionImplBase.Command(String s, Bundle bundle, ResultReceiver resultreceiver)
        {
            command = s;
            extras = bundle;
            stub = resultreceiver;
        }
    }

    class MediaSessionImplBase.MediaSessionStub extends IMediaSession.Stub
    {

        final MediaSessionImplBase this$0;

        public void adjustVolume(int i, int j, String s)
        {
            MediaSessionImplBase.this.adjustVolume(i, j);
        }

        public void fastForward()
            throws RemoteException
        {
            mHandler.post(9);
        }

        public Bundle getExtras()
        {
            Bundle bundle;
            synchronized (mLock)
            {
                bundle = mExtras;
            }
            return bundle;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public long getFlags()
        {
            long l;
            synchronized (mLock)
            {
                l = mFlags;
            }
            return l;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public PendingIntent getLaunchPendingIntent()
        {
            PendingIntent pendingintent;
            synchronized (mLock)
            {
                pendingintent = mSessionActivity;
            }
            return pendingintent;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public MediaMetadataCompat getMetadata()
        {
            return mMetadata;
        }

        public String getPackageName()
        {
            return mPackageName;
        }

        public PlaybackStateCompat getPlaybackState()
        {
            return getStateWithUpdatedPosition();
        }

        public List getQueue()
        {
            List list;
            synchronized (mLock)
            {
                list = mQueue;
            }
            return list;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public CharSequence getQueueTitle()
        {
            return mQueueTitle;
        }

        public int getRatingType()
        {
            return mRatingType;
        }

        public String getTag()
        {
            return mTag;
        }

        public ParcelableVolumeInfo getVolumeAttributes()
        {
            Object obj = mLock;
            obj;
            JVM INSTR monitorenter ;
            int i;
            int j;
            VolumeProviderCompat volumeprovidercompat;
            i = mVolumeType;
            j = mLocalStream;
            volumeprovidercompat = mVolumeProvider;
            if (i != 2) goto _L2; else goto _L1
_L1:
            int k;
            int l;
            int i1;
            k = volumeprovidercompat.getVolumeControl();
            l = volumeprovidercompat.getMaxVolume();
            i1 = volumeprovidercompat.getCurrentVolume();
_L3:
            obj;
            JVM INSTR monitorexit ;
            return new ParcelableVolumeInfo(i, j, k, l, i1);
_L2:
            k = 2;
            l = mAudioManager.getStreamMaxVolume(j);
            i1 = mAudioManager.getStreamVolume(j);
              goto _L3
            Exception exception;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public boolean isTransportControlEnabled()
        {
            return (2 & mFlags) != 0;
        }

        public void next()
            throws RemoteException
        {
            mHandler.post(7);
        }

        public void pause()
            throws RemoteException
        {
            mHandler.post(5);
        }

        public void play()
            throws RemoteException
        {
            mHandler.post(1);
        }

        public void playFromMediaId(String s, Bundle bundle)
            throws RemoteException
        {
            mHandler.post(2, s, bundle);
        }

        public void playFromSearch(String s, Bundle bundle)
            throws RemoteException
        {
            mHandler.post(3, s, bundle);
        }

        public void previous()
            throws RemoteException
        {
            mHandler.post(8);
        }

        public void rate(RatingCompat ratingcompat)
            throws RemoteException
        {
            mHandler.post(12, ratingcompat);
        }

        public void registerCallbackListener(IMediaControllerCallback imediacontrollercallback)
        {
            if (mDestroyed)
            {
                try
                {
                    imediacontrollercallback.onSessionDestroyed();
                    return;
                }
                catch (Exception exception)
                {
                    return;
                }
            } else
            {
                mControllerCallbacks.register(imediacontrollercallback);
                return;
            }
        }

        public void rewind()
            throws RemoteException
        {
            mHandler.post(10);
        }

        public void seekTo(long l)
            throws RemoteException
        {
            mHandler.post(11, Long.valueOf(l));
        }

        public void sendCommand(String s, Bundle bundle, ResultReceiverWrapper resultreceiverwrapper)
        {
            mHandler.post(15, new MediaSessionImplBase.Command(s, bundle, resultreceiverwrapper.mResultReceiver));
        }

        public void sendCustomAction(String s, Bundle bundle)
            throws RemoteException
        {
            mHandler.post(13, s, bundle);
        }

        public boolean sendMediaButton(KeyEvent keyevent)
        {
            boolean flag;
            if ((1 & mFlags) != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                mHandler.post(14, keyevent);
            }
            return flag;
        }

        public void setVolumeTo(int i, int j, String s)
        {
            MediaSessionImplBase.this.setVolumeTo(i, j);
        }

        public void skipToQueueItem(long l)
        {
            mHandler.post(4, Long.valueOf(l));
        }

        public void stop()
            throws RemoteException
        {
            mHandler.post(6);
        }

        public void unregisterCallbackListener(IMediaControllerCallback imediacontrollercallback)
        {
            mControllerCallbacks.unregister(imediacontrollercallback);
        }

        MediaSessionImplBase.MediaSessionStub()
        {
            this$0 = MediaSessionImplBase.this;
            super();
        }
    }

    private class MediaSessionImplBase.MessageHandler extends Handler
    {

        private static final int MSG_ADJUST_VOLUME = 16;
        private static final int MSG_COMMAND = 15;
        private static final int MSG_CUSTOM_ACTION = 13;
        private static final int MSG_FAST_FORWARD = 9;
        private static final int MSG_MEDIA_BUTTON = 14;
        private static final int MSG_NEXT = 7;
        private static final int MSG_PAUSE = 5;
        private static final int MSG_PLAY = 1;
        private static final int MSG_PLAY_MEDIA_ID = 2;
        private static final int MSG_PLAY_SEARCH = 3;
        private static final int MSG_PREVIOUS = 8;
        private static final int MSG_RATE = 12;
        private static final int MSG_REWIND = 10;
        private static final int MSG_SEEK_TO = 11;
        private static final int MSG_SET_VOLUME = 17;
        private static final int MSG_SKIP_TO_ITEM = 4;
        private static final int MSG_STOP = 6;
        final MediaSessionImplBase this$0;

        public void handleMessage(Message message)
        {
            if (mCallback == null)
            {
                return;
            }
            switch (message.what)
            {
            default:
                return;

            case 1: // '\001'
                mCallback.onPlay();
                return;

            case 2: // '\002'
                mCallback.onPlayFromMediaId((String)message.obj, message.getData());
                return;

            case 3: // '\003'
                mCallback.onPlayFromSearch((String)message.obj, message.getData());
                return;

            case 4: // '\004'
                mCallback.onSkipToQueueItem(((Long)message.obj).longValue());
                return;

            case 5: // '\005'
                mCallback.onPause();
                return;

            case 6: // '\006'
                mCallback.onStop();
                return;

            case 7: // '\007'
                mCallback.onSkipToNext();
                return;

            case 8: // '\b'
                mCallback.onSkipToPrevious();
                return;

            case 9: // '\t'
                mCallback.onFastForward();
                return;

            case 10: // '\n'
                mCallback.onRewind();
                return;

            case 11: // '\013'
                mCallback.onSeekTo(((Long)message.obj).longValue());
                return;

            case 12: // '\f'
                mCallback.onSetRating((RatingCompat)message.obj);
                return;

            case 13: // '\r'
                mCallback.onCustomAction((String)message.obj, message.getData());
                return;

            case 14: // '\016'
                mCallback.onMediaButtonEvent((Intent)message.obj);
                return;

            case 15: // '\017'
                MediaSessionImplBase.Command command = (MediaSessionImplBase.Command)message.obj;
                mCallback.onCommand(command.command, command.extras, command.stub);
                return;

            case 16: // '\020'
                adjustVolume(((Integer)message.obj).intValue(), 0);
                return;

            case 17: // '\021'
                setVolumeTo(((Integer)message.obj).intValue(), 0);
                break;
            }
        }

        public void post(int i)
        {
            post(i, null);
        }

        public void post(int i, Object obj)
        {
            obtainMessage(i, obj).sendToTarget();
        }

        public void post(int i, Object obj, int j)
        {
            obtainMessage(i, j, 0, obj).sendToTarget();
        }

        public void post(int i, Object obj, Bundle bundle)
        {
            Message message = obtainMessage(i, obj);
            message.setData(bundle);
            message.sendToTarget();
        }

        public MediaSessionImplBase.MessageHandler(Looper looper)
        {
            this$0 = MediaSessionImplBase.this;
            super(looper);
        }
    }

    public static interface OnActiveChangeListener
    {

        public abstract void onActiveChanged();
    }

    public static final class QueueItem
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public QueueItem createFromParcel(Parcel parcel)
            {
                return new QueueItem(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public QueueItem[] newArray(int i)
            {
                return new QueueItem[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        public static final int UNKNOWN_ID = -1;
        private final MediaDescriptionCompat mDescription;
        private final long mId;
        private Object mItem;

        public static QueueItem obtain(Object obj)
        {
            return new QueueItem(obj, MediaDescriptionCompat.fromMediaDescription(MediaSessionCompatApi21.QueueItem.getDescription(obj)), MediaSessionCompatApi21.QueueItem.getQueueId(obj));
        }

        public int describeContents()
        {
            return 0;
        }

        public MediaDescriptionCompat getDescription()
        {
            return mDescription;
        }

        public long getQueueId()
        {
            return mId;
        }

        public Object getQueueItem()
        {
            if (mItem != null || android.os.Build.VERSION.SDK_INT < 21)
            {
                return mItem;
            } else
            {
                mItem = MediaSessionCompatApi21.QueueItem.createItem(mDescription.getMediaDescription(), mId);
                return mItem;
            }
        }

        public String toString()
        {
            return (new StringBuilder()).append("MediaSession.QueueItem {Description=").append(mDescription).append(", Id=").append(mId).append(" }").toString();
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            mDescription.writeToParcel(parcel, i);
            parcel.writeLong(mId);
        }


        private QueueItem(Parcel parcel)
        {
            mDescription = (MediaDescriptionCompat)MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
            mId = parcel.readLong();
        }


        public QueueItem(MediaDescriptionCompat mediadescriptioncompat, long l)
        {
            this(null, mediadescriptioncompat, l);
        }

        private QueueItem(Object obj, MediaDescriptionCompat mediadescriptioncompat, long l)
        {
            if (mediadescriptioncompat == null)
            {
                throw new IllegalArgumentException("Description cannot be null.");
            }
            if (l == -1L)
            {
                throw new IllegalArgumentException("Id cannot be QueueItem.UNKNOWN_ID");
            } else
            {
                mDescription = mediadescriptioncompat;
                mId = l;
                mItem = obj;
                return;
            }
        }
    }

    static final class ResultReceiverWrapper
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public ResultReceiverWrapper createFromParcel(Parcel parcel)
            {
                return new ResultReceiverWrapper(parcel);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public ResultReceiverWrapper[] newArray(int i)
            {
                return new ResultReceiverWrapper[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        private ResultReceiver mResultReceiver;

        public int describeContents()
        {
            return 0;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            mResultReceiver.writeToParcel(parcel, i);
        }



        ResultReceiverWrapper(Parcel parcel)
        {
            mResultReceiver = (ResultReceiver)ResultReceiver.CREATOR.createFromParcel(parcel);
        }

        public ResultReceiverWrapper(ResultReceiver resultreceiver)
        {
            mResultReceiver = resultreceiver;
        }
    }

    public static final class Token
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public Token createFromParcel(Parcel parcel)
            {
                Object obj;
                if (android.os.Build.VERSION.SDK_INT >= 21)
                {
                    obj = parcel.readParcelable(null);
                } else
                {
                    obj = parcel.readStrongBinder();
                }
                return new Token(obj);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public Token[] newArray(int i)
            {
                return new Token[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        private final Object mInner;

        public static Token fromToken(Object obj)
        {
            if (obj == null || android.os.Build.VERSION.SDK_INT < 21)
            {
                return null;
            } else
            {
                return new Token(MediaSessionCompatApi21.verifyToken(obj));
            }
        }

        public int describeContents()
        {
            return 0;
        }

        public Object getToken()
        {
            return mInner;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            if (android.os.Build.VERSION.SDK_INT >= 21)
            {
                parcel.writeParcelable((Parcelable)mInner, i);
                return;
            } else
            {
                parcel.writeStrongBinder((IBinder)mInner);
                return;
            }
        }


        Token(Object obj)
        {
            mInner = obj;
        }
    }


    public static final int FLAG_HANDLES_MEDIA_BUTTONS = 1;
    public static final int FLAG_HANDLES_TRANSPORT_CONTROLS = 2;
    private final ArrayList mActiveListeners;
    private final MediaControllerCompat mController;
    private final MediaSessionImpl mImpl;

    private MediaSessionCompat(Context context, MediaSessionImpl mediasessionimpl)
    {
        mActiveListeners = new ArrayList();
        mImpl = mediasessionimpl;
        mController = new MediaControllerCompat(context, this);
    }

    public MediaSessionCompat(Context context, String s, ComponentName componentname, PendingIntent pendingintent)
    {
        mActiveListeners = new ArrayList();
        if (context == null)
        {
            throw new IllegalArgumentException("context must not be null");
        }
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException("tag must not be null or empty");
        }
        if (android.os.Build.VERSION.SDK_INT >= 21)
        {
            mImpl = new MediaSessionImplApi21(context, s);
            mImpl.setMediaButtonReceiver(pendingintent);
        } else
        {
            mImpl = new MediaSessionImplBase(context, s, componentname, pendingintent);
        }
        mController = new MediaControllerCompat(context, this);
    }

    public static MediaSessionCompat obtain(Context context, Object obj)
    {
        return new MediaSessionCompat(context, new MediaSessionImplApi21(obj));
    }

    public void addOnActiveChangeListener(OnActiveChangeListener onactivechangelistener)
    {
        if (onactivechangelistener == null)
        {
            throw new IllegalArgumentException("Listener may not be null");
        } else
        {
            mActiveListeners.add(onactivechangelistener);
            return;
        }
    }

    public MediaControllerCompat getController()
    {
        return mController;
    }

    public Object getMediaSession()
    {
        return mImpl.getMediaSession();
    }

    public Object getRemoteControlClient()
    {
        return mImpl.getRemoteControlClient();
    }

    public Token getSessionToken()
    {
        return mImpl.getSessionToken();
    }

    public boolean isActive()
    {
        return mImpl.isActive();
    }

    public void release()
    {
        mImpl.release();
    }

    public void removeOnActiveChangeListener(OnActiveChangeListener onactivechangelistener)
    {
        if (onactivechangelistener == null)
        {
            throw new IllegalArgumentException("Listener may not be null");
        } else
        {
            mActiveListeners.remove(onactivechangelistener);
            return;
        }
    }

    public void sendSessionEvent(String s, Bundle bundle)
    {
        if (TextUtils.isEmpty(s))
        {
            throw new IllegalArgumentException("event cannot be null or empty");
        } else
        {
            mImpl.sendSessionEvent(s, bundle);
            return;
        }
    }

    public void setActive(boolean flag)
    {
        mImpl.setActive(flag);
        for (Iterator iterator = mActiveListeners.iterator(); iterator.hasNext(); ((OnActiveChangeListener)iterator.next()).onActiveChanged()) { }
    }

    public void setCallback(Callback callback)
    {
        setCallback(callback, null);
    }

    public void setCallback(Callback callback, Handler handler)
    {
        MediaSessionImpl mediasessionimpl = mImpl;
        if (handler == null)
        {
            handler = new Handler();
        }
        mediasessionimpl.setCallback(callback, handler);
    }

    public void setExtras(Bundle bundle)
    {
        mImpl.setExtras(bundle);
    }

    public void setFlags(int i)
    {
        mImpl.setFlags(i);
    }

    public void setMediaButtonReceiver(PendingIntent pendingintent)
    {
        mImpl.setMediaButtonReceiver(pendingintent);
    }

    public void setMetadata(MediaMetadataCompat mediametadatacompat)
    {
        mImpl.setMetadata(mediametadatacompat);
    }

    public void setPlaybackState(PlaybackStateCompat playbackstatecompat)
    {
        mImpl.setPlaybackState(playbackstatecompat);
    }

    public void setPlaybackToLocal(int i)
    {
        mImpl.setPlaybackToLocal(i);
    }

    public void setPlaybackToRemote(VolumeProviderCompat volumeprovidercompat)
    {
        if (volumeprovidercompat == null)
        {
            throw new IllegalArgumentException("volumeProvider may not be null!");
        } else
        {
            mImpl.setPlaybackToRemote(volumeprovidercompat);
            return;
        }
    }

    public void setQueue(List list)
    {
        mImpl.setQueue(list);
    }

    public void setQueueTitle(CharSequence charsequence)
    {
        mImpl.setQueueTitle(charsequence);
    }

    public void setRatingType(int i)
    {
        mImpl.setRatingType(i);
    }

    public void setSessionActivity(PendingIntent pendingintent)
    {
        mImpl.setSessionActivity(pendingintent);
    }

    // Unreferenced inner class android/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$1

/* anonymous class */
    class MediaSessionImplBase._cls1 extends android.support.v4.media.VolumeProviderCompat.Callback
    {

        final MediaSessionImplBase this$0;

        public void onVolumeChanged(VolumeProviderCompat volumeprovidercompat)
        {
            if (mVolumeProvider != volumeprovidercompat)
            {
                return;
            } else
            {
                ParcelableVolumeInfo parcelablevolumeinfo = new ParcelableVolumeInfo(mVolumeType, mLocalStream, volumeprovidercompat.getVolumeControl(), volumeprovidercompat.getMaxVolume(), volumeprovidercompat.getCurrentVolume());
                sendVolumeInfoChanged(parcelablevolumeinfo);
                return;
            }
        }

            
            {
                this$0 = MediaSessionImplBase.this;
                super();
            }
    }

}
