// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.andengine.extension.physics.box2d;

import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.BodyDef;
import com.badlogic.gdx.physics.box2d.ChainShape;
import com.badlogic.gdx.physics.box2d.CircleShape;
import com.badlogic.gdx.physics.box2d.EdgeShape;
import com.badlogic.gdx.physics.box2d.Filter;
import com.badlogic.gdx.physics.box2d.FixtureDef;
import com.badlogic.gdx.physics.box2d.PolygonShape;
import java.util.List;
import org.andengine.entity.primitive.Line;
import org.andengine.entity.shape.IAreaShape;
import org.andengine.entity.shape.IShape;
import org.andengine.util.math.MathUtils;

// Referenced classes of package org.andengine.extension.physics.box2d:
//            PhysicsWorld

public class PhysicsFactory
{

    public PhysicsFactory()
    {
    }

    public static Body createBoxBody(PhysicsWorld physicsworld, float f, float f1, float f2, float f3, float f4, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef)
    {
        return createBoxBody(physicsworld, f, f1, f2, f3, f4, bodytype, fixturedef, 32F);
    }

    public static Body createBoxBody(PhysicsWorld physicsworld, float f, float f1, float f2, float f3, float f4, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, 
            float f5)
    {
        BodyDef bodydef = new BodyDef();
        bodydef.type = bodytype;
        bodydef.position.x = f / f5;
        bodydef.position.y = f1 / f5;
        Body body = physicsworld.createBody(bodydef);
        PolygonShape polygonshape = new PolygonShape();
        polygonshape.setAsBox((0.5F * f2) / f5, (0.5F * f3) / f5);
        fixturedef.shape = polygonshape;
        body.createFixture(fixturedef);
        polygonshape.dispose();
        body.setTransform(body.getWorldCenter(), MathUtils.degToRad(f4));
        return body;
    }

    public static Body createBoxBody(PhysicsWorld physicsworld, float f, float f1, float f2, float f3, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef)
    {
        return createBoxBody(physicsworld, f, f1, f2, f3, 0.0F, bodytype, fixturedef, 32F);
    }

    public static Body createBoxBody(PhysicsWorld physicsworld, float f, float f1, float f2, float f3, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f4)
    {
        return createBoxBody(physicsworld, f, f1, f2, f3, 0.0F, bodytype, fixturedef, f4);
    }

    public static Body createBoxBody(PhysicsWorld physicsworld, IAreaShape iareashape, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef)
    {
        return createBoxBody(physicsworld, iareashape, bodytype, fixturedef, 32F);
    }

    public static Body createBoxBody(PhysicsWorld physicsworld, IAreaShape iareashape, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f)
    {
        float af[] = iareashape.getSceneCenterCoordinates();
        return createBoxBody(physicsworld, af[0], af[1], iareashape.getWidthScaled(), iareashape.getHeightScaled(), iareashape.getRotation(), bodytype, fixturedef, f);
    }

    public static Body createChainBody(PhysicsWorld physicsworld, float f, float f1, Vector2 avector2[], float f2, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f3)
    {
        BodyDef bodydef = new BodyDef();
        bodydef.type = bodytype;
        bodydef.position.x = f / f3;
        bodydef.position.y = f1 / f3;
        bodydef.angle = MathUtils.degToRad(f2);
        Body body = physicsworld.createBody(bodydef);
        ChainShape chainshape = new ChainShape();
        fixturedef.shape = chainshape;
        chainshape.createChain(avector2);
        body.createFixture(fixturedef);
        chainshape.dispose();
        return body;
    }

    public static Body createChainBody(PhysicsWorld physicsworld, Vector2 avector2[], com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f)
    {
        return createChainBody(physicsworld, 0.0F, 0.0F, avector2, 0.0F, bodytype, fixturedef, f);
    }

    public static Body createCircleBody(PhysicsWorld physicsworld, float f, float f1, float f2, float f3, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef)
    {
        return createCircleBody(physicsworld, f, f1, f2, f3, bodytype, fixturedef, 32F);
    }

    public static Body createCircleBody(PhysicsWorld physicsworld, float f, float f1, float f2, float f3, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f4)
    {
        BodyDef bodydef = new BodyDef();
        bodydef.type = bodytype;
        bodydef.position.x = f / f4;
        bodydef.position.y = f1 / f4;
        bodydef.angle = MathUtils.degToRad(f3);
        Body body = physicsworld.createBody(bodydef);
        CircleShape circleshape = new CircleShape();
        fixturedef.shape = circleshape;
        circleshape.setRadius(f2 / f4);
        body.createFixture(fixturedef);
        circleshape.dispose();
        return body;
    }

    public static Body createCircleBody(PhysicsWorld physicsworld, float f, float f1, float f2, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef)
    {
        return createCircleBody(physicsworld, f, f1, f2, 0.0F, bodytype, fixturedef, 32F);
    }

    public static Body createCircleBody(PhysicsWorld physicsworld, float f, float f1, float f2, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f3)
    {
        return createCircleBody(physicsworld, f, f1, f2, 0.0F, bodytype, fixturedef, f3);
    }

    public static Body createCircleBody(PhysicsWorld physicsworld, IAreaShape iareashape, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef)
    {
        return createCircleBody(physicsworld, iareashape, bodytype, fixturedef, 32F);
    }

    public static Body createCircleBody(PhysicsWorld physicsworld, IAreaShape iareashape, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f)
    {
        float af[] = iareashape.getSceneCenterCoordinates();
        return createCircleBody(physicsworld, af[0], af[1], 0.5F * iareashape.getWidthScaled(), iareashape.getRotation(), bodytype, fixturedef, f);
    }

