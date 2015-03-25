// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package racing.game.hurdlesrace;

import android.content.SharedPreferences;
import android.util.Log;
import com.badlogic.gdx.math.Vector2;
import com.badlogic.gdx.physics.box2d.Body;
import com.badlogic.gdx.physics.box2d.Contact;
import com.badlogic.gdx.physics.box2d.ContactImpulse;
import com.badlogic.gdx.physics.box2d.ContactListener;
import com.badlogic.gdx.physics.box2d.Fixture;
import com.badlogic.gdx.physics.box2d.Manifold;
import org.andengine.engine.camera.Camera;
import org.andengine.engine.handler.IUpdateHandler;
import org.andengine.engine.handler.timer.ITimerCallback;
import org.andengine.engine.handler.timer.TimerHandler;
import org.andengine.engine.options.AudioOptions;
import org.andengine.engine.options.EngineOptions;
import org.andengine.engine.options.ScreenOrientation;
import org.andengine.engine.options.WakeLockOptions;
import org.andengine.engine.options.resolutionpolicy.RatioResolutionPolicy;
import org.andengine.entity.modifier.IEntityModifier;
import org.andengine.entity.modifier.LoopEntityModifier;
import org.andengine.entity.modifier.PathModifier;
import org.andengine.entity.modifier.RotationModifier;
import org.andengine.entity.modifier.SequenceEntityModifier;
import org.andengine.entity.primitive.Rectangle;
import org.andengine.entity.scene.IOnSceneTouchListener;
import org.andengine.entity.scene.Scene;
import org.andengine.entity.scene.background.Background;
import org.andengine.entity.sprite.Sprite;
import org.andengine.entity.text.Text;
import org.andengine.entity.text.TextOptions;
import org.andengine.extension.physics.box2d.PhysicsConnector;
import org.andengine.extension.physics.box2d.PhysicsFactory;
import org.andengine.extension.physics.box2d.PhysicsWorld;
import org.andengine.extension.physics.box2d.util.Vector2Pool;
import org.andengine.input.touch.TouchEvent;
import org.andengine.opengl.font.Font;
import org.andengine.opengl.font.FontFactory;
import org.andengine.opengl.texture.atlas.bitmap.BitmapTextureAtlasTextureRegionFactory;
import org.andengine.opengl.texture.atlas.bitmap.BuildableBitmapTextureAtlas;
import org.andengine.opengl.texture.atlas.buildable.builder.BlackPawnTextureAtlasBuilder;
import org.andengine.opengl.texture.region.TextureRegion;
import org.andengine.opengl.vbo.VertexBufferObjectManager;
import org.andengine.ui.activity.SimpleBaseGameActivity;
import org.andengine.util.HorizontalAlign;
import org.andengine.util.color.Color;
import org.andengine.util.debug.Debug;

// Referenced classes of package racing.game.hurdlesrace:
//            Util

