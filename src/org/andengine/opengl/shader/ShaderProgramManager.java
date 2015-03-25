// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.opengl.shader;

import java.util.ArrayList;
import org.andengine.util.debug.Debug;

// Referenced classes of package org.andengine.opengl.shader:
//            ShaderProgram, PositionColorTextureCoordinatesShaderProgram, PositionTextureCoordinatesShaderProgram, PositionTextureCoordinatesUniformColorShaderProgram, 
//            PositionColorShaderProgram, PositionTextureCoordinatesTextureSelectShaderProgram, PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram

public class ShaderProgramManager
{

    private final ArrayList mShaderProgramsManaged = new ArrayList();

    public ShaderProgramManager()
    {
    }

    public void loadShaderProgram(ShaderProgram shaderprogram)
    {
        this;
        JVM INSTR monitorenter ;
        if (shaderprogram != null)
        {
            break MISSING_BLOCK_LABEL_21;
        }
        throw new IllegalArgumentException("pShaderProgram must not be null!");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (shaderprogram.isCompiled())
        {
            Debug.w((new StringBuilder("Loading an already compiled ")).append(org/andengine/opengl/shader/ShaderProgram.getSimpleName()).append(": '").append(shaderprogram.getClass().getSimpleName()).append("'. '").append(shaderprogram.getClass().getSimpleName()).append("' will be recompiled.").toString());
            shaderprogram.setCompiled(false);
        }
        if (!mShaderProgramsManaged.contains(shaderprogram))
        {
            break MISSING_BLOCK_LABEL_148;
        }
        Debug.w((new StringBuilder("Loading an already loaded ")).append(org/andengine/opengl/shader/ShaderProgram.getSimpleName()).append(": '").append(shaderprogram.getClass().getSimpleName()).append("'.").toString());
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        mShaderProgramsManaged.add(shaderprogram);
          goto _L1
    }

    public transient void loadShaderPrograms(ShaderProgram ashaderprogram[])
    {
        int i = -1 + ashaderprogram.length;
        do
        {
            if (i < 0)
            {
                return;
            }
            loadShaderProgram(ashaderprogram[i]);
            i--;
        } while (true);
    }

    public void onCreate()
    {
        this;
        JVM INSTR monitorenter ;
        loadShaderProgram(PositionColorTextureCoordinatesShaderProgram.getInstance());
        loadShaderProgram(PositionTextureCoordinatesShaderProgram.getInstance());
        loadShaderProgram(PositionTextureCoordinatesUniformColorShaderProgram.getInstance());
        loadShaderProgram(PositionColorShaderProgram.getInstance());
        loadShaderProgram(PositionTextureCoordinatesTextureSelectShaderProgram.getInstance());
        loadShaderProgram(PositionTextureCoordinatesPositionInterpolationTextureSelectShaderProgram.getInstance());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onDestroy()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        int i;
        arraylist = mShaderProgramsManaged;
        i = -1 + arraylist.size();
_L2:
        if (i >= 0)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        mShaderProgramsManaged.clear();
        this;
        JVM INSTR monitorexit ;
        return;
        ((ShaderProgram)arraylist.get(i)).setCompiled(false);
        i--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void onReload()
    {
        this;
        JVM INSTR monitorenter ;
        ArrayList arraylist;
        int i;
        arraylist = mShaderProgramsManaged;
        i = arraylist.size();
        int j = i - 1;
_L2:
        if (j < 0)
        {
            return;
        }
        ((ShaderProgram)arraylist.get(j)).setCompiled(false);
        j--;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }
}
