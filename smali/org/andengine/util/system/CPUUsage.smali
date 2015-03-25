.class public Lorg/andengine/util/system/CPUUsage;
.super Ljava/lang/Object;
.source "CPUUsage.java"


# instance fields
.field private mIdle:J

.field private mTotal:J

.field private mUsage:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide v0, p0, Lorg/andengine/util/system/CPUUsage;->mTotal:J

    .line 28
    iput-wide v0, p0, Lorg/andengine/util/system/CPUUsage;->mIdle:J

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/util/system/CPUUsage;->mUsage:F

    .line 37
    return-void
.end method


# virtual methods
.method public getUsage()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/andengine/util/system/CPUUsage;->mUsage:F

    return v0
.end method

.method public update()V
    .locals 22

    .prologue
    .line 59
    const/4 v9, 0x0

    .line 61
    .local v9, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    new-instance v18, Ljava/io/FileInputStream;

    const-string v19, "/proc/stat"

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v18, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v9           #reader:Ljava/io/BufferedReader;
    .local v10, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, procStatString:Ljava/lang/String;
    sget-object v17, Lorg/andengine/util/TextUtils;->SPLITPATTERN_SPACE:Ljava/util/regex/Pattern;

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    .line 66
    .local v7, parts:[Ljava/lang/String;
    const/16 v17, 0x2

    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 67
    .local v15, user:J
    const/16 v17, 0x3

    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 68
    .local v5, nice:J
    const/16 v17, 0x4

    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 69
    .local v11, system:J
    const/16 v17, 0x5

    aget-object v17, v7, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 71
    .local v3, idle:J
    add-long v17, v15, v5

    add-long v13, v17, v11

    .line 73
    .local v13, total:J
    const/high16 v17, 0x42c8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/andengine/util/system/CPUUsage;->mTotal:J

    move-wide/from16 v18, v0

    sub-long v18, v13, v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    mul-float v17, v17, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/andengine/util/system/CPUUsage;->mTotal:J

    move-wide/from16 v18, v0

    sub-long v18, v13, v18

    add-long v18, v18, v3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/andengine/util/system/CPUUsage;->mIdle:J

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/andengine/util/system/CPUUsage;->mUsage:F

    .line 75
    move-object/from16 v0, p0

    iput-wide v13, v0, Lorg/andengine/util/system/CPUUsage;->mTotal:J

    .line 76
    move-object/from16 v0, p0

    iput-wide v3, v0, Lorg/andengine/util/system/CPUUsage;->mIdle:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    invoke-static {v10}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    move-object v9, v10

    .line 82
    .end local v3           #idle:J
    .end local v5           #nice:J
    .end local v7           #parts:[Ljava/lang/String;
    .end local v8           #procStatString:Ljava/lang/String;
    .end local v10           #reader:Ljava/io/BufferedReader;
    .end local v11           #system:J
    .end local v13           #total:J
    .end local v15           #user:J
    .restart local v9       #reader:Ljava/io/BufferedReader;
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-static {v2}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    invoke-static {v9}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    goto :goto_0

    .line 79
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v17

    .line 80
    :goto_2
    invoke-static {v9}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 81
    throw v17

    .line 79
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v17

    move-object v9, v10

    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 77
    .end local v9           #reader:Ljava/io/BufferedReader;
    .restart local v10       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    move-object v9, v10

    .end local v10           #reader:Ljava/io/BufferedReader;
    .restart local v9       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method
