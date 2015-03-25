// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util.system;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Scanner;
import java.util.regex.MatchResult;
import org.andengine.util.StreamUtils;
import org.andengine.util.debug.Debug;

public class SystemUtils
{
    public static class SystemUtilsException extends Exception
    {

        private static final long serialVersionUID = 0x9b4bcad45f641fb4L;

        public SystemUtilsException()
        {
        }

        public SystemUtilsException(Throwable throwable)
        {
            super(throwable);
        }
    }


    private static final String BOGOMIPS_PATTERN = "BogoMIPS[\\s]*:[\\s]*(\\d+\\.\\d+)[\\s]*\n";
    private static final String MEMFREE_PATTERN = "MemFree[\\s]*:[\\s]*(\\d+)[\\s]*kB\n";
    private static final String MEMTOTAL_PATTERN = "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n";
    public static final boolean SDK_VERSION_ECLAIR_OR_LATER;
    public static final boolean SDK_VERSION_FROYO_OR_LATER;
    public static final boolean SDK_VERSION_GINGERBREAD_OR_LATER;
    public static final boolean SDK_VERSION_HONEYCOMB_OR_LATER;
    public static final boolean SDK_VERSION_ICE_CREAM_SANDWICH_OR_LATER;

    public SystemUtils()
    {
    }

    public static String getApkFilePath(Context context)
        throws android.content.pm.PackageManager.NameNotFoundException
    {
        return context.getPackageManager().getApplicationInfo(getPackageName(context), 0).sourceDir;
    }

    public static float getCPUBogoMips()
        throws SystemUtilsException
    {
        MatchResult matchresult = matchSystemFile("/proc/cpuinfo", "BogoMIPS[\\s]*:[\\s]*(\\d+\\.\\d+)[\\s]*\n", 1000);
        try
        {
            if (matchresult.groupCount() > 0)
            {
                return Float.parseFloat(matchresult.group(1));
            } else
            {
                throw new SystemUtilsException();
            }
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new SystemUtilsException(numberformatexception);
        }
    }

    public static int getCPUFrequencyCurrent()
        throws SystemUtilsException
    {
        return readSystemFileAsInt("/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq");
    }

    public static int getCPUFrequencyMax()
        throws SystemUtilsException
    {
        return readSystemFileAsInt("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq");
    }

    public static int getCPUFrequencyMaxScaling()
        throws SystemUtilsException
    {
        return readSystemFileAsInt("/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq");
    }

    public static int getCPUFrequencyMin()
        throws SystemUtilsException
    {
        return readSystemFileAsInt("/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq");
    }

    public static int getCPUFrequencyMinScaling()
        throws SystemUtilsException
    {
        return readSystemFileAsInt("/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq");
    }

    public static int getMemoryFree()
        throws SystemUtilsException
    {
        MatchResult matchresult = matchSystemFile("/proc/meminfo", "MemFree[\\s]*:[\\s]*(\\d+)[\\s]*kB\n", 1000);
        try
        {
            if (matchresult.groupCount() > 0)
            {
                return Integer.parseInt(matchresult.group(1));
            } else
            {
                throw new SystemUtilsException();
            }
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new SystemUtilsException(numberformatexception);
        }
    }

    public static int getMemoryTotal()
        throws SystemUtilsException
    {
        MatchResult matchresult = matchSystemFile("/proc/meminfo", "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n", 1000);
        try
        {
            if (matchresult.groupCount() > 0)
            {
                return Integer.parseInt(matchresult.group(1));
            } else
            {
                throw new SystemUtilsException();
            }
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new SystemUtilsException(numberformatexception);
        }
    }

    private static PackageInfo getPackageInfo(Context context)
    {
        PackageInfo packageinfo;
        try
        {
            packageinfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Debug.e(namenotfoundexception);
            return null;
        }
        return packageinfo;
    }

    public static String getPackageName(Context context)
    {
        return context.getPackageName();
    }

    public static int getPackageVersionCode(Context context)
    {
        return getPackageInfo(context).versionCode;
    }

    public static String getPackageVersionName(Context context)
    {
        return getPackageInfo(context).versionName;
    }

    public static boolean hasSystemFeature(Context context, String s)
    {
        Method method;
        boolean flag;
        try
        {
            method = android/content/pm/PackageManager.getMethod("hasSystemFeature", new Class[] {
                java/lang/String
            });
        }
        catch (Throwable throwable)
        {
            return false;
        }
        if (method == null)
        {
            return false;
        }
        flag = ((Boolean)method.invoke(context.getPackageManager(), new Object[] {
            s
        })).booleanValue();
        return flag;
    }

    public static boolean isAndroidVersion(int i, int j)
    {
        return android.os.Build.VERSION.SDK_INT >= i && android.os.Build.VERSION.SDK_INT <= j;
    }

    public static boolean isAndroidVersionOrHigher(int i)
    {
        return android.os.Build.VERSION.SDK_INT >= i;
    }

    public static boolean isAndroidVersionOrLower(int i)
    {
        return android.os.Build.VERSION.SDK_INT <= i;
    }

    public static boolean isGoogleTV(Context context)
    {
        return hasSystemFeature(context, "com.google.android.tv");
    }

    private static MatchResult matchSystemFile(String s, String s1, int i)
        throws SystemUtilsException
    {
        boolean flag;
        java.io.InputStream inputstream;
        flag = true;
        inputstream = null;
        Scanner scanner;
        inputstream = (new ProcessBuilder(new String[] {
            "/system/bin/cat", s
        })).start().getInputStream();
        scanner = new Scanner(inputstream);
        MatchResult matchresult;
        if (scanner.findWithinHorizon(s1, i) == null)
        {
            flag = false;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        matchresult = scanner.match();
        StreamUtils.close(inputstream);
        return matchresult;
        throw new SystemUtilsException();
        IOException ioexception;
        ioexception;
        throw new SystemUtilsException(ioexception);
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
    }

    private static int readSystemFileAsInt(String s)
        throws SystemUtilsException
    {
        java.io.InputStream inputstream = null;
        int i;
        inputstream = (new ProcessBuilder(new String[] {
            "/system/bin/cat", s
        })).start().getInputStream();
        i = Integer.parseInt(StreamUtils.readFully(inputstream));
        StreamUtils.close(inputstream);
        return i;
        IOException ioexception;
        ioexception;
        throw new SystemUtilsException(ioexception);
        Exception exception;
        exception;
        StreamUtils.close(inputstream);
        throw exception;
        NumberFormatException numberformatexception;
        numberformatexception;
        throw new SystemUtilsException(numberformatexception);
    }

    static 
    {
        boolean flag = true;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        boolean flag4;
        if (android.os.Build.VERSION.SDK_INT >= 5)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        SDK_VERSION_ECLAIR_OR_LATER = flag1;
        if (android.os.Build.VERSION.SDK_INT >= 8)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        SDK_VERSION_FROYO_OR_LATER = flag2;
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        SDK_VERSION_GINGERBREAD_OR_LATER = flag3;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            flag4 = flag;
        } else
        {
            flag4 = false;
        }
        SDK_VERSION_HONEYCOMB_OR_LATER = flag4;
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            flag = false;
        }
        SDK_VERSION_ICE_CREAM_SANDWICH_OR_LATER = flag;
    }
}
