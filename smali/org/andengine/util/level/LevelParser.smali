.class public Lorg/andengine/util/level/LevelParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "LevelParser.java"


# instance fields
.field private final mDefaultEntityLoader:Lorg/andengine/util/level/IEntityLoader;

.field private final mEntityLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/andengine/util/level/IEntityLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mParentEntityStack:Lorg/andengine/util/adt/list/SmartList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/andengine/util/adt/list/SmartList",
            "<",
            "Lorg/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/andengine/util/level/IEntityLoader;Ljava/util/HashMap;)V
    .locals 1
    .parameter "pDefaultEntityLoader"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/andengine/util/level/IEntityLoader;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/andengine/util/level/IEntityLoader;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, pEntityLoaders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lorg/andengine/util/level/IEntityLoader;>;"
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 30
    new-instance v0, Lorg/andengine/util/adt/list/SmartList;

    invoke-direct {v0}, Lorg/andengine/util/adt/list/SmartList;-><init>()V

    iput-object v0, p0, Lorg/andengine/util/level/LevelParser;->mParentEntityStack:Lorg/andengine/util/adt/list/SmartList;

    .line 37
    iput-object p1, p0, Lorg/andengine/util/level/LevelParser;->mDefaultEntityLoader:Lorg/andengine/util/level/IEntityLoader;

    .line 38
    iput-object p2, p0, Lorg/andengine/util/level/LevelParser;->mEntityLoaders:Ljava/util/HashMap;

    .line 39
    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pUri"
    .parameter "pLocalName"
    .parameter "pQualifiedName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/andengine/util/level/LevelParser;->mParentEntityStack:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v0}, Lorg/andengine/util/adt/list/SmartList;->removeLast()Ljava/lang/Object;

    .line 76
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 7
    .parameter "pUri"
    .parameter "pLocalName"
    .parameter "pQualifiedName"
    .parameter "pAttributes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v2, p2

    .line 53
    .local v2, entityName:Ljava/lang/String;
    iget-object v4, p0, Lorg/andengine/util/level/LevelParser;->mParentEntityStack:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v4}, Lorg/andengine/util/adt/list/SmartList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 55
    .local v3, parent:Lorg/andengine/entity/IEntity;
    :goto_0
    iget-object v4, p0, Lorg/andengine/util/level/LevelParser;->mEntityLoaders:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/andengine/util/level/IEntityLoader;

    .line 58
    .local v1, entityLoader:Lorg/andengine/util/level/IEntityLoader;
    if-eqz v1, :cond_2

    .line 59
    invoke-interface {v1, v2, p4}, Lorg/andengine/util/level/IEntityLoader;->onLoadEntity(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/andengine/entity/IEntity;

    move-result-object v0

    .line 66
    .local v0, entity:Lorg/andengine/entity/IEntity;
    :goto_1
    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v3, v0}, Lorg/andengine/entity/IEntity;->attachChild(Lorg/andengine/entity/IEntity;)V

    .line 70
    :cond_0
    iget-object v4, p0, Lorg/andengine/util/level/LevelParser;->mParentEntityStack:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v4, v0}, Lorg/andengine/util/adt/list/SmartList;->addLast(Ljava/lang/Object;)V

    .line 71
    return-void

    .line 53
    .end local v0           #entity:Lorg/andengine/entity/IEntity;
    .end local v1           #entityLoader:Lorg/andengine/util/level/IEntityLoader;
    .end local v3           #parent:Lorg/andengine/entity/IEntity;
    :cond_1
    iget-object v4, p0, Lorg/andengine/util/level/LevelParser;->mParentEntityStack:Lorg/andengine/util/adt/list/SmartList;

    invoke-virtual {v4}, Lorg/andengine/util/adt/list/SmartList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/andengine/entity/IEntity;

    move-object v3, v4

    goto :goto_0

    .line 60
    .restart local v1       #entityLoader:Lorg/andengine/util/level/IEntityLoader;
    .restart local v3       #parent:Lorg/andengine/entity/IEntity;
    :cond_2
    iget-object v4, p0, Lorg/andengine/util/level/LevelParser;->mDefaultEntityLoader:Lorg/andengine/util/level/IEntityLoader;

    if-eqz v4, :cond_3

    .line 61
    iget-object v4, p0, Lorg/andengine/util/level/LevelParser;->mDefaultEntityLoader:Lorg/andengine/util/level/IEntityLoader;

    invoke-interface {v4, v2, p4}, Lorg/andengine/util/level/IEntityLoader;->onLoadEntity(Ljava/lang/String;Lorg/xml/sax/Attributes;)Lorg/andengine/entity/IEntity;

    move-result-object v0

    .line 62
    .restart local v0       #entity:Lorg/andengine/entity/IEntity;
    goto :goto_1

    .line 63
    .end local v0           #entity:Lorg/andengine/entity/IEntity;
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected tag: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
