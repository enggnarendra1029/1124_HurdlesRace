.class public Lorg/andengine/util/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .parameter "pSourceFile"
    .parameter "pDestinationFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, in:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 173
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v0           #in:Ljava/io/InputStream;
    .local v1, in:Ljava/io/InputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    :try_start_2
    invoke-static {v1, v3}, Lorg/andengine/util/StreamUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 177
    invoke-static {v1}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 178
    invoke-static {v3}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 180
    return-void

    .line 176
    .end local v1           #in:Ljava/io/InputStream;
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :catchall_0
    move-exception v4

    .line 177
    :goto_0
    invoke-static {v0}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 178
    invoke-static {v2}, Lorg/andengine/util/StreamUtils;->close(Ljava/io/Closeable;)V

    .line 179
    throw v4

    .line 176
    .end local v0           #in:Ljava/io/InputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_0

    .end local v0           #in:Ljava/io/InputStream;
    .end local v2           #out:Ljava/io/OutputStream;
    .restart local v1       #in:Ljava/io/InputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    move-object v0, v1

    .end local v1           #in:Ljava/io/InputStream;
    .restart local v0       #in:Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static copyToExternalStorage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "pContext"
    .parameter "pSourceResourceID"
    .parameter "pFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/andengine/util/FileUtils;->copyToExternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static copyToExternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "pContext"
    .parameter "pInputStream"
    .parameter "pFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lorg/andengine/util/FileUtils;->isExternalStorageWriteable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-static {p0, p2}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, absoluteFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lorg/andengine/util/StreamUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 83
    return-void

    .line 81
    .end local v0           #absoluteFilePath:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "External Storage is not writeable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyToExternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pContext"
    .parameter "pSourceAssetPath"
    .parameter "pFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/andengine/util/FileUtils;->copyToExternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static copyToExternalStorage(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "pInputStream"
    .parameter "pFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lorg/andengine/util/FileUtils;->isExternalStorageWriteable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-static {p1}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, absoluteFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lorg/andengine/util/StreamUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 74
    return-void

    .line 72
    .end local v0           #absoluteFilePath:Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "External Storage is not writeable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static copyToInternalStorage(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "pContext"
    .parameter "pSourceResourceID"
    .parameter "pFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/andengine/util/FileUtils;->copyToInternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private static copyToInternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .parameter "pContext"
    .parameter "pInputStream"
    .parameter "pFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, v0}, Lorg/andengine/util/StreamUtils;->copyAndClose(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 65
    return-void
.end method

.method public static copyToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "pContext"
    .parameter "pSourceAssetPath"
    .parameter "pFilename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lorg/andengine/util/FileUtils;->copyToInternalStorage(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public static deleteDirectory(Ljava/io/File;)Z
    .locals 6
    .parameter "pFileOrDirectory"

    .prologue
    .line 191
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, children:[Ljava/lang/String;
    array-length v1, v0

    .line 194
    .local v1, childrenCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v1, :cond_1

    .line 203
    .end local v0           #children:[Ljava/lang/String;
    .end local v1           #childrenCount:I
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v4

    :goto_1
    return v4

    .line 195
    .restart local v0       #children:[Ljava/lang/String;
    .restart local v1       #childrenCount:I
    .restart local v2       #i:I
    :cond_1
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v2

    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/andengine/util/FileUtils;->deleteDirectory(Ljava/io/File;)Z

    move-result v3

    .line 196
    .local v3, success:Z
    if-nez v3, :cond_2

    .line 197
    const/4 v4, 0x0

    goto :goto_1

    .line 194
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static ensureDirectoriesExistOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "pContext"
    .parameter "pDirectory"

    .prologue
    .line 116
    invoke-static {p0, p1}, Lorg/andengine/util/FileUtils;->isDirectoryExistingOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const/4 v1, 0x1

    .line 122
    :goto_0
    return v1

    .line 120
    :cond_0
    invoke-static {}, Lorg/andengine/util/FileUtils;->isExternalStorageWriteable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    invoke-static {p0, p1}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, absoluteDirectoryPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    goto :goto_0

    .line 124
    .end local v0           #absoluteDirectoryPath:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "External Storage is not writeable."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pContext"
    .parameter "pFilePath"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAbsolutePathOnExternalStorage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pFilePath"

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAbsolutePathOnInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pContext"
    .parameter "pFilePath"

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDirectoryListOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "pContext"
    .parameter "pFilePath"

    .prologue
    .line 139
    invoke-static {p0, p1}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, absoluteFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDirectoryListOnExternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/io/FilenameFilter;)[Ljava/lang/String;
    .locals 2
    .parameter "pContext"
    .parameter "pFilePath"
    .parameter "pFilenameFilter"

    .prologue
    .line 144
    invoke-static {p0, p1}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, absoluteFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isDirectoryExistingOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "pContext"
    .parameter "pDirectory"

    .prologue
    .line 106
    invoke-static {}, Lorg/andengine/util/FileUtils;->isExternalStorageReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    invoke-static {p0, p1}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, absoluteFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 111
    .end local v0           #absoluteFilePath:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "External Storage is not readable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isExternalStorageReadable()Z
    .locals 2

    .prologue
    .line 165
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isExternalStorageWriteable()Z
    .locals 2

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFileExistingOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "pContext"
    .parameter "pFilePath"

    .prologue
    .line 96
    invoke-static {}, Lorg/andengine/util/FileUtils;->isExternalStorageReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    invoke-static {p0, p1}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, absoluteFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 101
    .end local v0           #absoluteFilePath:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "External Storage is not readable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isFileExistingOnExternalStorage(Ljava/lang/String;)Z
    .locals 4
    .parameter "pFilePath"

    .prologue
    .line 86
    invoke-static {}, Lorg/andengine/util/FileUtils;->isExternalStorageReadable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-static {p0}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, absoluteFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 91
    .end local v0           #absoluteFilePath:Ljava/lang/String;
    .end local v1           #file:Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "External Storage is not readable."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static openOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "pContext"
    .parameter "pFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0, p1}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, absoluteFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public static openOnExternalStorage(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .parameter "pFilePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static {p0}, Lorg/andengine/util/FileUtils;->getAbsolutePathOnExternalStorage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, absoluteFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v1
.end method
