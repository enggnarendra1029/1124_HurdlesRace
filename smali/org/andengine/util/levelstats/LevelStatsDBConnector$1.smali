.class Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;
.super Ljava/lang/Object;
.source "LevelStatsDBConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/andengine/util/levelstats/LevelStatsDBConnector;->submitAsync(IZILorg/andengine/util/call/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/andengine/util/levelstats/LevelStatsDBConnector;

.field private final synthetic val$pCallback:Lorg/andengine/util/call/Callback;

.field private final synthetic val$pLevelID:I

.field private final synthetic val$pSecondsElapsed:I

.field private final synthetic val$pSolved:Z


# direct methods
.method constructor <init>(Lorg/andengine/util/levelstats/LevelStatsDBConnector;IZILorg/andengine/util/call/Callback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->this$0:Lorg/andengine/util/levelstats/LevelStatsDBConnector;

    iput p2, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pLevelID:I

    iput-boolean p3, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pSolved:Z

    iput p4, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pSecondsElapsed:I

    iput-object p5, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 82
    :try_start_0
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 83
    .local v1, httpClient:Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->this$0:Lorg/andengine/util/levelstats/LevelStatsDBConnector;

    #getter for: Lorg/andengine/util/levelstats/LevelStatsDBConnector;->mSubmitURL:Ljava/lang/String;
    invoke-static {v7}, Lorg/andengine/util/levelstats/LevelStatsDBConnector;->access$0(Lorg/andengine/util/levelstats/LevelStatsDBConnector;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 86
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v4, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 88
    .local v4, nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "level_id"

    iget v9, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pLevelID:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    new-instance v8, Lorg/apache/http/message/BasicNameValuePair;

    const-string v9, "solved"

    iget-boolean v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pSolved:Z

    if-eqz v7, :cond_1

    const-string v7, "1"

    :goto_0
    invoke-direct {v8, v9, v7}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "secondsplayed"

    iget v9, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pSecondsElapsed:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "player_id"

    iget-object v9, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->this$0:Lorg/andengine/util/levelstats/LevelStatsDBConnector;

    #getter for: Lorg/andengine/util/levelstats/LevelStatsDBConnector;->mPlayerID:I
    invoke-static {v9}, Lorg/andengine/util/levelstats/LevelStatsDBConnector;->access$1(Lorg/andengine/util/levelstats/LevelStatsDBConnector;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "secret"

    iget-object v9, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->this$0:Lorg/andengine/util/levelstats/LevelStatsDBConnector;

    #getter for: Lorg/andengine/util/levelstats/LevelStatsDBConnector;->mSecret:Ljava/lang/String;
    invoke-static {v9}, Lorg/andengine/util/levelstats/LevelStatsDBConnector;->access$2(Lorg/andengine/util/levelstats/LevelStatsDBConnector;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    new-instance v7, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v7, v4}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 97
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 99
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 100
    .local v6, statusCode:I
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_3

    .line 101
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Lorg/andengine/util/StreamUtils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, response:Ljava/lang/String;
    const-string v7, "<success/>"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 104
    iget-object v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    if-eqz v7, :cond_0

    .line 105
    iget-object v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    .line 123
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5           #response:Ljava/lang/String;
    .end local v6           #statusCode:I
    :cond_0
    :goto_1
    return-void

    .line 89
    .restart local v1       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v2       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v4       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_1
    const-string v7, "0"

    goto :goto_0

    .line 108
    .restart local v3       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v5       #response:Ljava/lang/String;
    .restart local v6       #statusCode:I
    :cond_2
    iget-object v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    if-eqz v7, :cond_0

    .line 109
    iget-object v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 117
    .end local v1           #httpClient:Lorg/apache/http/client/HttpClient;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v5           #response:Ljava/lang/String;
    .end local v6           #statusCode:I
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/IOException;
    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    .line 119
    iget-object v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    if-eqz v7, :cond_0

    .line 120
    iget-object v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V

    goto :goto_1

    .line 113
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #httpClient:Lorg/apache/http/client/HttpClient;
    .restart local v2       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v3       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v4       #nameValuePairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v6       #statusCode:I
    :cond_3
    :try_start_1
    iget-object v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    if-eqz v7, :cond_0

    .line 114
    iget-object v7, p0, Lorg/andengine/util/levelstats/LevelStatsDBConnector$1;->val$pCallback:Lorg/andengine/util/call/Callback;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/andengine/util/call/Callback;->onCallback(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
