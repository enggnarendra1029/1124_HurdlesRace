.class public Lorg/andengine/entity/Entity;
.super Ljava/lang/Object;
.source "Entity.java"

# interfaces
.implements Lorg/andengine/entity/IEntity;


# static fields
.field private static final CHILDREN_CAPACITY_DEFAULT:I = 0x4

.field private static final ENTITYMODIFIERS_CAPACITY_DEFAULT:I = 0x4

.field private static final PARAMETERCALLABLE_DETACHCHILD:Lorg/andengine/util/call/ParameterCallable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/call/ParameterCallable",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field

.field private static final UPDATEHANDLERS_CAPACITY_DEFAULT:I = 0x4

.field private static final VERTICES_LOCAL_TO_SCENE_TMP:[F

.field private static final VERTICES_SCENE_TO_LOCAL_TMP:[F


# instance fields
.field protected mChildren:Lorg/andengine/util/adt/list/SmartList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/list/SmartList",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mChildrenIgnoreUpdate:Z

.field protected mChildrenSortPending:Z

.field protected mChildrenVisible:Z

.field protected mColor:Lorg/andengine/util/color/Color;

.field protected mCullingEnabled:Z

.field protected mDisposed:Z

.field private mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

.field protected mIgnoreUpdate:Z

.field private mLocalToParentTransformation:Lorg/andengine/util/adt/transformation/Transformation;

.field private mLocalToParentTransformationDirty:Z

.field private mLocalToSceneTransformation:Lorg/andengine/util/adt/transformation/Transformation;

.field private mParent:Lorg/andengine/entity/IEntity;

.field private mParentToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;

.field private mParentToLocalTransformationDirty:Z

.field protected mRotation:F

.field protected mRotationCenterX:F

.field protected mRotationCenterY:F

.field protected mScaleCenterX:F

.field protected mScaleCenterY:F

.field protected mScaleX:F

.field protected mScaleY:F

.field private mSceneToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;

.field protected mSkewCenterX:F

.field protected mSkewCenterY:F

.field protected mSkewX:F

.field protected mSkewY:F

.field protected mTag:I

.field private mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

.field private mUserData:Ljava/lang/Object;

.field protected mVisible:Z

.field protected mX:F

.field protected mY:F

.field protected mZIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 36
    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/entity/Entity;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    .line 37
    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/entity/Entity;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    .line 39
    new-instance v0, Lorg/andengine/entity/Entity$1;

    invoke-direct {v0}, Lorg/andengine/entity/Entity$1;-><init>()V

    sput-object v0, Lorg/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/andengine/util/call/ParameterCallable;

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, v0}, Lorg/andengine/entity/Entity;-><init>(FF)V

    .line 108
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 4
    .parameter "pX"
    .parameter "pY"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v3, p0, Lorg/andengine/entity/Entity;->mVisible:Z

    .line 55
    iput-boolean v3, p0, Lorg/andengine/entity/Entity;->mChildrenVisible:Z

    .line 59
    const/high16 v0, -0x8000

    iput v0, p0, Lorg/andengine/entity/Entity;->mTag:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/entity/Entity;->mZIndex:I

    .line 69
    new-instance v0, Lorg/andengine/util/color/Color;

    invoke-direct {v0, v2, v2, v2, v2}, Lorg/andengine/util/color/Color;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    .line 74
    iput v1, p0, Lorg/andengine/entity/Entity;->mRotation:F

    .line 76
    iput v1, p0, Lorg/andengine/entity/Entity;->mRotationCenterX:F

    .line 77
    iput v1, p0, Lorg/andengine/entity/Entity;->mRotationCenterY:F

    .line 79
    iput v2, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    .line 80
    iput v2, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    .line 82
    iput v1, p0, Lorg/andengine/entity/Entity;->mScaleCenterX:F

    .line 83
    iput v1, p0, Lorg/andengine/entity/Entity;->mScaleCenterY:F

    .line 85
    iput v1, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    .line 86
    iput v1, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    .line 88
    iput v1, p0, Lorg/andengine/entity/Entity;->mSkewCenterX:F

    .line 89
    iput v1, p0, Lorg/andengine/entity/Entity;->mSkewCenterY:F

    .line 91
    iput-boolean v3, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 92
    iput-boolean v3, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 111
    iput p1, p0, Lorg/andengine/entity/Entity;->mX:F

    .line 112
    iput p2, p0, Lorg/andengine/entity/Entity;->mY:F

    .line 113
    return-void
.end method

.method private allocateChildren()V
    .locals 2

    .prologue
    .line 1274
    new-instance v0, Lorg/andengine/util/adt/list/SmartList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/andengine/util/adt/list/SmartList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    .line 1275
    return-void
.end method

.method private allocateEntityModifiers()V
    .locals 2

    .prologue
    .line 1270
    new-instance v0, Lorg/andengine/entity/modifier/EntityModifierList;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lorg/andengine/entity/modifier/EntityModifierList;-><init>(Lorg/andengine/entity/IEntity;I)V

    iput-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    .line 1271
    return-void
.end method

.method private allocateUpdateHandlers()V
    .locals 2

    .prologue
    .line 1278
    new-instance v0, Lorg/andengine/engine/handler/UpdateHandlerList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/andengine/engine/handler/UpdateHandlerList;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    .line 1279
    return-void
.end method

.method private assertEntityHasNoParent(Lorg/andengine/entity/IEntity;)V
    .locals 6
    .parameter "pEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1408
    invoke-interface {p1}, Lorg/andengine/entity/IEntity;->hasParent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1409
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 1410
    .local v1, entityClassName:Ljava/lang/String;
    invoke-interface {p1}, Lorg/andengine/entity/IEntity;->getParent()Lorg/andengine/entity/IEntity;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1411
    .local v0, currentParentClassName:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 1412
    .local v2, newParentClassName:Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pEntity \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' already has a parent: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'. New parent: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1414
    .end local v0           #currentParentClassName:Ljava/lang/String;
    .end local v1           #entityClassName:Ljava/lang/String;
    .end local v2           #newParentClassName:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected applyRotation(Lorg/andengine/opengl/util/GLState;)V
    .locals 6
    .parameter "pGLState"

    .prologue
    const/4 v5, 0x0

    .line 1300
    iget v0, p0, Lorg/andengine/entity/Entity;->mRotation:F

    .line 1302
    .local v0, rotation:F
    cmpl-float v3, v0, v5

    if-eqz v3, :cond_0

    .line 1303
    iget v1, p0, Lorg/andengine/entity/Entity;->mRotationCenterX:F

    .line 1304
    .local v1, rotationCenterX:F
    iget v2, p0, Lorg/andengine/entity/Entity;->mRotationCenterY:F

    .line 1306
    .local v2, rotationCenterY:F
    invoke-virtual {p1, v1, v2, v5}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 1307
    const/high16 v3, 0x3f80

    invoke-virtual {p1, v0, v5, v5, v3}, Lorg/andengine/opengl/util/GLState;->rotateModelViewGLMatrixf(FFFF)V

    .line 1308
    neg-float v3, v1

    neg-float v4, v2

    invoke-virtual {p1, v3, v4, v5}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 1314
    .end local v1           #rotationCenterX:F
    .end local v2           #rotationCenterY:F
    :cond_0
    return-void
.end method

.method protected applyScale(Lorg/andengine/opengl/util/GLState;)V
    .locals 7
    .parameter "pGLState"

    .prologue
    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    .line 1331
    iget v2, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    .line 1332
    .local v2, scaleX:F
    iget v3, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    .line 1334
    .local v3, scaleY:F
    cmpl-float v4, v2, v5

    if-nez v4, :cond_0

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_1

    .line 1335
    :cond_0
    iget v0, p0, Lorg/andengine/entity/Entity;->mScaleCenterX:F

    .line 1336
    .local v0, scaleCenterX:F
    iget v1, p0, Lorg/andengine/entity/Entity;->mScaleCenterY:F

    .line 1338
    .local v1, scaleCenterY:F
    invoke-virtual {p1, v0, v1, v6}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 1339
    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Lorg/andengine/opengl/util/GLState;->scaleModelViewGLMatrixf(FFI)V

    .line 1340
    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {p1, v4, v5, v6}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 1342
    .end local v0           #scaleCenterX:F
    .end local v1           #scaleCenterY:F
    :cond_1
    return-void
.end method

.method protected applySkew(Lorg/andengine/opengl/util/GLState;)V
    .locals 7
    .parameter "pGLState"

    .prologue
    const/4 v6, 0x0

    .line 1317
    iget v2, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    .line 1318
    .local v2, skewX:F
    iget v3, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    .line 1320
    .local v3, skewY:F
    cmpl-float v4, v2, v6

    if-nez v4, :cond_0

    cmpl-float v4, v3, v6

    if-eqz v4, :cond_1

    .line 1321
    :cond_0
    iget v0, p0, Lorg/andengine/entity/Entity;->mSkewCenterX:F

    .line 1322
    .local v0, skewCenterX:F
    iget v1, p0, Lorg/andengine/entity/Entity;->mSkewCenterY:F

    .line 1324
    .local v1, skewCenterY:F
    invoke-virtual {p1, v0, v1, v6}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 1325
    invoke-virtual {p1, v2, v3}, Lorg/andengine/opengl/util/GLState;->skewModelViewGLMatrixf(FF)V

    .line 1326
    neg-float v4, v0

    neg-float v5, v1

    invoke-virtual {p1, v4, v5, v6}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 1328
    .end local v0           #skewCenterX:F
    .end local v1           #skewCenterY:F
    :cond_1
    return-void
.end method

.method protected applyTranslation(Lorg/andengine/opengl/util/GLState;)V
    .locals 3
    .parameter "pGLState"

    .prologue
    .line 1296
    iget v0, p0, Lorg/andengine/entity/Entity;->mX:F

    iget v1, p0, Lorg/andengine/entity/Entity;->mY:F

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/andengine/opengl/util/GLState;->translateModelViewGLMatrixf(FFF)V

    .line 1297
    return-void
.end method

.method public attachChild(Lorg/andengine/entity/IEntity;)V
    .locals 1
    .parameter "pEntity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 724
    invoke-direct {p0, p1}, Lorg/andengine/entity/Entity;->assertEntityHasNoParent(Lorg/andengine/entity/IEntity;)V

    .line 726
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 727
    invoke-direct {p0}, Lorg/andengine/entity/Entity;->allocateChildren()V

    .line 729
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/list/SmartList;->add(Ljava/lang/Object;)Z

    .line 730
    invoke-interface {p1, p0}, Lorg/andengine/entity/IEntity;->setParent(Lorg/andengine/entity/IEntity;)V

    .line 731
    invoke-interface {p1}, Lorg/andengine/entity/IEntity;->onAttached()V

    .line 732
    return-void
.end method

.method public callOnChildren(Lorg/andengine/entity/IEntityParameterCallable;)V
    .locals 1
    .parameter "pEntityParameterCallable"

    .prologue
    .line 800
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 803
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/list/SmartList;->call(Lorg/andengine/util/call/ParameterCallable;)V

    goto :goto_0
.end method

.method public callOnChildren(Lorg/andengine/entity/IEntityParameterCallable;Lorg/andengine/entity/IEntityMatcher;)V
    .locals 1
    .parameter "pEntityParameterCallable"
    .parameter "pEntityMatcher"

    .prologue
    .line 808
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 812
    :goto_0
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p2, p1}, Lorg/andengine/util/adt/list/SmartList;->call(Lorg/andengine/util/IMatcher;Lorg/andengine/util/call/ParameterCallable;)V

    goto :goto_0
