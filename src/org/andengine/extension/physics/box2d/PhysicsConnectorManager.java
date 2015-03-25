// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d;

import com.badlogic.gdx.physics.box2d.Body;
import java.util.ArrayList;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.entity.shape.IShape;

// Referenced classes of package org.andengine.extension.physics.box2d:
//            PhysicsConnector

public class PhysicsConnectorManager extends ArrayList
    implements IUpdateHandler
{

    private static final long serialVersionUID = 0x5bb2994d7a3b7a7L;

    PhysicsConnectorManager()
    {
    }

    public Body findBodyByShape(IShape ishape)
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return null;
            }
            PhysicsConnector physicsconnector = (PhysicsConnector)get(i);
            if (physicsconnector.mShape == ishape)
            {
                return physicsconnector.mBody;
            }
            i--;
        } while (true);
    }

    public PhysicsConnector findPhysicsConnectorByShape(IShape ishape)
    {
        int i = -1 + size();
_L6:
        if (i >= 0) goto _L2; else goto _L1
_L1:
        PhysicsConnector physicsconnector = null;
_L4:
        return physicsconnector;
_L2:
        physicsconnector = (PhysicsConnector)get(i);
        if (physicsconnector.mShape == ishape) goto _L4; else goto _L3
_L3:
        i--;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onUpdate(float f)
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return;
            }
            ((PhysicsConnector)get(i)).onUpdate(f);
            i--;
        } while (true);
    }

    public void reset()
    {
        int i = -1 + size();
        do
        {
            if (i < 0)
            {
                return;
            }
            ((PhysicsConnector)get(i)).reset();
            i--;
        } while (true);
    }
}