    public static Body createEdgeBody(PhysicsWorld physicsworld, float f, float f1, Vector2 vector2, Vector2 vector2_1, float f2, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, 
            float f3)
    {
        BodyDef bodydef = new BodyDef();
        bodydef.type = bodytype;
        bodydef.position.x = f / f3;
        bodydef.position.y = f1 / f3;
        bodydef.angle = MathUtils.degToRad(f2);
        Body body = physicsworld.createBody(bodydef);
        EdgeShape edgeshape = new EdgeShape();
        fixturedef.shape = edgeshape;
        edgeshape.set(vector2, vector2_1);
        body.createFixture(fixturedef);
        edgeshape.dispose();
        return body;
    }

    public static Body createEdgeBody(PhysicsWorld physicsworld, Vector2 vector2, Vector2 vector2_1, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f)
    {
        return createEdgeBody(physicsworld, 0.0F, 0.0F, vector2, vector2_1, 0.0F, bodytype, fixturedef, f);
    }

    public static FixtureDef createFixtureDef(float f, float f1, float f2)
    {
        return createFixtureDef(f, f1, f2, false);
    }

    public static FixtureDef createFixtureDef(float f, float f1, float f2, boolean flag)
    {
        FixtureDef fixturedef = new FixtureDef();
        fixturedef.density = f;
        fixturedef.restitution = f1;
        fixturedef.friction = f2;
        fixturedef.isSensor = flag;
        return fixturedef;
    }

    public static FixtureDef createFixtureDef(float f, float f1, float f2, boolean flag, short word0, short word1, short word2)
    {
        FixtureDef fixturedef = new FixtureDef();
        fixturedef.density = f;
        fixturedef.restitution = f1;
        fixturedef.friction = f2;
        fixturedef.isSensor = flag;
        Filter filter = fixturedef.filter;
        filter.categoryBits = word0;
        filter.maskBits = word1;
        filter.groupIndex = word2;
        return fixturedef;
    }

    public static Body createLineBody(PhysicsWorld physicsworld, float f, float f1, float f2, float f3, FixtureDef fixturedef)
    {
        return createLineBody(physicsworld, f, f1, f2, f3, fixturedef, 32F);
    }

    public static Body createLineBody(PhysicsWorld physicsworld, float f, float f1, float f2, float f3, FixtureDef fixturedef, float f4)
    {
        BodyDef bodydef = new BodyDef();
        bodydef.type = com.badlogic.gdx.physics.box2d.BodyDef.BodyType.StaticBody;
        Body body = physicsworld.createBody(bodydef);
        EdgeShape edgeshape = new EdgeShape();
        edgeshape.set(new Vector2(f / f4, f1 / f4), new Vector2(f2 / f4, f3 / f4));
        fixturedef.shape = edgeshape;
        body.createFixture(fixturedef);
        edgeshape.dispose();
        return body;
    }

    public static Body createLineBody(PhysicsWorld physicsworld, Line line, FixtureDef fixturedef)
    {
        return createLineBody(physicsworld, line, fixturedef, 32F);
    }

    public static Body createLineBody(PhysicsWorld physicsworld, Line line, FixtureDef fixturedef, float f)
    {
        float af[] = line.convertLocalToSceneCoordinates(0.0F, 0.0F);
        float f1 = af[0];
        float f2 = af[1];
        line.convertLocalToSceneCoordinates(line.getX2() - line.getX1(), line.getY2() - line.getY1());
        return createLineBody(physicsworld, f1, f2, af[0], af[1], fixturedef, f);
    }

    public static Body createPolygonBody(PhysicsWorld physicsworld, IShape ishape, Vector2 avector2[], com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef)
    {
        return createPolygonBody(physicsworld, ishape, avector2, bodytype, fixturedef, 32F);
    }

    public static Body createPolygonBody(PhysicsWorld physicsworld, IShape ishape, Vector2 avector2[], com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f)
    {
        BodyDef bodydef = new BodyDef();
        bodydef.type = bodytype;
        float af[] = ishape.getSceneCenterCoordinates();
        bodydef.position.x = af[0] / f;
        bodydef.position.y = af[1] / f;
        Body body = physicsworld.createBody(bodydef);
        PolygonShape polygonshape = new PolygonShape();
        polygonshape.set(avector2);
        fixturedef.shape = polygonshape;
        body.createFixture(fixturedef);
        polygonshape.dispose();
        return body;
    }

    public static Body createTrianglulatedBody(PhysicsWorld physicsworld, IShape ishape, List list, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef)
    {
        return createTrianglulatedBody(physicsworld, ishape, list, bodytype, fixturedef, 32F);
    }

    public static Body createTrianglulatedBody(PhysicsWorld physicsworld, IShape ishape, List list, com.badlogic.gdx.physics.box2d.BodyDef.BodyType bodytype, FixtureDef fixturedef, float f)
    {
        Vector2 avector2[] = new Vector2[3];
        BodyDef bodydef = new BodyDef();
        bodydef.type = bodytype;
        float af[] = ishape.getSceneCenterCoordinates();
        bodydef.position.x = af[0] / f;
        bodydef.position.y = af[1] / f;
        Body body = physicsworld.createBody(bodydef);
        int i = list.size();
        int j = 0;
        do
        {
            if (j >= i)
            {
                return body;
            }
            PolygonShape polygonshape = new PolygonShape();
            int k = j + 1;
            avector2[2] = (Vector2)list.get(j);
            int l = k + 1;
            avector2[1] = (Vector2)list.get(k);
            int i1 = l + 1;
            avector2[0] = (Vector2)list.get(l);
            polygonshape.set(avector2);
            fixturedef.shape = polygonshape;
            body.createFixture(fixturedef);
            polygonshape.dispose();
            j = i1;
        } while (true);
    }
}
