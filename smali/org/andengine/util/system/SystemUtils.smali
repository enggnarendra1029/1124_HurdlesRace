.class public Lorg/andengine/util/system/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
    }
.end annotation


# static fields
.field private static final BOGOMIPS_PATTERN:Ljava/lang/String; = "BogoMIPS[\\s]*:[\\s]*(\\d+\\.\\d+)[\\s]*\n"

.field private static final MEMFREE_PATTERN:Ljava/lang/String; = "MemFree[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

.field private static final MEMTOTAL_PATTERN:Ljava/lang/String; = "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

.field public static final SDK_VERSION_ECLAIR_OR_LATER:Z

.field public static final SDK_VERSION_FROYO_OR_LATER:Z

.field public static final SDK_VERSION_GINGERBREAD_OR_LATER:Z

.field public static final SDK_VERSION_HONEYCOMB_OR_LATER:Z

.field public static final SDK_VERSION_ICE_CREAM_SANDWICH_OR_LATER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 30
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_ECLAIR_OR_LATER:Z

    .line 31
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_1
    sput-boolean v0, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_FROYO_OR_LATER:Z

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v0, v3, :cond_2

    move v0, v1

    :goto_2
    sput-boolean v0, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_GINGERBREAD_OR_LATER:Z

    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_3
    sput-boolean v0, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_HONEYCOMB_OR_LATER:Z

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_4

    :goto_4
    sput-boolean v1, Lorg/andengine/util/system/SystemUtils;->SDK_VERSION_ICE_CREAM_SANDWICH_OR_LATER:Z

    .line 38
    return-void

    :cond_0
    move v0, v2

    .line 30
    goto :goto_0

    :cond_1
    move v0, v2

    .line 31
    goto :goto_1

    :cond_2
    move v0, v2

    .line 32
    goto :goto_2

    :cond_3
    move v0, v2

    .line 33
    goto :goto_3

    :cond_4
    move v1, v2

    .line 34
    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApkFilePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "pContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 78
    .local v0, packMgmr:Landroid/content/pm/PackageManager;
    invoke-static {p0}, Lorg/andengine/util/system/SystemUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v1
.end method

.method public static getCPUBogoMips()F
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 122
    const-string v2, "/proc/cpuinfo"

    const-string v3, "BogoMIPS[\\s]*:[\\s]*(\\d+\\.\\d+)[\\s]*\n"

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lorg/andengine/util/system/SystemUtils;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 125
    .local v1, matchResult:Ljava/util/regex/MatchResult;
    :try_start_0
    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 126
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    return v2

    .line 128
    :cond_0
    new-instance v2, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v2}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v2, v0}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getCPUFrequencyCurrent()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 176
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-static {v0}, Lorg/andengine/util/system/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMax()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v0}, Lorg/andengine/util/system/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMaxScaling()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 208
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    invoke-static {v0}, Lorg/andengine/util/system/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMin()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v0}, Lorg/andengine/util/system/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getCPUFrequencyMinScaling()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 200
    const-string v0, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq"

    invoke-static {v0}, Lorg/andengine/util/system/SystemUtils;->readSystemFileAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getMemoryFree()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 158
    const-string v2, "/proc/meminfo"

    const-string v3, "MemFree[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lorg/andengine/util/system/SystemUtils;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 161
    .local v1, matchResult:Ljava/util/regex/MatchResult;
    :try_start_0
    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 162
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 164
    :cond_0
    new-instance v2, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v2}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v2, v0}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getMemoryTotal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 140
    const-string v2, "/proc/meminfo"

    const-string v3, "MemTotal[\\s]*:[\\s]*(\\d+)[\\s]*kB\n"

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lorg/andengine/util/system/SystemUtils;->matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;

    move-result-object v1

    .line 143
    .local v1, matchResult:Ljava/util/regex/MatchResult;
    :try_start_0
    invoke-interface {v1}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 144
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 146
    :cond_0
    new-instance v2, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v2}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v2, v0}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 4
    .parameter "pContext"

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v0}, Lorg/andengine/util/debug/Debug;->e(Ljava/lang/Throwable;)V

    .line 86
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "pContext"

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageVersionCode(Landroid/content/Context;)I
    .locals 1
    .parameter "pContext"

    .prologue
    .line 65
    invoke-static {p0}, Lorg/andengine/util/system/SystemUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    return v0