public class MainActivity extends SimpleBaseGameActivity
    implements IOnSceneTouchListener
{

    public static int CAMERA_HEIGHT = 480;
    public static int CAMERA_WIDTH = 800;
    private Sprite background;
    private TextureRegion ball;
    private Body ballBody;
    private Sprite ballSprite;
    private float ballSpriteX;
    private float ballSpriteY;
    private Camera camera;
    private Font font;
    private TextureRegion gameBackground;
    private boolean gameOver;
    private TextureRegion gameOverRegion;
    private Sprite gameOverSprite;
    private BuildableBitmapTextureAtlas gameOverTextureAtlas;
    private BuildableBitmapTextureAtlas gameTextureAtlas;
    private Text getHighScoreText;
    private Sprite hillSprite;
    private Sprite hillSprite1;
    private Sprite hillSpriteBox;
    private int hillSpriteX;
    private float hillSpriteY;
    private TextureRegion hillregion;
    private TextureRegion hillregionbox;
    private boolean jump;
    private LoopEntityModifier lemsprite;
    private LoopEntityModifier lemsprite1;
    private LoopEntityModifier loopEntityModifierball;
    private TextureRegion lowerObstracle;
    private Body lowerObstracleBody;
    private Sprite lowerObstracleSprite;
    private float lowerObstracleSpriteX;
    private float lowerObstracleSpriteY;
    private BuildableBitmapTextureAtlas obstracleTextureAtlas;
    private float pathTime;
    private PhysicsWorld physicsWorld;
    private Scene scene;
    private int score;
    private Text scoreText;
    private SharedPreferences sp;
    private boolean stoprotating;
    private float time;
    private TimerHandler timehandler;
    private TextureRegion upperObstracle;
    private Body upperObstracleBody;
    private Sprite upperObstracleSprite;
    private float upperObstracleSpriteX;
    private float upperObstracleSpriteY;
    private VertexBufferObjectManager vbom;
    private Text yourScoreText;

    public MainActivity()
    {
        score = 0;
        pathTime = 3F;
    }

    private ContactListener createContactListener()
    {
        return new ContactListener() {

            final MainActivity this$0;

            private void createHud()
            {
                yourScoreText = new Text(215F, 150F, font, "High Score: 0123456789", new TextOptions(HorizontalAlign.CENTER), vbom);
                yourScoreText.setText("High Score: 0");
                scene.attachChild(yourScoreText);
                getHighScoreText = new Text(185F, 225F, font, "Highest Score: 0123456789", new TextOptions(HorizontalAlign.CENTER), vbom);
                getHighScoreText.setText("Highest Score: ");
                scene.attachChild(getHighScoreText);
                getHighScoreText.setVisible(false);
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
                    if (!stoprotating)
                    {
                        jump = true;
                        loopEntityModifierball = new LoopEntityModifier(new RotationModifier(Util.getUtil().getAngle(time), 360F, 0.0F));
                        ballSprite.registerEntityModifier(loopEntityModifierball);
                    }
                }
                if (fixture.getBody().getUserData().equals("ballBody") && fixture1.getBody().getUserData().equals("upperObstracleBody"))
                {
                    Log.d("CONTACT", "BETWEEN PLAYER AND upperObstracle");
                    jump = false;
                    gameOver = true;
                    scene.unregisterUpdateHandler(timehandler);
                    lowerObstracleBody.setLinearVelocity(0.0F, 0.0F);
                    upperObstracleBody.setLinearVelocity(0.0F, 0.0F);
                    hillSprite.unregisterEntityModifier(lemsprite);
                    hillSprite1.unregisterEntityModifier(lemsprite1);
                    stoprotating = true;
                    ballSprite.unregisterEntityModifier(loopEntityModifierball);
                    gameOverSprite.setVisible(true);
                    createHud();
                    yourScoreText.setVisible(true);
                    yourScoreText.setText((new StringBuilder("Your Score: ")).append(score).toString());
                    setHighScore(score);
                    getHighScoreText.setVisible(true);
                    int j = getHighScore();
                    getHighScoreText.setText((new StringBuilder("Highest Score: ")).append(j).toString());
                }
                if (fixture.getBody().getUserData().equals("ballBody") && fixture1.getBody().getUserData().equals("lowerObstracleBody"))
                {
                    Log.d("CONTACT", "BETWEEN PLAYER AND Bar");
                    jump = false;
                    gameOver = true;
                    scene.unregisterUpdateHandler(timehandler);
                    lowerObstracleBody.setLinearVelocity(0.0F, 0.0F);
                    upperObstracleBody.setLinearVelocity(0.0F, 0.0F);
                    stoprotating = true;
                    ballSprite.unregisterEntityModifier(loopEntityModifierball);
                    hillSprite.unregisterEntityModifier(lemsprite);
                    hillSprite1.unregisterEntityModifier(lemsprite1);
                    gameOverSprite.setVisible(true);
                    createHud();
                    yourScoreText.setVisible(true);
                    yourScoreText.setText((new StringBuilder("Your Score: ")).append(score).toString());
                    setHighScore(score);
                    getHighScoreText.setVisible(true);
                    int i = getHighScore();
                    getHighScoreText.setText((new StringBuilder("Highest Score: ")).append(i).toString());
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
                    jump = false;
                    ballSprite.unregisterEntityModifier(loopEntityModifierball);
                }
            }

            public void postSolve(Contact contact, ContactImpulse contactimpulse)
            {
            }

            public void preSolve(Contact contact, Manifold manifold)
            {
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        };
    }

    private void makeBody()
    {
        com.badlogic.gdx.physics.box2d.FixtureDef fixturedef = PhysicsFactory.createFixtureDef(1.0F, 0.0F, 5F);
        com.badlogic.gdx.physics.box2d.FixtureDef fixturedef1 = PhysicsFactory.createFixtureDef(1.0F, 0.1F, 0.0F);
        com.badlogic.gdx.physics.box2d.FixtureDef fixturedef2 = PhysicsFactory.createFixtureDef(1.0F, 0.0F, 5F);
        ballBody = PhysicsFactory.createBoxBody(physicsWorld, ballSprite, com.badlogic.gdx.physics.box2d.BodyDef.BodyType.DynamicBody, fixturedef);
        physicsWorld.registerPhysicsConnector(new PhysicsConnector(ballSprite, ballBody, true, true));
        ballBody.setUserData("ballBody");
        float _tmp = lowerObstracleSprite.getWidth() / 32F;
        float _tmp1 = lowerObstracleSprite.getHeight() / 32F;
        lowerObstracleBody = PhysicsFactory.createBoxBody(physicsWorld, lowerObstracleSprite, com.badlogic.gdx.physics.box2d.BodyDef.BodyType.KinematicBody, fixturedef1);
        physicsWorld.registerPhysicsConnector(new PhysicsConnector(lowerObstracleSprite, lowerObstracleBody, true, true));
        lowerObstracleBody.setUserData("lowerObstracleBody");
        lowerObstracleBody.setLinearVelocity(4F, 0.0F);
        upperObstracleBody = PhysicsFactory.createBoxBody(physicsWorld, upperObstracleSprite, com.badlogic.gdx.physics.box2d.BodyDef.BodyType.KinematicBody, fixturedef1);
        physicsWorld.registerPhysicsConnector(new PhysicsConnector(upperObstracleSprite, upperObstracleBody, true, true));
        upperObstracleBody.setUserData("upperObstracleBody");
        upperObstracleBody.setLinearVelocity(4F, 0.0F);
        Rectangle rectangle = new Rectangle(0.0F, 297F, 800F, 2.0F, vbom);
        PhysicsFactory.createBoxBody(physicsWorld, rectangle, com.badlogic.gdx.physics.box2d.BodyDef.BodyType.StaticBody, fixturedef2).setUserData("groundBody");
        rectangle.setColor(Color.TRANSPARENT);
        scene.attachChild(rectangle);
    }

    private void setscore()
    {
        scoreText = new Text(10F, 10F, font, "Score:", "Score: XXXXX".length(), vbom);
        scene.attachChild(scoreText);
        scene.registerUpdateHandler(new TimerHandler(0.1F, true, new ITimerCallback() {

            final MainActivity this$0;

            public void onTimePassed(TimerHandler timerhandler)
            {
                if (!gameOver)
                {
                    MainActivity mainactivity = MainActivity.this;
                    mainactivity.score = 1 + mainactivity.score;
                    scoreText.setText((new StringBuilder("Score: ")).append(score).toString());
                }
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        }));
    }

    private void timer()
    {
        timehandler = new TimerHandler(1.0F, true, new ITimerCallback() {

            final MainActivity this$0;
            private int time;

            public void onTimePassed(TimerHandler timerhandler)
            {
                time = 1 + time;
                float f = Util.getUtil().getAngle(time);
                Log.d("time", (new StringBuilder()).append(f).toString());
                lowerObstracleBody.setLinearVelocity(Util.getUtil().getVelocity(time), 0.0F);
                upperObstracleBody.setLinearVelocity(Util.getUtil().getVelocity(time), 0.0F);
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        scene.registerUpdateHandler(timehandler);
    }

    public int getHighScore()
    {
        sp = getSharedPreferences("highScore", 2);
        return sp.getInt("HighScore", 0);
    }

    public EngineOptions onCreateEngineOptions()
    {
        camera = new Camera(0.0F, 0.0F, CAMERA_WIDTH, CAMERA_HEIGHT);
        EngineOptions engineoptions = new EngineOptions(true, ScreenOrientation.LANDSCAPE_FIXED, new RatioResolutionPolicy(800F, 480F), camera);
        engineoptions.getAudioOptions().setNeedsMusic(true).setNeedsSound(true);
        engineoptions.setWakeLockOptions(WakeLockOptions.SCREEN_ON);
        return engineoptions;
    }

    protected void onCreateResources()
    {
        font = FontFactory.createFromAsset(getFontManager(), getTextureManager(), 256, 256, getAssets(), "fonts/font.ttf", 46F, true, 0xff000000);
        font.load();
        gameTextureAtlas = new BuildableBitmapTextureAtlas(getTextureManager(), 1024, 1024);
        hillregion = BitmapTextureAtlasTextureRegionFactory.createFromAsset(gameTextureAtlas, getAssets(), "gfx/hillimage.png");
        ball = BitmapTextureAtlasTextureRegionFactory.createFromAsset(gameTextureAtlas, getAssets(), "gfx/fruit.png");
        hillregionbox = BitmapTextureAtlasTextureRegionFactory.createFromAsset(gameTextureAtlas, getAssets(), "gfx/hillimagebox.png");
        obstracleTextureAtlas = new BuildableBitmapTextureAtlas(getTextureManager(), 1024, 1024);
        lowerObstracle = BitmapTextureAtlasTextureRegionFactory.createFromAsset(obstracleTextureAtlas, getAssets(), "gfx/bar.png");
        upperObstracle = BitmapTextureAtlasTextureRegionFactory.createFromAsset(obstracleTextureAtlas, getAssets(), "gfx/bar_cs200.png");
        gameOverTextureAtlas = new BuildableBitmapTextureAtlas(getTextureManager(), 1024, 1024);
        gameOverRegion = BitmapTextureAtlasTextureRegionFactory.createFromAsset(gameOverTextureAtlas, getAssets(), "gfx/gameover.png");
        try
        {
            gameTextureAtlas.build(new BlackPawnTextureAtlasBuilder(0, 1, 0));
            gameTextureAtlas.load();
        }
        catch (org.andengine.opengl.texture.atlas.buildable.builder.ITextureAtlasBuilder.TextureAtlasBuilderException textureatlasbuilderexception)
        {
            Debug.e(textureatlasbuilderexception);
        }
        try
        {
            obstracleTextureAtlas.build(new BlackPawnTextureAtlasBuilder(0, 1, 0));
            obstracleTextureAtlas.load();
        }
        catch (org.andengine.opengl.texture.atlas.buildable.builder.ITextureAtlasBuilder.TextureAtlasBuilderException textureatlasbuilderexception1)
        {
            Debug.e(textureatlasbuilderexception1);
        }
        try
        {
            gameOverTextureAtlas.build(new BlackPawnTextureAtlasBuilder(0, 1, 0));
            gameOverTextureAtlas.load();
            return;
        }
        catch (org.andengine.opengl.texture.atlas.buildable.builder.ITextureAtlasBuilder.TextureAtlasBuilderException textureatlasbuilderexception2)
        {
            Debug.e(textureatlasbuilderexception2);
        }
    }

    protected Scene onCreateScene()
    {
        scene = new Scene();
        physicsWorld = new PhysicsWorld(new Vector2(0.0F, 9.80665F), false);
        scene.setBackground(new Background(Color.BLUE));
        hillSpriteBox = new Sprite(20F, 380F, hillregionbox, vbom);
        hillSpriteX = 0;
        hillSpriteY = camera.getHeight() - hillregion.getHeight();
        hillSprite = new Sprite(hillSpriteX, hillSpriteY, hillregion, vbom);
        float f = hillSprite.getY();
        float f1 = CAMERA_WIDTH;
        float f2 = hillSprite.getY() - 95F;
        org.andengine.entity.modifier.PathModifier.Path path = (new org.andengine.entity.modifier.PathModifier.Path(2)).to(0.0F, f).to(f1, f2);
        IEntityModifier aientitymodifier[] = new IEntityModifier[1];
        PathModifier pathmodifier = new PathModifier(pathTime, path);
        aientitymodifier[0] = pathmodifier;
        lemsprite = new LoopEntityModifier(new SequenceEntityModifier(aientitymodifier));
        hillSprite.registerEntityModifier(lemsprite);
        hillSprite1 = new Sprite(hillSprite.getX() - hillSprite.getWidth(), 93F + hillSprite.getY(), hillregion, vbom);
        float f3 = hillSprite1.getX();
        float f4 = hillSprite1.getY();
        float f5 = hillSprite1.getY() - 95F;
        org.andengine.entity.modifier.PathModifier.Path path1 = (new org.andengine.entity.modifier.PathModifier.Path(2)).to(f3, f4).to(0.0F, f5);
        IEntityModifier aientitymodifier1[] = new IEntityModifier[1];
        PathModifier pathmodifier1 = new PathModifier(pathTime, path1);
        aientitymodifier1[0] = pathmodifier1;
        lemsprite1 = new LoopEntityModifier(new SequenceEntityModifier(aientitymodifier1));
        hillSprite1.registerEntityModifier(lemsprite1);
        gameOverSprite = new Sprite(190F, 50F, gameOverRegion, vbom);
        scene.attachChild(gameOverSprite);
        gameOverSprite.setVisible(false);
        lowerObstracleSpriteX = 10F;
        lowerObstracleSpriteY = 280F;
        lowerObstracleSprite = new Sprite(lowerObstracleSpriteX, lowerObstracleSpriteY, lowerObstracle, vbom);
        scene.attachChild(lowerObstracleSprite);
        upperObstracleSpriteX = 10F;
        upperObstracleSpriteY = -550F;
        upperObstracleSprite = new Sprite(upperObstracleSpriteX, upperObstracleSpriteY, upperObstracle, vbom);
        scene.attachChild(upperObstracleSprite);
        scene.attachChild(hillSprite);
        scene.attachChild(hillSpriteBox);
        ballSpriteX = 620F;
        ballSpriteY = 195F;
        ballSprite = new Sprite(ballSpriteX, ballSpriteY, ball, vbom);
        scene.attachChild(ballSprite);
        scene.attachChild(hillSprite1);
        makeBody();
        setscore();
        scene.registerUpdateHandler(new IUpdateHandler() {

            final MainActivity this$0;

            public void onUpdate(float f6)
            {
                if (lowerObstracleSprite.getX() >= 880F)
                {
                    float f7 = (float)(80D + (50D * Math.random() + (double)(lowerObstracleSprite.getHeight() / 4F)));
                    Log.e("random", (new StringBuilder()).append(f7).toString());
                    Vector2 vector2 = Vector2Pool.obtain((lowerObstracleSpriteX + lowerObstracleSprite.getWidth() / 2.0F) / 32F, (f7 + lowerObstracleSprite.getHeight() / 2.0F) / 32F);
                    lowerObstracleBody.setTransform(vector2, lowerObstracleBody.getAngle());
                    Vector2Pool.recycle(vector2);
                    float f8 = f7 - 150F - upperObstracle.getHeight();
                    Vector2 vector2_1 = Vector2Pool.obtain((upperObstracleSpriteX + upperObstracleSprite.getWidth() / 2.0F) / 32F, (f8 + upperObstracleSprite.getHeight() / 2.0F) / 32F);
                    upperObstracleBody.setTransform(vector2_1, upperObstracleBody.getAngle());
                    Vector2Pool.recycle(vector2_1);
                }
            }

            public void reset()
            {
            }

            
            {
                this$0 = MainActivity.this;
                super();
            }
        });
        timer();
        scene.registerUpdateHandler(physicsWorld);
        physicsWorld.setContactListener(createContactListener());
        scene.setOnSceneTouchListener(this);
        return scene;
    }

    public boolean onSceneTouchEvent(Scene scene1, TouchEvent touchevent)
    {
        if (jump)
        {
            ballBody.setLinearVelocity(new Vector2(0.0F, -9F));
        }
        return false;
    }

    public void setHighScore(int i)
    {
        sp = getSharedPreferences("highScore", 2);
        android.content.SharedPreferences.Editor editor = sp.edit();
        if (sp.getInt("HighScore", 0) <= i)
        {
            editor.putInt("HighScore", i);
            editor.commit();
        }
    }

































}
