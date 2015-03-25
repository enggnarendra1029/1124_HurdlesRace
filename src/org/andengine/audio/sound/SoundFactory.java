// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.audio.sound;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.media.SoundPool;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;

// Referenced classes of package org.andengine.audio.sound:
//            Sound, SoundManager

public class SoundFactory
{

    private static String sAssetBasePath = "";

    public SoundFactory()
    {
    }

    public static Sound createSoundFromAsset(SoundManager soundmanager, Context context, String s)
        throws IOException
    {
        soundmanager;
        JVM INSTR monitorenter ;
        Sound sound;
        sound = new Sound(soundmanager, soundmanager.getSoundPool().load(context.getAssets().openFd((new StringBuilder(String.valueOf(sAssetBasePath))).append(s).toString()), 1));
        soundmanager.add(sound);
        soundmanager;
        JVM INSTR monitorexit ;
        return sound;
        Exception exception;
        exception;
        soundmanager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static Sound createSoundFromAssetFileDescriptor(SoundManager soundmanager, AssetFileDescriptor assetfiledescriptor)
    {
        soundmanager;
        JVM INSTR monitorenter ;
        Sound sound;
        sound = new Sound(soundmanager, soundmanager.getSoundPool().load(assetfiledescriptor, 1));
        soundmanager.add(sound);
        soundmanager;
        JVM INSTR monitorexit ;
        return sound;
        Exception exception;
        exception;
        soundmanager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static Sound createSoundFromFile(SoundManager soundmanager, File file)
    {
        return createSoundFromPath(soundmanager, file.getAbsolutePath());
    }

    public static Sound createSoundFromFileDescriptor(SoundManager soundmanager, FileDescriptor filedescriptor, long l, long l1)
    {
        soundmanager;
        JVM INSTR monitorenter ;
        Sound sound;
        sound = new Sound(soundmanager, soundmanager.getSoundPool().load(filedescriptor, l, l1, 1));
        soundmanager.add(sound);
        soundmanager;
        JVM INSTR monitorexit ;
        return sound;
        Exception exception;
        exception;
        soundmanager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static Sound createSoundFromPath(SoundManager soundmanager, String s)
    {
        soundmanager;
        JVM INSTR monitorenter ;
        Sound sound;
        sound = new Sound(soundmanager, soundmanager.getSoundPool().load(s, 1));
        soundmanager.add(sound);
        soundmanager;
        JVM INSTR monitorexit ;
        return sound;
        Exception exception;
        exception;
        soundmanager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static Sound createSoundFromResource(SoundManager soundmanager, Context context, int i)
    {
        soundmanager;
        JVM INSTR monitorenter ;
        Sound sound;
        sound = new Sound(soundmanager, soundmanager.getSoundPool().load(context, i, 1));
        soundmanager.add(sound);
        soundmanager;
        JVM INSTR monitorexit ;
        return sound;
        Exception exception;
        exception;
        soundmanager;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String getAssetBasePath()
    {
        return sAssetBasePath;
    }

    public static void onCreate()
    {
        setAssetBasePath("");
    }

    public static void setAssetBasePath(String s)
    {
        if (s.endsWith("/") || s.length() == 0)
        {
            sAssetBasePath = s;
            return;
        } else
        {
            throw new IllegalStateException("pAssetBasePath must end with '/' or be lenght zero.");
        }
    }

}
