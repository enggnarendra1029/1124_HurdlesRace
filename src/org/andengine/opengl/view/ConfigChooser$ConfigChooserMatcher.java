// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.view;


// Referenced classes of package org.andengine.opengl.view:
//            ConfigChooser

public static abstract class <init> extends Enum
{

    public static final ENUM.VALUES ANY;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES LOOSE_DEPTH_AND_STENCIL;
    public static final ENUM.VALUES LOOSE_STENCIL;
    public static final ENUM.VALUES STRICT;

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(org/andengine/opengl/view/ConfigChooser$ConfigChooserMatcher, s);
    }

    public static <init>[] values()
    {
        <init> a_3C_init>[] = ENUM$VALUES;
        int i = a_3C_init>.length;
        <init> a_3C_init>1[] = new ENUM.VALUES[i];
        System.arraycopy(a_3C_init>, 0, a_3C_init>1, 0, i);
        return a_3C_init>1;
    }

    public abstract boolean matches(int i, int j, int k, int l, int i1, int j1);

    static 
    {
        STRICT = new ConfigChooser.ConfigChooserMatcher("STRICT", 0) {

            public boolean matches(int i, int j, int k, int l, int i1, int j1)
            {
                return i1 == 0 && j1 == 0 && i == 5 && j == 6 && k == 5 && l == 0;
            }

        };
        LOOSE_STENCIL = new ConfigChooser.ConfigChooserMatcher("LOOSE_STENCIL", 1) {

            public boolean matches(int i, int j, int k, int l, int i1, int j1)
            {
                return i1 == 0 && j1 >= 0 && i == 5 && j == 6 && k == 5 && l == 0;
            }

        };
        LOOSE_DEPTH_AND_STENCIL = new ConfigChooser.ConfigChooserMatcher("LOOSE_DEPTH_AND_STENCIL", 2) {

            public boolean matches(int i, int j, int k, int l, int i1, int j1)
            {
                return i1 >= 0 && j1 >= 0 && i == 5 && j == 6 && k == 5 && l == 0;
            }

        };
        ANY = new ConfigChooser.ConfigChooserMatcher("ANY", 3) {

            public boolean matches(int i, int j, int k, int l, int i1, int j1)
            {
                return true;
            }

        };
        ENUM.VALUES avalues[] = new _cls4[4];
        avalues[0] = STRICT;
        avalues[1] = LOOSE_STENCIL;
        avalues[2] = LOOSE_DEPTH_AND_STENCIL;
        avalues[3] = ANY;
        ENUM$VALUES = avalues;
    }

    private _cls4(String s, int i)
    {
        super(s, i);
    }

    _cls4(String s, int i, _cls4 _pcls4)
    {
        this(s, i);
    }
}
