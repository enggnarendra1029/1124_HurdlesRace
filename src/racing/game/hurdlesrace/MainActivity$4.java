// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package racing.game.hurdlesrace;

import android.util.Log;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.Contact;
import com.badlogic.gdx.physics.box2d.ContactImpulse;
import com.badlogic.gdx.physics.box2d.ContactListener;
import com.badlogic.gdx.physics.box2d.Fixture;
import com.badlogic.gdx.physics.box2d.Manifold;
import org.andengine.entity.modifier.LoopEntityModifier;
import org.andengine.entity.modifier.RotationModifier;
import org.andengine.entity.scene.Scene;
import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.text.Text;
import org.andengine.entity.text.TextOptions;
import org.andengine.util.HorizontalAlign;

// Referenced classes of package racing.game.hurdlesrace:
//            MainActivity, Util

class this._cls0
    implements ContactListener
{

    final MainActivity this$0;

    private void createHud()
    {
        MainActivity.access$30(MainActivity.this, new Text(215F, 150F, MainActivity.access$28(MainActivity.this), "High Score: 0123456789", new TextOptions(HorizontalAlign.CENTER), MainActivity.access$29(MainActivity.this)));
        MainActivity.access$26(MainActivity.this).setText("High Score: 0");
        MainActivity.access$18(MainActivity.this).attachChild(MainActivity.access$26(MainActivity.this));
        MainActivity.access$31(MainActivity.this, new Text(185F, 225F, MainActivity.access$28(MainActivity.this), "Highest Score: 0123456789", new TextOptions(HorizontalAlign.CENTER), MainActivity.access$29(MainActivity.this)));
        MainActivity.access$27(MainActivity.this).setText("Highest Score: ");
        MainActivity.access$18(MainActivity.this).attachChild(MainActivity.access$27(MainActivity.this));
        MainActivity.access$27(MainActivity.this).setVisible(false);
    }

    public void beginContact(Contact contact)
    {
        Fixture fixture = contact.getFixtureA();
        Fixture fixture1 = contact.getFixtureB();
        String _tmp = (String)fixture.getBody().getUserData();
        String _tmp1 = (String)fixture1.getBody().getUserData();
        if (fixture.getBody().getUserData().equals("ballBody") && fixture1.getBody().getUserData().equals("groundBody"))
        {
            Log.d("CONTACT", "BETWEEN PLAYER AND ground!");
            if (!MainActivity.access$11(MainActivity.this))
            {
                MainActivity.access$12(MainActivity.this, true);
                MainActivity.access$14(MainActivity.this, new LoopEntityModifier(new RotationModifier(Util.getUtil().getAngle(MainActivity.access$13(MainActivity.this)), 360F, 0.0F)));
                MainActivity.access$15(MainActivity.this).registerEntityModifier(MainActivity.access$16(MainActivity.this));
            }
        }
        if (fixture.getBody().getUserData().equals("ballBody") && fixture1.getBody().getUserData().equals("upperObstracleBody"))
        {
            Log.d("CONTACT", "BETWEEN PLAYER AND upperObstracle");
            MainActivity.access$12(MainActivity.this, false);
            MainActivity.access$17(MainActivity.this, true);
            MainActivity.access$18(MainActivity.this).unregisterUpdateHandler(MainActivity.access$19(MainActivity.this));
            MainActivity.access$2(MainActivity.this).setLinearVelocity(0.0F, 0.0F);
            MainActivity.access$6(MainActivity.this).setLinearVelocity(0.0F, 0.0F);
            MainActivity.access$20(MainActivity.this).unregisterEntityModifier(MainActivity.access$21(MainActivity.this));
            MainActivity.access$22(MainActivity.this).unregisterEntityModifier(MainActivity.access$23(MainActivity.this));
            MainActivity.access$24(MainActivity.this, true);
            MainActivity.access$15(MainActivity.this).unregisterEntityModifier(MainActivity.access$16(MainActivity.this));
            MainActivity.access$25(MainActivity.this).setVisible(true);
            createHud();
            MainActivity.access$26(MainActivity.this).setVisible(true);
            MainActivity.access$26(MainActivity.this).setText((new StringBuilder("Your Score: ")).append(MainActivity.access$8(MainActivity.this)).toString());
            setHighScore(MainActivity.access$8(MainActivity.this));
            MainActivity.access$27(MainActivity.this).setVisible(true);
            int j = getHighScore();
            MainActivity.access$27(MainActivity.this).setText((new StringBuilder("Highest Score: ")).append(j).toString());
        }
        if (fixture.getBody().getUserData().equals("ballBody") && fixture1.getBody().getUserData().equals("lowerObstracleBody"))
        {
            Log.d("CONTACT", "BETWEEN PLAYER AND Bar");
            MainActivity.access$12(MainActivity.this, false);
            MainActivity.access$17(MainActivity.this, true);
            MainActivity.access$18(MainActivity.this).unregisterUpdateHandler(MainActivity.access$19(MainActivity.this));
            MainActivity.access$2(MainActivity.this).setLinearVelocity(0.0F, 0.0F);
            MainActivity.access$6(MainActivity.this).setLinearVelocity(0.0F, 0.0F);
            MainActivity.access$24(MainActivity.this, true);
            MainActivity.access$15(MainActivity.this).unregisterEntityModifier(MainActivity.access$16(MainActivity.this));
            MainActivity.access$20(MainActivity.this).unregisterEntityModifier(MainActivity.access$21(MainActivity.this));
            MainActivity.access$22(MainActivity.this).unregisterEntityModifier(MainActivity.access$23(MainActivity.this));
            MainActivity.access$25(MainActivity.this).setVisible(true);
            createHud();
            MainActivity.access$26(MainActivity.this).setVisible(true);
            MainActivity.access$26(MainActivity.this).setText((new StringBuilder("Your Score: ")).append(MainActivity.access$8(MainActivity.this)).toString());
            setHighScore(MainActivity.access$8(MainActivity.this));
            MainActivity.access$27(MainActivity.this).setVisible(true);
            int i = getHighScore();
            MainActivity.access$27(MainActivity.this).setText((new StringBuilder("Highest Score: ")).append(i).toString());
        }
    }

    public void endContact(Contact contact)
    {
        Fixture fixture = contact.getFixtureA();
        Fixture fixture1 = contact.getFixtureB();
        String _tmp = (String)fixture.getBody().getUserData();
        String _tmp1 = (String)fixture1.getBody().getUserData();
        if (fixture.getBody().getUserData().equals("ballBody") && fixture1.getBody().getUserData().equals("groundBody"))
        {
            Log.d("CONTACT", "BETWEEN PLAYER AND ground!");
            MainActivity.access$12(MainActivity.this, false);
            MainActivity.access$15(MainActivity.this).unregisterEntityModifier(MainActivity.access$16(MainActivity.this));
        }
    }

    public void postSolve(Contact contact, ContactImpulse contactimpulse)
    {
    }

    public void preSolve(Contact contact, Manifold manifold)
    {
    }

    ()
    {
        this$0 = MainActivity.this;
        super();
    }
}