.end method

.method public static getPackageVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "pContext"

    .prologue
    .line 69
    invoke-static {p0}, Lorg/andengine/util/system/SystemUtils;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public static hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "pContext"
    .parameter "pFeature"

    .prologue
    const/4 v3, 0x0

    .line 92
    :try_start_0
    const-class v2, Landroid/content/pm/PackageManager;

    const-string v4, "hasSystemFeature"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    .local v0, PackageManager_hasSystemFeatures:Ljava/lang/reflect/Method;
    if-nez v0, :cond_0

    move v2, v3

    .line 95
    .end local v0           #PackageManager_hasSystemFeatures:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 93
    .restart local v0       #PackageManager_hasSystemFeatures:Ljava/lang/reflect/Method;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 94
    .end local v0           #PackageManager_hasSystemFeatures:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .local v1, t:Ljava/lang/Throwable;
    move v2, v3

    .line 95
    goto :goto_0
.end method

.method public static isAndroidVersion(II)Z
    .locals 1
    .parameter "pBuildVersionCodeMin"
    .parameter "pBuildVersionCodeMax"

    .prologue
    .line 118
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAndroidVersionOrHigher(I)Z
    .locals 1
    .parameter "pBuildVersionCode"

    .prologue
    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAndroidVersionOrLower(I)Z
    .locals 1
    .parameter "pBuildVersionCode"

    .prologue
    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGoogleTV(Landroid/content/Context;)Z
    .locals 1
    .parameter "pContext"

    .prologue
    .line 61
    const-string v0, "com.google.android.tv"

    invoke-static {p0, v0}, Lorg/andengine/util/system/SystemUtils;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static matchSystemFile(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/regex/MatchResult;
    .locals 10
    .parameter "pSystemFile"
    .parameter "pPattern"
    .parameter "pHorizon"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v6, Ljava/lang/ProcessBuilder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/cat"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object p0, v7, v8

    invoke-direct {v6, v7}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 216
    .local v3, process:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 217
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 219
    .local v4, scanner:Ljava/util/Scanner;
    invoke-virtual {v4, p1, p2}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 220
    .local v2, matchFound:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 221
    invoke-virtual {v4}, Ljava/util/Scanner;->match()Ljava/util/regex/MatchResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 228
    invoke-static {v1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 221
    return-object v5

    .end local v2           #matchFound:Z
    :cond_0
    move v2, v5

    .line 219
    goto :goto_0

    .line 223
    .restart local v2       #matchFound:Z
    :cond_1
    :try_start_1
    new-instance v5, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v5}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    .end local v2           #matchFound:Z
    .end local v3           #process:Ljava/lang/Process;
    .end local v4           #scanner:Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v5, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v5, v0}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 228
    invoke-static {v1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 229
    throw v5
.end method

.method private static readSystemFileAsInt(Ljava/lang/String;)I
    .locals 8
    .parameter "pSystemFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/andengine/util/system/SystemUtils$SystemUtilsException;
        }
    .end annotation

    .prologue
    .line 233
    const/4 v2, 0x0

    .line 235
    .local v2, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/lang/ProcessBuilder;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "/system/bin/cat"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    invoke-direct {v4, v5}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v3

    .line 237
    .local v3, process:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 238
    invoke-static {v2}, Lorg/andengine/util/StreamUtils;->readFully(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 245
    invoke-static {v2}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 239
    return v4

    .line 240
    .end local v0           #content:Ljava/lang/String;
    .end local v3           #process:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    new-instance v4, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v4, v1}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 245
    invoke-static {v2}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 246
    throw v4

    .line 242
    :catch_1
    move-exception v1

    .line 243
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_2
    new-instance v4, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;

    invoke-direct {v4, v1}, Lorg/andengine/util/system/SystemUtils$SystemUtilsException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
