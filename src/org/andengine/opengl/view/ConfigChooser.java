// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.view;

import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLDisplay;

public class ConfigChooser
    implements android.opengl.GLSurfaceView.EGLConfigChooser
{
    public static abstract class ConfigChooserMatcher extends Enum
    {

        public static final ConfigChooserMatcher ANY;
        private static final ConfigChooserMatcher ENUM$VALUES[];
        public static final ConfigChooserMatcher LOOSE_DEPTH_AND_STENCIL;
        public static final ConfigChooserMatcher LOOSE_STENCIL;
        public static final ConfigChooserMatcher STRICT;

        public static ConfigChooserMatcher valueOf(String s)
        {
            return (ConfigChooserMatcher)Enum.valueOf(org/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher, s);
        }

        public static ConfigChooserMatcher[] values()
        {
            ConfigChooserMatcher aconfigchoosermatcher[] = ENUM$VALUES;
            int i = aconfigchoosermatcher.length;
            ConfigChooserMatcher aconfigchoosermatcher1[] = new ConfigChooserMatcher[i];
            System.arraycopy(aconfigchoosermatcher, 0, aconfigchoosermatcher1, 0, i);
            return aconfigchoosermatcher1;
        }

        public abstract boolean matches(int i, int j, int k, int l, int i1, int j1);

        static 
        {
            STRICT = new ConfigChooserMatcher("STRICT", 0) {

                public boolean matches(int i, int j, int k, int l, int i1, int j1)
                {
                    return i1 == 0 && j1 == 0 && i == 5 && j == 6 && k == 5 && l == 0;
                }

            };
            LOOSE_STENCIL = new ConfigChooserMatcher("LOOSE_STENCIL", 1) {

                public boolean matches(int i, int j, int k, int l, int i1, int j1)
                {
                    return i1 == 0 && j1 >= 0 && i == 5 && j == 6 && k == 5 && l == 0;
                }

            };
            LOOSE_DEPTH_AND_STENCIL = new ConfigChooserMatcher("LOOSE_DEPTH_AND_STENCIL", 2) {

                public boolean matches(int i, int j, int k, int l, int i1, int j1)
                {
                    return i1 >= 0 && j1 >= 0 && i == 5 && j == 6 && k == 5 && l == 0;
                }

            };
            ANY = new ConfigChooserMatcher("ANY", 3) {

                public boolean matches(int i, int j, int k, int l, int i1, int j1)
                {
                    return true;
                }

            };
            ConfigChooserMatcher aconfigchoosermatcher[] = new ConfigChooserMatcher[4];
            aconfigchoosermatcher[0] = STRICT;
            aconfigchoosermatcher[1] = LOOSE_STENCIL;
            aconfigchoosermatcher[2] = LOOSE_DEPTH_AND_STENCIL;
            aconfigchoosermatcher[3] = ANY;
            ENUM$VALUES = aconfigchoosermatcher;
        }

        private ConfigChooserMatcher(String s, int i)
        {
            super(s, i);
        }

        ConfigChooserMatcher(String s, int i, ConfigChooserMatcher configchoosermatcher)
        {
            this(s, i);
        }
    }


    private static final int ALPHA_SIZE = 0;
    private static final int BLUE_SIZE = 5;
    private static final int BUFFER[] = new int[1];
    private static final int DEPTH_SIZE = 0;
    private static final int EGLCONFIG_ATTRIBUTES_COVERAGEMULTISAMPLE_NVIDIA[];
    private static final int EGLCONFIG_ATTRIBUTES_FALLBACK[];
    private static final int EGLCONFIG_ATTRIBUTES_MULTISAMPLE[];
    private static final int EGL_COVERAGE_BUFFERS_NV = 12512;
    private static final int EGL_COVERAGE_SAMPLES_NV = 12513;
    private static final int EGL_GLES2_BIT = 4;
    private static final int GREEN_SIZE = 6;
    private static final int MULTISAMPLE_COUNT = 2;
    private static final int RED_SIZE = 5;
    private static final int STENCIL_SIZE;
    private int mAlphaSize;
    private int mBlueSize;
    private boolean mCoverageMultiSampling;
    private int mDepthSize;
    private int mGreenSize;
    private boolean mMultiSampling;
    private final boolean mMultiSamplingRequested;
    private int mRedSize;
    private int mStencilSize;

    public ConfigChooser(boolean flag)
    {
        mRedSize = -1;
        mGreenSize = -1;
        mBlueSize = -1;
        mAlphaSize = -1;
        mDepthSize = -1;
        mStencilSize = -1;
        mMultiSamplingRequested = flag;
    }

    private EGLConfig chooseConfig(EGL10 egl10, EGLDisplay egldisplay, ConfigChooserMatcher configchoosermatcher)
        throws IllegalArgumentException
    {
        BUFFER[0] = 0;
        if (mMultiSamplingRequested)
        {
            int j = getEGLConfigCount(egl10, egldisplay, EGLCONFIG_ATTRIBUTES_MULTISAMPLE);
            if (j > 0)
            {
                mMultiSampling = true;
                return findEGLConfig(egl10, egldisplay, EGLCONFIG_ATTRIBUTES_MULTISAMPLE, j, configchoosermatcher);
            }
            int k = getEGLConfigCount(egl10, egldisplay, EGLCONFIG_ATTRIBUTES_COVERAGEMULTISAMPLE_NVIDIA);
            if (k > 0)
            {
                mCoverageMultiSampling = true;
                return findEGLConfig(egl10, egldisplay, EGLCONFIG_ATTRIBUTES_COVERAGEMULTISAMPLE_NVIDIA, k, configchoosermatcher);
            }
        }
        int i = getEGLConfigCount(egl10, egldisplay, EGLCONFIG_ATTRIBUTES_FALLBACK);
        if (i > 0)
        {
            return findEGLConfig(egl10, egldisplay, EGLCONFIG_ATTRIBUTES_FALLBACK, i, configchoosermatcher);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("No ")).append(javax/microedition/khronos/egl/EGLConfig.getSimpleName()).append(" found!").toString());
        }
    }

    private EGLConfig findEGLConfig(EGL10 egl10, EGLDisplay egldisplay, int ai[], int i, ConfigChooserMatcher configchoosermatcher)
    {
        EGLConfig aeglconfig[] = new EGLConfig[i];
        if (!egl10.eglChooseConfig(egldisplay, ai, aeglconfig, i, BUFFER))
        {
            throw new IllegalArgumentException("findEGLConfig failed!");
        } else
        {
            return findEGLConfig(egl10, egldisplay, aeglconfig, configchoosermatcher);
        }
    }

    private EGLConfig findEGLConfig(EGL10 egl10, EGLDisplay egldisplay, EGLConfig aeglconfig[], ConfigChooserMatcher configchoosermatcher)
    {
        int i = 0;
        do
        {
            if (i >= aeglconfig.length)
            {
                throw new IllegalArgumentException("No EGLConfig found!");
            }
            EGLConfig eglconfig = aeglconfig[i];
            if (eglconfig != null)
            {
                int j = getConfigAttrib(egl10, egldisplay, eglconfig, 12324, 0);
                int k = getConfigAttrib(egl10, egldisplay, eglconfig, 12323, 0);
                int l = getConfigAttrib(egl10, egldisplay, eglconfig, 12322, 0);
                int i1 = getConfigAttrib(egl10, egldisplay, eglconfig, 12321, 0);
                int j1 = getConfigAttrib(egl10, egldisplay, eglconfig, 12325, 0);
                int k1 = getConfigAttrib(egl10, egldisplay, eglconfig, 12326, 0);
                if (configchoosermatcher.matches(j, k, l, i1, j1, k1))
                {
                    mRedSize = j;
                    mGreenSize = k;
                    mBlueSize = l;
                    mAlphaSize = i1;
                    mDepthSize = j1;
                    mStencilSize = k1;
                    return eglconfig;
                }
            }
            i++;
        } while (true);
    }

    private static int getConfigAttrib(EGL10 egl10, EGLDisplay egldisplay, EGLConfig eglconfig, int i, int j)
    {
        if (egl10.eglGetConfigAttrib(egldisplay, eglconfig, i, BUFFER))
        {
            j = BUFFER[0];
        }
        return j;
    }

    private static int getEGLConfigCount(EGL10 egl10, EGLDisplay egldisplay, int ai[])
    {
        if (!egl10.eglChooseConfig(egldisplay, ai, null, 0, BUFFER))
        {
            throw new IllegalArgumentException("EGLCONFIG_FALLBACK failed!");
        } else
        {
            return BUFFER[0];
        }
    }

    public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay egldisplay)
    {
        EGLConfig eglconfig2;
        try
        {
            eglconfig2 = chooseConfig(egl10, egldisplay, ConfigChooserMatcher.STRICT);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            EGLConfig eglconfig1;
            try
            {
                eglconfig1 = chooseConfig(egl10, egldisplay, ConfigChooserMatcher.LOOSE_STENCIL);
            }
            catch (IllegalArgumentException illegalargumentexception1)
            {
                EGLConfig eglconfig;
                try
                {
                    eglconfig = chooseConfig(egl10, egldisplay, ConfigChooserMatcher.LOOSE_DEPTH_AND_STENCIL);
                }
                catch (IllegalArgumentException illegalargumentexception2)
                {
                    return chooseConfig(egl10, egldisplay, ConfigChooserMatcher.ANY);
                }
                return eglconfig;
            }
            return eglconfig1;
        }
        return eglconfig2;
    }

    public int getAlphaSize()
    {
        return mAlphaSize;
    }

    public int getBlueSize()
    {
        return mBlueSize;
    }

    public int getDepthSize()
    {
        return mDepthSize;
    }

    public int getGreenSize()
    {
        return mGreenSize;
    }

    public int getRedSize()
    {
        return mRedSize;
    }

    public int getStencilSize()
    {
        return mStencilSize;
    }

    public boolean isCoverageMultiSampling()
    {
        return mCoverageMultiSampling;
    }

    public boolean isMultiSampling()
    {
        return mMultiSampling;
    }

    static 
    {
        int ai[] = new int[19];
        ai[0] = 12324;
        ai[1] = 5;
        ai[2] = 12323;
        ai[3] = 6;
        ai[4] = 12322;
        ai[5] = 5;
        ai[6] = 12321;
        ai[8] = 12325;
        ai[10] = 12326;
        ai[12] = 12352;
        ai[13] = 4;
        ai[14] = 12338;
        ai[15] = 1;
        ai[16] = 12337;
        ai[17] = 2;
        ai[18] = 12344;
        EGLCONFIG_ATTRIBUTES_MULTISAMPLE = ai;
        int ai1[] = new int[19];
        ai1[0] = 12324;
        ai1[1] = 5;
        ai1[2] = 12323;
        ai1[3] = 6;
        ai1[4] = 12322;
        ai1[5] = 5;
        ai1[6] = 12321;
        ai1[8] = 12325;
        ai1[10] = 12326;
        ai1[12] = 12352;
        ai1[13] = 4;
        ai1[14] = 12512;
        ai1[15] = 1;
        ai1[16] = 12513;
        ai1[17] = 2;
        ai1[18] = 12344;
        EGLCONFIG_ATTRIBUTES_COVERAGEMULTISAMPLE_NVIDIA = ai1;
        int ai2[] = new int[15];
        ai2[0] = 12324;
        ai2[1] = 5;
        ai2[2] = 12323;
        ai2[3] = 6;
        ai2[4] = 12322;
        ai2[5] = 5;
        ai2[6] = 12321;
        ai2[8] = 12325;
        ai2[10] = 12326;
        ai2[12] = 12352;
        ai2[13] = 4;
        ai2[14] = 12344;
        EGLCONFIG_ATTRIBUTES_FALLBACK = ai2;
    }
}
