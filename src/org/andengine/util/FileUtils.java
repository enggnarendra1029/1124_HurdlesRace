// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package org.andengine.util:
//            StreamUtils

public class FileUtils
{

    public FileUtils()
    {
    }

    public static void copyFile(File file, File file1)
        throws IOException
    {
        Object obj;
        Object obj1;
        obj = null;
        obj1 = null;
        FileInputStream fileinputstream = new FileInputStream(file);
        FileOutputStream fileoutputstream = new FileOutputStream(file1);
        StreamUtils.copy(fileinputstream, fileoutputstream);
        StreamUtils.close(fileinputstream);
        StreamUtils.close(fileoutputstream);
        return;
        Exception exception;
        exception;
_L2:
        StreamUtils.close(((java.io.Closeable) (obj)));
        StreamUtils.close(((java.io.Closeable) (obj1)));
        throw exception;
        exception;
        obj = fileinputstream;
        obj1 = null;
        continue; /* Loop/switch isn't completed */
        exception;
        obj1 = fileoutputstream;
        obj = fileinputstream;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void copyToExternalStorage(Context context, int i, String s)
        throws FileNotFoundException
    {
        copyToExternalStorage(context, context.getResources().openRawResource(i), s);
    }

    public static void copyToExternalStorage(Context context, InputStream inputstream, String s)
        throws FileNotFoundException
    {
        if (isExternalStorageWriteable())
        {
            StreamUtils.copyAndClose(inputstream, new FileOutputStream(getAbsolutePathOnExternalStorage(context, s)));
            return;
        } else
        {
            throw new IllegalStateException("External Storage is not writeable.");
        }
    }

    public static void copyToExternalStorage(Context context, String s, String s1)
        throws IOException
    {
        copyToExternalStorage(context, context.getAssets().open(s), s1);
    }

    public static void copyToExternalStorage(InputStream inputstream, String s)
        throws FileNotFoundException
    {
        if (isExternalStorageWriteable())
        {
            StreamUtils.copyAndClose(inputstream, new FileOutputStream(getAbsolutePathOnExternalStorage(s)));
            return;
        } else
        {
            throw new IllegalStateException("External Storage is not writeable.");
        }
    }

    public static void copyToInternalStorage(Context context, int i, String s)
        throws FileNotFoundException
    {
        copyToInternalStorage(context, context.getResources().openRawResource(i), s);
    }

    private static void copyToInternalStorage(Context context, InputStream inputstream, String s)
        throws FileNotFoundException
    {
        StreamUtils.copyAndClose(inputstream, new FileOutputStream(new File(context.getFilesDir(), s)));
    }

    public static void copyToInternalStorage(Context context, String s, String s1)
        throws IOException
    {
        copyToInternalStorage(context, context.getAssets().open(s), s1);
    }

    public static boolean deleteDirectory(File file)
    {
        if (!file.isDirectory()) goto _L2; else goto _L1
_L1:
        String as[];
        int i;
        int j;
        as = file.list();
        i = as.length;
        j = 0;
_L5:
        if (j < i) goto _L3; else goto _L2
_L2:
        return file.delete();
_L3:
        if (!deleteDirectory(new File(file, as[j])))
        {
            return false;
        }
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static boolean ensureDirectoriesExistOnExternalStorage(Context context, String s)
    {
        if (isDirectoryExistingOnExternalStorage(context, s))
        {
            return true;
        }
        if (isExternalStorageWriteable())
        {
            return (new File(getAbsolutePathOnExternalStorage(context, s))).mkdirs();
        } else
        {
            throw new IllegalStateException("External Storage is not writeable.");
        }
    }

    public static String getAbsolutePathOnExternalStorage(Context context, String s)
    {
        return (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/Android/data/").append(context.getApplicationInfo().packageName).append("/files/").append(s).toString();
    }

    public static String getAbsolutePathOnExternalStorage(String s)
    {
        return (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(s).toString();
    }

    public static String getAbsolutePathOnInternalStorage(Context context, String s)
    {
        return (new StringBuilder(String.valueOf(context.getFilesDir().getAbsolutePath()))).append(s).toString();
    }

    public static String[] getDirectoryListOnExternalStorage(Context context, String s)
    {
        return (new File(getAbsolutePathOnExternalStorage(context, s))).list();
    }

    public static String[] getDirectoryListOnExternalStorage(Context context, String s, FilenameFilter filenamefilter)
    {
        return (new File(getAbsolutePathOnExternalStorage(context, s))).list(filenamefilter);
    }

    public static boolean isDirectoryExistingOnExternalStorage(Context context, String s)
    {
        if (isExternalStorageReadable())
        {
            File file = new File(getAbsolutePathOnExternalStorage(context, s));
            return file.exists() && file.isDirectory();
        } else
        {
            throw new IllegalStateException("External Storage is not readable.");
        }
    }

    public static boolean isExternalStorageReadable()
    {
        String s = Environment.getExternalStorageState();
        return s.equals("mounted") || s.equals("mounted_ro");
    }

    public static boolean isExternalStorageWriteable()
    {
        return Environment.getExternalStorageState().equals("mounted");
    }

    public static boolean isFileExistingOnExternalStorage(Context context, String s)
    {
        if (isExternalStorageReadable())
        {
            File file = new File(getAbsolutePathOnExternalStorage(context, s));
            return file.exists() && file.isFile();
        } else
        {
            throw new IllegalStateException("External Storage is not readable.");
        }
    }

    public static boolean isFileExistingOnExternalStorage(String s)
    {
        if (isExternalStorageReadable())
        {
            File file = new File(getAbsolutePathOnExternalStorage(s));
            return file.exists() && file.isFile();
        } else
        {
            throw new IllegalStateException("External Storage is not readable.");
        }
    }

    public static InputStream openOnExternalStorage(Context context, String s)
        throws FileNotFoundException
    {
        return new FileInputStream(getAbsolutePathOnExternalStorage(context, s));
    }

    public static InputStream openOnExternalStorage(String s)
        throws FileNotFoundException
    {
        return new FileInputStream(getAbsolutePathOnExternalStorage(s));
    }
}