.end method

.method public clearEntityModifiers()V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    .line 892
    :goto_0
    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0}, Lorg/andengine/entity/modifier/EntityModifierList;->clear()V

    goto :goto_0
.end method

.method public clearUpdateHandlers()V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 852
    :goto_0
    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0}, Lorg/andengine/engine/handler/UpdateHandlerList;->clear()V

    goto :goto_0
.end method

.method public convertLocalToSceneCoordinates(FF)[F
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 1054
    sget-object v0, Lorg/andengine/entity/Entity;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/Entity;->convertLocalToSceneCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates(FF[F)[F
    .locals 2
    .parameter "pX"
    .parameter "pY"
    .parameter "pReuse"

    .prologue
    .line 1062
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getLocalToSceneTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v0

    .line 1064
    .local v0, localToSceneTransformation:Lorg/andengine/util/adt/transformation/Transformation;
    const/4 v1, 0x0

    aput p1, p3, v1

    .line 1065
    const/4 v1, 0x1

    aput p2, p3, v1

    .line 1067
    invoke-virtual {v0, p3}, Lorg/andengine/util/adt/transformation/Transformation;->transform([F)V

    .line 1069
    return-object p3
.end method

.method public convertLocalToSceneCoordinates([F)[F
    .locals 1
    .parameter "pCoordinates"

    .prologue
    .line 1077
    sget-object v0, Lorg/andengine/entity/Entity;->VERTICES_LOCAL_TO_SCENE_TMP:[F

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/Entity;->convertLocalToSceneCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertLocalToSceneCoordinates([F[F)[F
    .locals 4
    .parameter "pCoordinates"
    .parameter "pReuse"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1085
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getLocalToSceneTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v0

    .line 1087
    .local v0, localToSceneTransformation:Lorg/andengine/util/adt/transformation/Transformation;
    aget v1, p1, v2

    aput v1, p2, v2

    .line 1088
    aget v1, p1, v3

    aput v1, p2, v3

    .line 1090
    invoke-virtual {v0, p2}, Lorg/andengine/util/adt/transformation/Transformation;->transform([F)V

    .line 1092
    return-object p2
.end method

.method public convertSceneToLocalCoordinates(FF)[F
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    .line 1100
    sget-object v0, Lorg/andengine/entity/Entity;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/entity/Entity;->convertSceneToLocalCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates(FF[F)[F
    .locals 1
    .parameter "pX"
    .parameter "pY"
    .parameter "pReuse"

    .prologue
    .line 1108
    const/4 v0, 0x0

    aput p1, p3, v0

    .line 1109
    const/4 v0, 0x1

    aput p2, p3, v0

    .line 1111
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getSceneToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/andengine/util/adt/transformation/Transformation;->transform([F)V

    .line 1113
    return-object p3
.end method

.method public convertSceneToLocalCoordinates([F)[F
    .locals 1
    .parameter "pCoordinates"

    .prologue
    .line 1121
    sget-object v0, Lorg/andengine/entity/Entity;->VERTICES_SCENE_TO_LOCAL_TMP:[F

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/Entity;->convertSceneToLocalCoordinates([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public convertSceneToLocalCoordinates([F[F)[F
    .locals 3
    .parameter "pCoordinates"
    .parameter "pReuse"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1129
    aget v0, p1, v1

    aput v0, p2, v1

    .line 1130
    aget v0, p1, v2

    aput v0, p2, v2

    .line 1132
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getSceneToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/andengine/util/adt/transformation/Transformation;->transform([F)V

    .line 1134
    return-object p2
.end method

.method public detachChild(I)Lorg/andengine/entity/IEntity;
    .locals 3
    .parameter "pTag"

    .prologue
    const/4 v1, 0x0

    .line 769
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v2, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-object v1

    .line 772
    :cond_1
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v2}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_0

    .line 773
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v2, v0}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/entity/IEntity;

    invoke-interface {v2}, Lorg/andengine/entity/IEntity;->getTag()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 774
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v2, v0}, Lorg/andengine/util/adt/list/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/entity/IEntity;

    .line 775
    .local v1, removed:Lorg/andengine/entity/IEntity;
    sget-object v2, Lorg/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/andengine/util/call/ParameterCallable;

    invoke-interface {v2, v1}, Lorg/andengine/util/call/ParameterCallable;->call(Ljava/lang/Object;)V

    goto :goto_0

    .line 772
    .end local v1           #removed:Lorg/andengine/entity/IEntity;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public detachChild(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
    .locals 2
    .parameter "pEntityMatcher"

    .prologue
    .line 784
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 785
    const/4 v0, 0x0

    .line 787
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    sget-object v1, Lorg/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/andengine/util/call/ParameterCallable;

    invoke-virtual {v0, p1, v1}, Lorg/andengine/util/adt/list/SmartList;->remove(Lorg/andengine/util/IMatcher;Lorg/andengine/util/call/ParameterCallable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public detachChild(Lorg/andengine/entity/IEntity;)Z
    .locals 2
    .parameter "pEntity"

    .prologue
    .line 761
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 762
    const/4 v0, 0x0

    .line 764
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    sget-object v1, Lorg/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/andengine/util/call/ParameterCallable;

    invoke-virtual {v0, p1, v1}, Lorg/andengine/util/adt/list/SmartList;->remove(Ljava/lang/Object;Lorg/andengine/util/call/ParameterCallable;)Z

    move-result v0

    goto :goto_0
.end method

.method public detachChildren()V
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 720
    :goto_0
    return-void

    .line 719
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    sget-object v1, Lorg/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/andengine/util/call/ParameterCallable;

    invoke-virtual {v0, v1}, Lorg/andengine/util/adt/list/SmartList;->clear(Lorg/andengine/util/call/ParameterCallable;)V

    goto :goto_0
.end method

.method public detachChildren(Lorg/andengine/entity/IEntityMatcher;)Z
    .locals 2
    .parameter "pEntityMatcher"

    .prologue
    .line 792
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 793
    const/4 v0, 0x0

    .line 795
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    sget-object v1, Lorg/andengine/entity/Entity;->PARAMETERCALLABLE_DETACHCHILD:Lorg/andengine/util/call/ParameterCallable;

    invoke-virtual {v0, p1, v1}, Lorg/andengine/util/adt/list/SmartList;->removeAll(Lorg/andengine/util/IMatcher;Lorg/andengine/util/call/ParameterCallable;)Z

    move-result v0

    goto :goto_0
.end method

.method public detachSelf()Z
    .locals 2

    .prologue
    .line 706
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mParent:Lorg/andengine/entity/IEntity;

    .line 707
    .local v0, parent:Lorg/andengine/entity/IEntity;
    if-eqz v0, :cond_0

    .line 708
    invoke-interface {v0, p0}, Lorg/andengine/entity/IEntity;->detachChild(Lorg/andengine/entity/IEntity;)Z

    move-result v1

    .line 710
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1201
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mDisposed:Z

    if-nez v0, :cond_0

    .line 1202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mDisposed:Z

    .line 1206
    return-void

    .line 1204
    :cond_0
    new-instance v0, Lorg/andengine/util/IDisposable$AlreadyDisposedException;

    invoke-direct {v0}, Lorg/andengine/util/IDisposable$AlreadyDisposedException;-><init>()V

    throw v0
.end method

.method protected draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 0
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 1259
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1210
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1212
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mDisposed:Z

    if-nez v0, :cond_0

    .line 1213
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->dispose()V

    .line 1215
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getBlue()F
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getBlue()F

    move-result v0

    return v0
.end method

.method public getChildByIndex(I)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pIndex"

    .prologue
    .line 609
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 612
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getChildByMatcher(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pEntityMatcher"

    .prologue
    .line 617
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 618
    const/4 v0, 0x0

    .line 620
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, p1}, Lorg/andengine/util/adt/list/SmartList;->get(Lorg/andengine/util/IMatcher;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getChildByTag(I)Lorg/andengine/entity/IEntity;
    .locals 4
    .parameter "pTag"

    .prologue
    const/4 v2, 0x0

    .line 595
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v3, :cond_1

    move-object v0, v2

    .line 604
    :cond_0
    :goto_0
    return-object v0

    .line 598
    :cond_1
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v3}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-gez v1, :cond_2

    move-object v0, v2

    .line 604
    goto :goto_0

    .line 599
    :cond_2
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v3, v1}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    .line 600
    .local v0, child:Lorg/andengine/entity/IEntity;
    invoke-interface {v0}, Lorg/andengine/entity/IEntity;->getTag()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 598
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 588
    const/4 v0, 0x0

    .line 590
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getColor()Lorg/andengine/util/color/Color;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    return-object v0
.end method

.method public getEntityModifierCount()I
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    .line 881
    const/4 v0, 0x0

    .line 883
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0}, Lorg/andengine/entity/modifier/EntityModifierList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getFirstChild()Lorg/andengine/entity/IEntity;
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 626
    const/4 v0, 0x0

    .line 628
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getGreen()F
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getGreen()F

    move-result v0

    return v0
.end method

.method public getLastChild()Lorg/andengine/entity/IEntity;
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 634
    const/4 v0, 0x0

    .line 636
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    iget-object v1, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v1}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    goto :goto_0
.end method

.method public getLocalToParentTransformation()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 15

    .prologue
    const/high16 v13, 0x3f80

    const/4 v14, 0x0

    .line 906
    iget-object v12, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    if-nez v12, :cond_0

    .line 907
    new-instance v12, Lorg/andengine/util/adt/transformation/Transformation;

    invoke-direct {v12}, Lorg/andengine/util/adt/transformation/Transformation;-><init>()V

    iput-object v12, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    .line 910
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    .line 911
    .local v0, localToParentTransformation:Lorg/andengine/util/adt/transformation/Transformation;
    iget-boolean v12, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    if-eqz v12, :cond_6

    .line 912
    invoke-virtual {v0}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 915
    iget v6, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    .line 916
    .local v6, scaleX:F
    iget v7, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    .line 917
    .local v7, scaleY:F
    cmpl-float v12, v6, v13

    if-nez v12, :cond_1

    cmpl-float v12, v7, v13

    if-eqz v12, :cond_2

    .line 918
    :cond_1
    iget v4, p0, Lorg/andengine/entity/Entity;->mScaleCenterX:F

    .line 919
    .local v4, scaleCenterX:F
    iget v5, p0, Lorg/andengine/entity/Entity;->mScaleCenterY:F

    .line 924
    .local v5, scaleCenterY:F
    neg-float v12, v4

    neg-float v13, v5

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 925
    invoke-virtual {v0, v6, v7}, Lorg/andengine/util/adt/transformation/Transformation;->postScale(FF)V

    .line 926
    invoke-virtual {v0, v4, v5}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 930
    .end local v4           #scaleCenterX:F
    .end local v5           #scaleCenterY:F
    :cond_2
    iget v10, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    .line 931
    .local v10, skewX:F
    iget v11, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    .line 932
    .local v11, skewY:F
    cmpl-float v12, v10, v14

    if-nez v12, :cond_3

    cmpl-float v12, v11, v14

    if-eqz v12, :cond_4

    .line 933
    :cond_3
    iget v8, p0, Lorg/andengine/entity/Entity;->mSkewCenterX:F

    .line 934
    .local v8, skewCenterX:F
    iget v9, p0, Lorg/andengine/entity/Entity;->mSkewCenterY:F

    .line 936
    .local v9, skewCenterY:F
    neg-float v12, v8

    neg-float v13, v9

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 937
    invoke-virtual {v0, v10, v11}, Lorg/andengine/util/adt/transformation/Transformation;->postSkew(FF)V

    .line 938
    invoke-virtual {v0, v8, v9}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 942
    .end local v8           #skewCenterX:F
    .end local v9           #skewCenterY:F
    :cond_4
    iget v1, p0, Lorg/andengine/entity/Entity;->mRotation:F

    .line 943
    .local v1, rotation:F
    cmpl-float v12, v1, v14

    if-eqz v12, :cond_5

    .line 944
    iget v2, p0, Lorg/andengine/entity/Entity;->mRotationCenterX:F

    .line 945
    .local v2, rotationCenterX:F
    iget v3, p0, Lorg/andengine/entity/Entity;->mRotationCenterY:F

    .line 947
    .local v3, rotationCenterY:F
    neg-float v12, v2

    neg-float v13, v3

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 948
    invoke-virtual {v0, v1}, Lorg/andengine/util/adt/transformation/Transformation;->postRotate(F)V

    .line 949
    invoke-virtual {v0, v2, v3}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 953
    .end local v2           #rotationCenterX:F
    .end local v3           #rotationCenterY:F
    :cond_5
    iget v12, p0, Lorg/andengine/entity/Entity;->mX:F

    iget v13, p0, Lorg/andengine/entity/Entity;->mY:F

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 955
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 957
    .end local v1           #rotation:F
    .end local v6           #scaleX:F
    .end local v7           #scaleY:F
    .end local v10           #skewX:F
    .end local v11           #skewY:F
    :cond_6
    return-object v0
.end method

.method public getLocalToSceneTransformation()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 3

    .prologue
    .line 1015
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mLocalToSceneTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    if-nez v2, :cond_0

    .line 1016
    new-instance v2, Lorg/andengine/util/adt/transformation/Transformation;

    invoke-direct {v2}, Lorg/andengine/util/adt/transformation/Transformation;-><init>()V

    iput-object v2, p0, Lorg/andengine/entity/Entity;->mLocalToSceneTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    .line 1020
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mLocalToSceneTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    .line 1021
    .local v0, localToSceneTransformation:Lorg/andengine/util/adt/transformation/Transformation;
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getLocalToParentTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/andengine/util/adt/transformation/Transformation;->setTo(Lorg/andengine/util/adt/transformation/Transformation;)V

    .line 1023
    iget-object v1, p0, Lorg/andengine/entity/Entity;->mParent:Lorg/andengine/entity/IEntity;

    .line 1024
    .local v1, parent:Lorg/andengine/entity/IEntity;
    if-eqz v1, :cond_1

    .line 1025
    invoke-interface {v1}, Lorg/andengine/entity/IEntity;->getLocalToSceneTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/andengine/util/adt/transformation/Transformation;->postConcat(Lorg/andengine/util/adt/transformation/Transformation;)V

    .line 1028
    :cond_1
    return-object v0
.end method

.method public getParent()Lorg/andengine/entity/IEntity;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mParent:Lorg/andengine/entity/IEntity;

    return-object v0
.end method

.method public getParentToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 14

    .prologue
    .line 962
    iget-object v12, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    if-nez v12, :cond_0

    .line 963
    new-instance v12, Lorg/andengine/util/adt/transformation/Transformation;

    invoke-direct {v12}, Lorg/andengine/util/adt/transformation/Transformation;-><init>()V

    iput-object v12, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    .line 966
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    .line 967
    .local v0, parentToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;
    iget-boolean v12, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    if-eqz v12, :cond_6

    .line 968
    invoke-virtual {v0}, Lorg/andengine/util/adt/transformation/Transformation;->setToIdentity()V

    .line 971
    iget v12, p0, Lorg/andengine/entity/Entity;->mX:F

    neg-float v12, v12

    iget v13, p0, Lorg/andengine/entity/Entity;->mY:F

    neg-float v13, v13

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 974
    iget v1, p0, Lorg/andengine/entity/Entity;->mRotation:F

    .line 975
    .local v1, rotation:F
    const/4 v12, 0x0

    cmpl-float v12, v1, v12

    if-eqz v12, :cond_1

    .line 976
    iget v2, p0, Lorg/andengine/entity/Entity;->mRotationCenterX:F

    .line 977
    .local v2, rotationCenterX:F
    iget v3, p0, Lorg/andengine/entity/Entity;->mRotationCenterY:F

    .line 979
    .local v3, rotationCenterY:F
    neg-float v12, v2

    neg-float v13, v3

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 980
    neg-float v12, v1

    invoke-virtual {v0, v12}, Lorg/andengine/util/adt/transformation/Transformation;->postRotate(F)V

    .line 981
    invoke-virtual {v0, v2, v3}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 985
    .end local v2           #rotationCenterX:F
    .end local v3           #rotationCenterY:F
    :cond_1
    iget v10, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    .line 986
    .local v10, skewX:F
    iget v11, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    .line 987
    .local v11, skewY:F
    const/4 v12, 0x0

    cmpl-float v12, v10, v12

    if-nez v12, :cond_2

    const/4 v12, 0x0

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_3

    .line 988
    :cond_2
    iget v8, p0, Lorg/andengine/entity/Entity;->mSkewCenterX:F

    .line 989
    .local v8, skewCenterX:F
    iget v9, p0, Lorg/andengine/entity/Entity;->mSkewCenterY:F

    .line 991
    .local v9, skewCenterY:F
    neg-float v12, v8

    neg-float v13, v9

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 992
    neg-float v12, v10

    neg-float v13, v11

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postSkew(FF)V

    .line 993
    invoke-virtual {v0, v8, v9}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 997
    .end local v8           #skewCenterX:F
    .end local v9           #skewCenterY:F
    :cond_3
    iget v6, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    .line 998
    .local v6, scaleX:F
    iget v7, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    .line 999
    .local v7, scaleY:F
    const/high16 v12, 0x3f80

    cmpl-float v12, v6, v12

    if-nez v12, :cond_4

    const/high16 v12, 0x3f80

    cmpl-float v12, v7, v12

    if-eqz v12, :cond_5

    .line 1000
    :cond_4
    iget v4, p0, Lorg/andengine/entity/Entity;->mScaleCenterX:F

    .line 1001
    .local v4, scaleCenterX:F
    iget v5, p0, Lorg/andengine/entity/Entity;->mScaleCenterY:F

    .line 1003
    .local v5, scaleCenterY:F
    neg-float v12, v4

    neg-float v13, v5

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 1004
    const/high16 v12, 0x3f80

    div-float/2addr v12, v6

    const/high16 v13, 0x3f80

    div-float/2addr v13, v7

    invoke-virtual {v0, v12, v13}, Lorg/andengine/util/adt/transformation/Transformation;->postScale(FF)V

    .line 1005
    invoke-virtual {v0, v4, v5}, Lorg/andengine/util/adt/transformation/Transformation;->postTranslate(FF)V

    .line 1008
    .end local v4           #scaleCenterX:F
    .end local v5           #scaleCenterY:F
    :cond_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 1010
    .end local v1           #rotation:F
    .end local v6           #scaleX:F
    .end local v7           #scaleY:F
    .end local v10           #skewX:F
    .end local v11           #skewY:F
    :cond_6
    return-object v0
.end method

.method public getRed()F
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0}, Lorg/andengine/util/color/Color;->getRed()F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lorg/andengine/entity/Entity;->mRotation:F

    return v0
.end method

.method public getRotationCenterX()F
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lorg/andengine/entity/Entity;->mRotationCenterX:F

    return v0
.end method

.method public getRotationCenterY()F
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lorg/andengine/entity/Entity;->mRotationCenterY:F

    return v0
.end method

.method public getScaleCenterX()F
    .locals 1

    .prologue
    .line 366
    iget v0, p0, Lorg/andengine/entity/Entity;->mScaleCenterX:F

    return v0
.end method

.method public getScaleCenterY()F
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lorg/andengine/entity/Entity;->mScaleCenterY:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    return v0
.end method

.method public getSceneCenterCoordinates()[F
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 896
    invoke-virtual {p0, v0, v0}, Lorg/andengine/entity/Entity;->convertLocalToSceneCoordinates(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneCenterCoordinates([F)[F
    .locals 1
    .parameter "pReuse"

    .prologue
    const/4 v0, 0x0

    .line 901
    invoke-virtual {p0, v0, v0, p1}, Lorg/andengine/entity/Entity;->convertLocalToSceneCoordinates(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public getSceneToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;
    .locals 3

    .prologue
    .line 1033
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mSceneToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    if-nez v2, :cond_0

    .line 1034
    new-instance v2, Lorg/andengine/util/adt/transformation/Transformation;

    invoke-direct {v2}, Lorg/andengine/util/adt/transformation/Transformation;-><init>()V

    iput-object v2, p0, Lorg/andengine/entity/Entity;->mSceneToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    .line 1038
    :cond_0
    iget-object v1, p0, Lorg/andengine/entity/Entity;->mSceneToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;

    .line 1039
    .local v1, sceneToLocalTransformation:Lorg/andengine/util/adt/transformation/Transformation;
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getParentToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/andengine/util/adt/transformation/Transformation;->setTo(Lorg/andengine/util/adt/transformation/Transformation;)V

    .line 1041
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mParent:Lorg/andengine/entity/IEntity;

    .line 1042
    .local v0, parent:Lorg/andengine/entity/IEntity;
    if-eqz v0, :cond_1

    .line 1043
    invoke-interface {v0}, Lorg/andengine/entity/IEntity;->getSceneToLocalTransformation()Lorg/andengine/util/adt/transformation/Transformation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/andengine/util/adt/transformation/Transformation;->preConcat(Lorg/andengine/util/adt/transformation/Transformation;)V

    .line 1046
    :cond_1
    return-object v1
.end method

.method public getSkewCenterX()F
    .locals 1

    .prologue
    .line 450
    iget v0, p0, Lorg/andengine/entity/Entity;->mSkewCenterX:F

    return v0
.end method

.method public getSkewCenterY()F
    .locals 1

    .prologue
    .line 455
    iget v0, p0, Lorg/andengine/entity/Entity;->mSkewCenterY:F

    return v0
.end method

.method public getSkewX()F
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    return v0
.end method

.method public getSkewY()F
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    return v0
.end method

.method public getTag()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lorg/andengine/entity/Entity;->mTag:I

    return v0
.end method

.method public getUpdateHandlerCount()I
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 841
    const/4 v0, 0x0

    .line 843
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0}, Lorg/andengine/engine/handler/UpdateHandlerList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lorg/andengine/entity/Entity;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lorg/andengine/entity/Entity;->mY:F

    return v0
.end method

.method public getZIndex()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lorg/andengine/entity/Entity;->mZIndex:I

    return v0
.end method

.method public hasParent()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mParent:Lorg/andengine/entity/IEntity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChildrenIgnoreUpdate()Z
    .locals 1

    .prologue
    .line 179
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    return v0
.end method

.method public isChildrenVisible()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mChildrenVisible:Z

    return v0
.end method

.method public isCulled(Lorg/andengine/engine/camera/Camera;)Z
    .locals 1
    .parameter "pCamera"

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public isCullingEnabled()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mCullingEnabled:Z

    return v0
.end method

.method public isDisposed()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mDisposed:Z

    return v0
.end method

.method public isIgnoreUpdate()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mIgnoreUpdate:Z

    return v0
.end method

.method public isRotated()Z
    .locals 2

    .prologue
    .line 269
    iget v0, p0, Lorg/andengine/entity/Entity;->mRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRotatedOrScaledOrSkewed()Z
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    .line 485
    iget v0, p0, Lorg/andengine/entity/Entity;->mRotation:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isScaled()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 317
    iget v0, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSkewed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    iget v0, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mVisible:Z

    return v0
.end method

.method protected onApplyTransformations(Lorg/andengine/opengl/util/GLState;)V
    .locals 0
    .parameter "pGLState"

    .prologue
    .line 1283
    invoke-virtual {p0, p1}, Lorg/andengine/entity/Entity;->applyTranslation(Lorg/andengine/opengl/util/GLState;)V

    .line 1286
    invoke-virtual {p0, p1}, Lorg/andengine/entity/Entity;->applyRotation(Lorg/andengine/opengl/util/GLState;)V

    .line 1289
    invoke-virtual {p0, p1}, Lorg/andengine/entity/Entity;->applySkew(Lorg/andengine/opengl/util/GLState;)V

    .line 1292
    invoke-virtual {p0, p1}, Lorg/andengine/entity/Entity;->applyScale(Lorg/andengine/opengl/util/GLState;)V

    .line 1293
    return-void
.end method

.method public onAttached()V
    .locals 0

    .prologue
    .line 1140
    return-void
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 1145
    return-void
.end method

.method public final onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 1
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 1159
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mVisible:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mCullingEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/andengine/entity/Entity;->isCulled(Lorg/andengine/engine/camera/Camera;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1160
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/Entity;->onManagedDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 1162
    :cond_1
    return-void
.end method

.method protected onManagedDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 6
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 1345
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->pushModelViewGLMatrix()V

    .line 1347
    invoke-virtual {p0, p1}, Lorg/andengine/entity/Entity;->onApplyTransformations(Lorg/andengine/opengl/util/GLState;)V

    .line 1349
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    .line 1350
    .local v2, children:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lorg/andengine/entity/Entity;->mChildrenVisible:Z

    if-nez v4, :cond_2

    .line 1352
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/Entity;->preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 1353
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/Entity;->draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 1354
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/Entity;->postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 1387
    :cond_1
    invoke-virtual {p1}, Lorg/andengine/opengl/util/GLState;->popModelViewGLMatrix()V

    .line 1388
    return-void

    .line 1356
    :cond_2
    iget-boolean v4, p0, Lorg/andengine/entity/Entity;->mChildrenSortPending:Z

    if-eqz v4, :cond_3

    .line 1357
    invoke-static {}, Lorg/andengine/entity/ZIndexSorter;->getInstance()Lorg/andengine/entity/ZIndexSorter;

    move-result-object v4

    iget-object v5, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v4, v5}, Lorg/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;)V

    .line 1358
    const/4 v4, 0x0

    iput-boolean v4, p0, Lorg/andengine/entity/Entity;->mChildrenSortPending:Z

    .line 1361
    :cond_3
    invoke-virtual {v2}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v1

    .line 1362
    .local v1, childCount:I
    const/4 v3, 0x0

    .line 1365
    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_5

    .line 1376
    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/Entity;->preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 1377
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/Entity;->draw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 1378
    invoke-virtual {p0, p1, p2}, Lorg/andengine/entity/Entity;->postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 1381
    :goto_1
    if-ge v3, v1, :cond_1

    .line 1382
    invoke-virtual {v2, v3}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/entity/IEntity;

    invoke-interface {v4, p1, p2}, Lorg/andengine/entity/IEntity;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 1381
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1366
    :cond_5
    invoke-virtual {v2, v3}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    .line 1367
    .local v0, child:Lorg/andengine/entity/IEntity;
    invoke-interface {v0}, Lorg/andengine/entity/IEntity;->getZIndex()I

    move-result v4

    if-gez v4, :cond_4

    .line 1368
    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/IEntity;->onDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V

    .line 1365
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onManagedUpdate(F)V
    .locals 4
    .parameter "pSecondsElapsed"

    .prologue
    .line 1391
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    if-eqz v3, :cond_0

    .line 1392
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v3, p1}, Lorg/andengine/entity/modifier/EntityModifierList;->onUpdate(F)V

    .line 1394
    :cond_0
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-eqz v3, :cond_1

    .line 1395
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v3, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->onUpdate(F)V

    .line 1398
    :cond_1
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lorg/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    if-nez v3, :cond_2

    .line 1399
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    .line 1400
    .local v0, entities:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    invoke-virtual {v0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v1

    .line 1401
    .local v1, entityCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_3

    .line 1405
    .end local v0           #entities:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    .end local v1           #entityCount:I
    .end local v2           #i:I
    :cond_2
    return-void

    .line 1402
    .restart local v0       #entities:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    .restart local v1       #entityCount:I
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {v0, v2}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/andengine/entity/IEntity;

    invoke-interface {v3, p1}, Lorg/andengine/entity/IEntity;->onUpdate(F)V

    .line 1401
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final onUpdate(F)V
    .locals 1
    .parameter "pSecondsElapsed"

    .prologue
    .line 1166
    iget-boolean v0, p0, Lorg/andengine/entity/Entity;->mIgnoreUpdate:Z

    if-nez v0, :cond_0

    .line 1167
    invoke-virtual {p0, p1}, Lorg/andengine/entity/Entity;->onManagedUpdate(F)V

    .line 1169
    :cond_0
    return-void
.end method

.method protected onUpdateColor()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method protected postDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 0
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 1267
    return-void
.end method

.method protected preDraw(Lorg/andengine/opengl/util/GLState;Lorg/andengine/engine/camera/Camera;)V
    .locals 0
    .parameter "pGLState"
    .parameter "pCamera"

    .prologue
    .line 1251
    return-void
.end method

.method public query(Lorg/andengine/entity/IEntityMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "pEntityMatcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/entity/IEntityMatcher;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/Entity;->query(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public query(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter "pEntityMatcher"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;>(",
            "Lorg/andengine/entity/IEntityMatcher;",
            "T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, pResult:Ljava/util/List;,"TL;"
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getChildCount()I

    move-result v1

    .line 671
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 680
    return-object p2

    .line 672
    :cond_0
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v3, v2}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    .line 673
    .local v0, child:Lorg/andengine/entity/IEntity;
    invoke-interface {p1, v0}, Lorg/andengine/entity/IEntityMatcher;->matches(Lorg/andengine/entity/IEntity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 674
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    :cond_1
    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/IEntity;->query(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;

    .line 671
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public queryFirst(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
    .locals 1
    .parameter "pEntityMatcher"

    .prologue
    .line 646
    invoke-virtual {p0, p1}, Lorg/andengine/entity/Entity;->queryFirstForSubclass(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;

    move-result-object v0

    return-object v0
.end method

.method public queryFirstForSubclass(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;
    .locals 5
    .parameter "pEntityMatcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/andengine/entity/IEntity;",
            ">(",
            "Lorg/andengine/entity/IEntityMatcher;",
            ")TS;"
        }
    .end annotation

    .prologue
    .line 652
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getChildCount()I

    move-result v1

    .line 653
    .local v1, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v1, :cond_1

    .line 665
    const/4 v0, 0x0

    :cond_0
    :goto_1
    return-object v0

    .line 654
    :cond_1
    iget-object v4, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v4, v3}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    .line 655
    .local v0, child:Lorg/andengine/entity/IEntity;
    invoke-interface {p1, v0}, Lorg/andengine/entity/IEntityMatcher;->matches(Lorg/andengine/entity/IEntity;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 659
    invoke-interface {v0, p1}, Lorg/andengine/entity/IEntity;->queryFirstForSubclass(Lorg/andengine/entity/IEntityMatcher;)Lorg/andengine/entity/IEntity;

    move-result-object v2

    .line 660
    .local v2, childQueryFirst:Lorg/andengine/entity/IEntity;,"TS;"
    if-eqz v2, :cond_2

    move-object v0, v2

    .line 661
    goto :goto_1

    .line 653
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public queryForSubclass(Lorg/andengine/entity/IEntityMatcher;)Ljava/util/ArrayList;
    .locals 1
    .parameter "pEntityMatcher"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lorg/andengine/entity/IEntity;",
            ">(",
            "Lorg/andengine/entity/IEntityMatcher;",
            ")",
            "Ljava/util/ArrayList",
            "<TS;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Lorg/andengine/entity/Entity;->queryForSubclass(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public queryForSubclass(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .parameter "pEntityMatcher"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Ljava/util/List",
            "<TS;>;S::",
            "Lorg/andengine/entity/IEntity;",
            ">(",
            "Lorg/andengine/entity/IEntityMatcher;",
            "T",
            "L;",
            ")T",
            "L;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .prologue
    .line 691
    .local p2, pResult:Ljava/util/List;,"TL;"
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->getChildCount()I

    move-result v1

    .line 692
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 701
    return-object p2

    .line 693
    :cond_0
    iget-object v3, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v3, v2}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/entity/IEntity;

    .line 694
    .local v0, child:Lorg/andengine/entity/IEntity;
    invoke-interface {p1, v0}, Lorg/andengine/entity/IEntityMatcher;->matches(Lorg/andengine/entity/IEntity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 695
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    :cond_1
    invoke-interface {v0, p1, p2}, Lorg/andengine/entity/IEntity;->queryForSubclass(Lorg/andengine/entity/IEntityMatcher;Ljava/util/List;)Ljava/util/List;

    .line 692
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public registerEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)V
    .locals 1
    .parameter "pEntityModifier"

    .prologue
    .line 856
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    .line 857
    invoke-direct {p0}, Lorg/andengine/entity/Entity;->allocateEntityModifiers()V

    .line 859
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/andengine/entity/modifier/EntityModifierList;->add(Lorg/andengine/util/modifier/IModifier;)Z

    .line 860
    return-void
.end method

.method public registerUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)V
    .locals 1
    .parameter "pUpdateHandler"

    .prologue
    .line 816
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 817
    invoke-direct {p0}, Lorg/andengine/entity/Entity;->allocateUpdateHandlers()V

    .line 819
    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->add(Ljava/lang/Object;)Z

    .line 820
    return-void
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1173
    iput-boolean v5, p0, Lorg/andengine/entity/Entity;->mVisible:Z

    .line 1174
    iput-boolean v3, p0, Lorg/andengine/entity/Entity;->mCullingEnabled:Z

    .line 1175
    iput-boolean v3, p0, Lorg/andengine/entity/Entity;->mIgnoreUpdate:Z

    .line 1176
    iput-boolean v5, p0, Lorg/andengine/entity/Entity;->mChildrenVisible:Z

    .line 1177
    iput-boolean v3, p0, Lorg/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    .line 1179
    iput v2, p0, Lorg/andengine/entity/Entity;->mRotation:F

    .line 1180
    iput v4, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    .line 1181
    iput v4, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    .line 1182
    iput v2, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    .line 1183
    iput v2, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    .line 1185
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v2}, Lorg/andengine/util/color/Color;->reset()V

    .line 1187
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    if-eqz v2, :cond_0

    .line 1188
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v2}, Lorg/andengine/entity/modifier/EntityModifierList;->reset()V

    .line 1191
    :cond_0
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-eqz v2, :cond_1

    .line 1192
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    .line 1193
    .local v0, entities:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    invoke-virtual {v0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_2

    .line 1197
    .end local v0           #entities:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    .end local v1           #i:I
    :cond_1
    return-void

    .line 1194
    .restart local v0       #entities:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    .restart local v1       #i:I
    :cond_2
    invoke-virtual {v0, v1}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/entity/IEntity;

    invoke-interface {v2}, Lorg/andengine/entity/IEntity;->reset()V

    .line 1193
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "pAlpha"

    .prologue
    .line 555
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1}, Lorg/andengine/util/color/Color;->setAlphaChecking(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->onUpdateColor()V

    .line 558
    :cond_0
    return-void
.end method

.method public setBlue(F)V
    .locals 1
    .parameter "pBlue"

    .prologue
    .line 545
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1}, Lorg/andengine/util/color/Color;->setBlueChecking(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->onUpdateColor()V

    .line 548
    :cond_0
    return-void
.end method

.method public setChildrenIgnoreUpdate(Z)V
    .locals 0
    .parameter "pChildrenIgnoreUpdate"

    .prologue
    .line 184
    iput-boolean p1, p0, Lorg/andengine/entity/Entity;->mChildrenIgnoreUpdate:Z

    .line 185
    return-void
.end method

.method public setChildrenVisible(Z)V
    .locals 0
    .parameter "pChildrenVisible"

    .prologue
    .line 164
    iput-boolean p1, p0, Lorg/andengine/entity/Entity;->mChildrenVisible:Z

    .line 165
    return-void
.end method

.method public setColor(FFF)V
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"

    .prologue
    .line 567
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1, p2, p3}, Lorg/andengine/util/color/Color;->setChecking(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->onUpdateColor()V

    .line 570
    :cond_0
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .parameter "pRed"
    .parameter "pGreen"
    .parameter "pBlue"
    .parameter "pAlpha"

    .prologue
    .line 580
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/andengine/util/color/Color;->setChecking(FFFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->onUpdateColor()V

    .line 583
    :cond_0
    return-void
.end method

.method public setColor(Lorg/andengine/util/color/Color;)V
    .locals 1
    .parameter "pColor"

    .prologue
    .line 515
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1}, Lorg/andengine/util/color/Color;->set(Lorg/andengine/util/color/Color;)V

    .line 517
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->onUpdateColor()V

    .line 518
    return-void
.end method

.method public setCullingEnabled(Z)V
    .locals 0
    .parameter "pCullingEnabled"

    .prologue
    .line 149
    iput-boolean p1, p0, Lorg/andengine/entity/Entity;->mCullingEnabled:Z

    .line 150
    return-void
.end method

.method public setGreen(F)V
    .locals 1
    .parameter "pGreen"

    .prologue
    .line 535
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1}, Lorg/andengine/util/color/Color;->setGreenChecking(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->onUpdateColor()V

    .line 538
    :cond_0
    return-void
.end method

.method public setIgnoreUpdate(Z)V
    .locals 0
    .parameter "pIgnoreUpdate"

    .prologue
    .line 174
    iput-boolean p1, p0, Lorg/andengine/entity/Entity;->mIgnoreUpdate:Z

    .line 175
    return-void
.end method

.method public setParent(Lorg/andengine/entity/IEntity;)V
    .locals 0
    .parameter "pEntity"

    .prologue
    .line 199
    iput-object p1, p0, Lorg/andengine/entity/Entity;->mParent:Lorg/andengine/entity/IEntity;

    .line 200
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .parameter "pX"
    .parameter "pY"

    .prologue
    const/4 v0, 0x1

    .line 255
    iput p1, p0, Lorg/andengine/entity/Entity;->mX:F

    .line 256
    iput p2, p0, Lorg/andengine/entity/Entity;->mY:F

    .line 258
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 259
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 260
    return-void
.end method

.method public setPosition(Lorg/andengine/entity/IEntity;)V
    .locals 2
    .parameter "pOtherEntity"

    .prologue
    .line 250
    invoke-interface {p1}, Lorg/andengine/entity/IEntity;->getX()F

    move-result v0

    invoke-interface {p1}, Lorg/andengine/entity/IEntity;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/andengine/entity/Entity;->setPosition(FF)V

    .line 251
    return-void
.end method

.method public setRed(F)V
    .locals 1
    .parameter "pRed"

    .prologue
    .line 525
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mColor:Lorg/andengine/util/color/Color;

    invoke-virtual {v0, p1}, Lorg/andengine/util/color/Color;->setRedChecking(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lorg/andengine/entity/Entity;->onUpdateColor()V

    .line 528
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .parameter "pRotation"

    .prologue
    const/4 v0, 0x1

    .line 274
    iput p1, p0, Lorg/andengine/entity/Entity;->mRotation:F

    .line 276
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 277
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 278
    return-void
.end method

.method public setRotationCenter(FF)V
    .locals 1
    .parameter "pRotationCenterX"
    .parameter "pRotationCenterY"

    .prologue
    const/4 v0, 0x1

    .line 308
    iput p1, p0, Lorg/andengine/entity/Entity;->mRotationCenterX:F

    .line 309
    iput p2, p0, Lorg/andengine/entity/Entity;->mRotationCenterY:F

    .line 311
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 312
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 313
    return-void
.end method

.method public setRotationCenterX(F)V
    .locals 1
    .parameter "pRotationCenterX"

    .prologue
    const/4 v0, 0x1

    .line 292
    iput p1, p0, Lorg/andengine/entity/Entity;->mRotationCenterX:F

    .line 294
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 295
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 296
    return-void
.end method

.method public setRotationCenterY(F)V
    .locals 1
    .parameter "pRotationCenterY"

    .prologue
    const/4 v0, 0x1

    .line 300
    iput p1, p0, Lorg/andengine/entity/Entity;->mRotationCenterY:F

    .line 302
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 303
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 304
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter "pScale"

    .prologue
    const/4 v0, 0x1

    .line 348
    iput p1, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    .line 349
    iput p1, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    .line 351
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 352
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 353
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .parameter "pScaleX"
    .parameter "pScaleY"

    .prologue
    const/4 v0, 0x1

    .line 357
    iput p1, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    .line 358
    iput p2, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    .line 360
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 361
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 362
    return-void
.end method

.method public setScaleCenter(FF)V
    .locals 1
    .parameter "pScaleCenterX"
    .parameter "pScaleCenterY"

    .prologue
    const/4 v0, 0x1

    .line 392
    iput p1, p0, Lorg/andengine/entity/Entity;->mScaleCenterX:F

    .line 393
    iput p2, p0, Lorg/andengine/entity/Entity;->mScaleCenterY:F

    .line 395
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 396
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 397
    return-void
.end method

.method public setScaleCenterX(F)V
    .locals 1
    .parameter "pScaleCenterX"

    .prologue
    const/4 v0, 0x1

    .line 376
    iput p1, p0, Lorg/andengine/entity/Entity;->mScaleCenterX:F

    .line 378
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 379
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 380
    return-void
.end method

.method public setScaleCenterY(F)V
    .locals 1
    .parameter "pScaleCenterY"

    .prologue
    const/4 v0, 0x1

    .line 384
    iput p1, p0, Lorg/andengine/entity/Entity;->mScaleCenterY:F

    .line 386
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 387
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 388
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .parameter "pScaleX"

    .prologue
    const/4 v0, 0x1

    .line 332
    iput p1, p0, Lorg/andengine/entity/Entity;->mScaleX:F

    .line 334
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 335
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 336
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .parameter "pScaleY"

    .prologue
    const/4 v0, 0x1

    .line 340
    iput p1, p0, Lorg/andengine/entity/Entity;->mScaleY:F

    .line 342
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 343
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 344
    return-void
.end method

.method public setSkew(F)V
    .locals 1
    .parameter "pSkew"

    .prologue
    const/4 v0, 0x1

    .line 432
    iput p1, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    .line 433
    iput p1, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    .line 435
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 436
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 437
    return-void
.end method

.method public setSkew(FF)V
    .locals 1
    .parameter "pSkewX"
    .parameter "pSkewY"

    .prologue
    const/4 v0, 0x1

    .line 441
    iput p1, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    .line 442
    iput p2, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    .line 444
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 445
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 446
    return-void
.end method

.method public setSkewCenter(FF)V
    .locals 1
    .parameter "pSkewCenterX"
    .parameter "pSkewCenterY"

    .prologue
    const/4 v0, 0x1

    .line 476
    iput p1, p0, Lorg/andengine/entity/Entity;->mSkewCenterX:F

    .line 477
    iput p2, p0, Lorg/andengine/entity/Entity;->mSkewCenterY:F

    .line 479
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 480
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 481
    return-void
.end method

.method public setSkewCenterX(F)V
    .locals 1
    .parameter "pSkewCenterX"

    .prologue
    const/4 v0, 0x1

    .line 460
    iput p1, p0, Lorg/andengine/entity/Entity;->mSkewCenterX:F

    .line 462
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 463
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 464
    return-void
.end method

.method public setSkewCenterY(F)V
    .locals 1
    .parameter "pSkewCenterY"

    .prologue
    const/4 v0, 0x1

    .line 468
    iput p1, p0, Lorg/andengine/entity/Entity;->mSkewCenterY:F

    .line 470
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 471
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 472
    return-void
.end method

.method public setSkewX(F)V
    .locals 1
    .parameter "pSkewX"

    .prologue
    const/4 v0, 0x1

    .line 416
    iput p1, p0, Lorg/andengine/entity/Entity;->mSkewX:F

    .line 418
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 419
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 420
    return-void
.end method

.method public setSkewY(F)V
    .locals 1
    .parameter "pSkewY"

    .prologue
    const/4 v0, 0x1

    .line 424
    iput p1, p0, Lorg/andengine/entity/Entity;->mSkewY:F

    .line 426
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 427
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 428
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .parameter "pTag"

    .prologue
    .line 209
    iput p1, p0, Lorg/andengine/entity/Entity;->mTag:I

    .line 210
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .parameter "pUserData"

    .prologue
    .line 1154
    iput-object p1, p0, Lorg/andengine/entity/Entity;->mUserData:Ljava/lang/Object;

    .line 1155
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "pVisible"

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/andengine/entity/Entity;->mVisible:Z

    .line 140
    return-void
.end method

.method public setX(F)V
    .locals 1
    .parameter "pX"

    .prologue
    const/4 v0, 0x1

    .line 234
    iput p1, p0, Lorg/andengine/entity/Entity;->mX:F

    .line 236
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 237
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 238
    return-void
.end method

.method public setY(F)V
    .locals 1
    .parameter "pY"

    .prologue
    const/4 v0, 0x1

    .line 242
    iput p1, p0, Lorg/andengine/entity/Entity;->mY:F

    .line 244
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mLocalToParentTransformationDirty:Z

    .line 245
    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mParentToLocalTransformationDirty:Z

    .line 246
    return-void
.end method

.method public setZIndex(I)V
    .locals 0
    .parameter "pZIndex"

    .prologue
    .line 219
    iput p1, p0, Lorg/andengine/entity/Entity;->mZIndex:I

    .line 220
    return-void
.end method

.method public sortChildren()V
    .locals 1

    .prologue
    .line 736
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/andengine/entity/Entity;->sortChildren(Z)V

    .line 737
    return-void
.end method

.method public sortChildren(Lorg/andengine/entity/IEntityComparator;)V
    .locals 2
    .parameter "pEntityComparator"

    .prologue
    .line 753
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 757
    :goto_0
    return-void

    .line 756
    :cond_0
    invoke-static {}, Lorg/andengine/entity/ZIndexSorter;->getInstance()Lorg/andengine/entity/ZIndexSorter;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, v1, p1}, Lorg/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public sortChildren(Z)V
    .locals 2
    .parameter "pImmediate"

    .prologue
    .line 741
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-nez v0, :cond_0

    .line 749
    :goto_0
    return-void

    .line 744
    :cond_0
    if-eqz p1, :cond_1

    .line 745
    invoke-static {}, Lorg/andengine/entity/ZIndexSorter;->getInstance()Lorg/andengine/entity/ZIndexSorter;

    move-result-object v0

    iget-object v1, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0, v1}, Lorg/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;)V

    goto :goto_0

    .line 747
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/entity/Entity;->mChildrenSortPending:Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1220
    .local v0, stringBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/andengine/entity/Entity;->toString(Ljava/lang/StringBuilder;)V

    .line 1221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "pStringBuilder"

    .prologue
    .line 1226
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    iget-object v2, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v2}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1229
    const-string v2, " ["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mChildren:Lorg/andengine/util/adt/list/SmartList;

    .line 1231
    .local v0, entities:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 1237
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    .end local v0           #entities:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1232
    .restart local v0       #entities:Lorg/andengine/util/adt/list/SmartList;,"Lorg/andengine/util/adt/list/SmartList<Lorg/andengine/entity/IEntity;>;"
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v0, v1}, Lorg/andengine/util/adt/list/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/entity/IEntity;

    invoke-interface {v2, p1}, Lorg/andengine/entity/IEntity;->toString(Ljava/lang/StringBuilder;)V

    .line 1233
    invoke-virtual {v0}, Lorg/andengine/util/adt/list/SmartList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 1234
    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public unregisterEntityModifier(Lorg/andengine/entity/modifier/IEntityModifier;)Z
    .locals 1
    .parameter "pEntityModifier"

    .prologue
    .line 864
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    .line 865
    const/4 v0, 0x0

    .line 867
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/andengine/entity/modifier/EntityModifierList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterEntityModifiers(Lorg/andengine/entity/modifier/IEntityModifier$IEntityModifierMatcher;)Z
    .locals 1
    .parameter "pEntityModifierMatcher"

    .prologue
    .line 872
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    if-nez v0, :cond_0

    .line 873
    const/4 v0, 0x0

    .line 875
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mEntityModifiers:Lorg/andengine/entity/modifier/EntityModifierList;

    invoke-virtual {v0, p1}, Lorg/andengine/entity/modifier/EntityModifierList;->removeAll(Lorg/andengine/util/IMatcher;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterUpdateHandler(Lorg/andengine/engine/handler/IUpdateHandler;)Z
    .locals 1
    .parameter "pUpdateHandler"

    .prologue
    .line 824
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 825
    const/4 v0, 0x0

    .line 827
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public unregisterUpdateHandlers(Lorg/andengine/engine/handler/IUpdateHandler$IUpdateHandlerMatcher;)Z
    .locals 1
    .parameter "pUpdateHandlerMatcher"

    .prologue
    .line 832
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    if-nez v0, :cond_0

    .line 833
    const/4 v0, 0x0

    .line 835
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/entity/Entity;->mUpdateHandlers:Lorg/andengine/engine/handler/UpdateHandlerList;

    invoke-virtual {v0, p1}, Lorg/andengine/engine/handler/UpdateHandlerList;->removeAll(Lorg/andengine/util/IMatcher;)Z

    move-result v0

    goto :goto_0
.end method
