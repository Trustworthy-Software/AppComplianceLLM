.class public Lorg/osmdroid/tileprovider/util/StorageUtils;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    }
.end annotation


# static fields
.field public static final EXTERNAL_SD_CARD:Ljava/lang/String; = "externalSdCard"

.field public static final SD_CARD:Ljava/lang/String; = "sdCard"

.field private static final TAG:Ljava/lang/String; = "StorageUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllStorageLocations()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 367
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 369
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->tryToGetMountedStoragesFromFilesystem()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 372
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "sdCard"

    if-nez v1, :cond_0

    .line 373
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    :cond_0
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->tryToGetStorageFromSystemEnv()Ljava/util/Set;

    move-result-object v1

    .line 376
    .local v1, "fromSystemEnv":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 377
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 378
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .end local v4    # "file":Ljava/io/File;
    :cond_1
    goto :goto_0

    .line 382
    :cond_2
    return-object v0
.end method

.method private static getAllWritableStorageLocations()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 391
    .local v0, "map":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->tryToGetStorageFromSystemEnv()Ljava/util/Set;

    move-result-object v1

    .line 392
    .local v1, "fromSystemEnv":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 393
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v3    # "file":Ljava/io/File;
    :cond_0
    goto :goto_0

    .line 398
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 399
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 400
    .local v2, "t":Ljava/io/File;
    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 401
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v2    # "t":Ljava/io/File;
    :cond_2
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->tryToGetMountedStoragesFromFilesystem()Ljava/util/Map;

    move-result-object v2

    .line 406
    .local v2, "mounts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 407
    .local v4, "file":Ljava/io/File;
    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 408
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 410
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    goto :goto_1

    .line 412
    :cond_4
    return-object v0
.end method

.method public static getBestWritableStorage()Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    .locals 1

    .line 255
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getBestWritableStorage(Landroid/content/Context;)Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getBestWritableStorage(Landroid/content/Context;)Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, "bestStorage":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    invoke-static {p0}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 291
    .local v1, "storageList":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 292
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    .line 293
    .local v3, "currentStorage":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    iget-boolean v4, v3, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    iget-object v5, v3, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    if-eqz v0, :cond_0

    .line 296
    iget-wide v4, v0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    iget-wide v6, v3, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 297
    move-object v0, v3

    goto :goto_1

    .line 300
    :cond_0
    move-object v0, v3

    .line 291
    .end local v3    # "currentStorage":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private static getPrimarySharedStorage()Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    .locals 7

    .line 416
    const-string v0, ""

    .line 417
    .local v0, "primarySharedStoragePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 418
    .local v1, "isPrimarySharedStorageNotRemovable":Z
    const/4 v2, 0x1

    .line 419
    .local v2, "isPrimarySharedStorageReadonly":Z
    const/4 v3, 0x0

    .line 422
    .local v3, "isPrimarySharedStorageAvailable":Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 423
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v4

    .line 429
    :cond_0
    goto :goto_0

    .line 425
    :catchall_0
    move-exception v4

    .line 428
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 431
    .end local v4    # "ex":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 432
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 438
    goto :goto_1

    .line 434
    :catchall_1
    move-exception v4

    .line 437
    .restart local v4    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 440
    .end local v4    # "ex":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isPrimarySharedStorageAvailable()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move v3, v4

    .line 445
    goto :goto_2

    .line 441
    :catchall_2
    move-exception v4

    .line 444
    .restart local v4    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 447
    .end local v4    # "ex":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted_ro"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v2, v4

    .line 452
    goto :goto_3

    .line 448
    :catchall_3
    move-exception v4

    .line 451
    .restart local v4    # "ex":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 454
    .end local v4    # "ex":Ljava/lang/Throwable;
    :goto_3
    const/4 v4, 0x0

    .line 455
    .local v4, "primarySharedStorageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    if-eqz v3, :cond_1

    .line 456
    new-instance v5, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    const/4 v6, -0x1

    invoke-direct {v5, v0, v1, v2, v6}, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    move-object v4, v5

    .line 458
    :cond_1
    return-object v4
.end method

.method public static getSdCardPath()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorage()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorage(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getStorage(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 270
    invoke-static {p0}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getBestWritableStorage(Landroid/content/Context;)Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    move-result-object v0

    .line 271
    .local v0, "bestStorage":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    if-eqz v0, :cond_0

    .line 272
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 275
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getStorageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;",
            ">;"
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorageList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageList(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;",
            ">;"
        }
    .end annotation

    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 135
    if-eqz p0, :cond_0

    .line 136
    invoke-static {p0}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorageListApi19(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .local v0, "storageInfos":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    goto :goto_0

    .line 141
    .end local v0    # "storageInfos":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    :cond_0
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorageListPreApi19()Ljava/util/List;

    move-result-object v0

    .restart local v0    # "storageInfos":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    goto :goto_0

    .line 146
    .end local v0    # "storageInfos":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    :cond_1
    nop

    .line 147
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorageListPreApi19()Ljava/util/List;

    move-result-object v0

    .line 148
    .restart local v0    # "storageInfos":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    if-eqz p0, :cond_2

    .line 149
    invoke-static {p0}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getStorageListApi19(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 151
    .local v1, "storageInfosApi19":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 152
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    .end local v1    # "storageInfosApi19":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    nop

    .line 167
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getStorageListApi19(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, "storageInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    new-instance v1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v1, "storageDirs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    .line 207
    .local v2, "externalDirs":[Ljava/io/File;
    array-length v3, v2

    move v6, v4

    :goto_0
    if-ge v6, v3, :cond_2

    aget-object v7, v2, v6

    .line 209
    .local v7, "externalDir":Ljava/io/File;
    if-nez v7, :cond_0

    .line 210
    goto :goto_1

    .line 213
    :cond_0
    invoke-static {v7}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 214
    .local v8, "state":Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 215
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v7    # "externalDir":Ljava/io/File;
    .end local v8    # "state":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 220
    .local v6, "storageDir":Ljava/io/File;
    new-instance v7, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4, v4, v5}, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    .end local v6    # "storageDir":Ljava/io/File;
    goto :goto_2

    .line 223
    :cond_3
    return-object v0
.end method

.method private static getStorageListPreApi19()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "storageInfos":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getPrimarySharedStorage()Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    move-result-object v1

    .line 174
    .local v1, "primarySharedStorageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    nop

    .line 179
    if-eqz v1, :cond_1

    iget-object v2, v1, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, ""

    .line 178
    :goto_0
    invoke-static {v2}, Lorg/osmdroid/tileprovider/util/StorageUtils;->tryToFindOtherVoIdManagedStorages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 181
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->getAllWritableStorageLocations()Ljava/util/Set;

    move-result-object v2

    .line 182
    .local v2, "allStorageLocationsRevised":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 183
    .local v4, "storageLocation":Ljava/io/File;
    const/4 v5, 0x0

    .line 184
    .local v5, "found":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    .line 185
    .local v7, "storageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    iget-object v8, v7, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 186
    const/4 v5, 0x1

    .line 187
    goto :goto_3

    .line 189
    .end local v7    # "storageInfo":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    :cond_2
    goto :goto_2

    .line 190
    :cond_3
    :goto_3
    if-nez v5, :cond_4

    .line 191
    new-instance v6, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9, v9, v8}, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v4    # "storageLocation":Ljava/io/File;
    .end local v5    # "found":Z
    :cond_4
    goto :goto_1

    .line 195
    :cond_5
    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    invoke-static {}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isPrimarySharedStorageAvailable()Z

    move-result v0

    return v0
.end method

.method private static isPrimarySharedStorageAvailable()Z
    .locals 2

    .line 320
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "mounted_ro"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isWritable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 339
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isWritable(Ljava/io/File;)Z
    .locals 5
    .param p0, "path"    # Ljava/io/File;

    .line 348
    const-string v0, "StorageUtils"

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v1, "tmp":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 350
    .local v2, "fos":Ljava/io/FileOutputStream;
    const-string v3, "hi"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 351
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 353
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is writable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    const/4 v0, 0x1

    return v0

    .line 356
    .end local v1    # "tmp":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    .line 357
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is NOT writable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method private static tryToFindOtherVoIdManagedStorages(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "storagePathToIgnore"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;",
            ">;"
        }
    .end annotation

    .line 462
    const-string v0, "StorageUtils"

    const-string v1, "/proc/mounts"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v2, "storageInfos":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;>;"
    const/4 v3, 0x0

    .line 466
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 467
    .local v4, "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 469
    const/4 v5, 0x1

    .line 470
    .local v5, "currentDisplayNumber":I
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .local v6, "line":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 472
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v1, "vfat"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/mnt"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    :cond_1
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v7, " "

    invoke-direct {v1, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .local v1, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .line 476
    .local v7, "unused":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 477
    .local v8, "mountPoint":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 478
    goto :goto_0

    .line 480
    :cond_2
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 481
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 482
    .local v9, "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "ro"

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 485
    .local v10, "readonly":Z
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 486
    invoke-virtual {v4, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 487
    :cond_3
    const-string v11, "/dev/block/vold"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 488
    const-string v11, "/mnt/secure"

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "/mnt/asec"

    .line 489
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "/mnt/obb"

    .line 490
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "/dev/mapper"

    .line 491
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "tmpfs"

    .line 492
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 493
    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v11, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 495
    new-instance v11, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    add-int/lit8 v12, v5, 0x1

    .end local v5    # "currentDisplayNumber":I
    .local v12, "currentDisplayNumber":I
    const/4 v13, 0x0

    invoke-direct {v11, v8, v13, v10, v5}, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;-><init>(Ljava/lang/String;ZZI)V

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v12

    .line 499
    .end local v1    # "tokens":Ljava/util/StringTokenizer;
    .end local v7    # "unused":Ljava/lang/String;
    .end local v8    # "mountPoint":Ljava/lang/String;
    .end local v9    # "flags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "readonly":Z
    .end local v12    # "currentDisplayNumber":I
    .restart local v5    # "currentDisplayNumber":I
    :cond_4
    :goto_1
    goto/16 :goto_0

    .line 506
    .end local v4    # "paths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "currentDisplayNumber":I
    .end local v6    # "line":Ljava/lang/String;
    :cond_5
    nop

    .line 508
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    :goto_2
    goto :goto_3

    .line 509
    :catch_0
    move-exception v0

    goto :goto_2

    .line 506
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 503
    :catch_1
    move-exception v0

    .line 504
    .local v0, "ex":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 506
    .end local v0    # "ex":Ljava/io/IOException;
    if-eqz v3, :cond_6

    .line 508
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 501
    :catch_2
    move-exception v0

    .line 502
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 506
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v3, :cond_6

    .line 508
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 513
    :cond_6
    :goto_3
    return-object v2

    .line 506
    :goto_4
    if-eqz v3, :cond_7

    .line 508
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 510
    goto :goto_5

    .line 509
    :catch_3
    move-exception v1

    .line 512
    :cond_7
    :goto_5
    throw v0
.end method

.method private static tryToGetMountedStoragesFromFilesystem()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 517
    const-string v1, " "

    const-string v2, ":"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v0

    .line 519
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v0

    .line 520
    .local v5, "mounts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v0

    .line 521
    .local v6, "vold":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "/mnt/sdcard"

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    const/4 v8, 0x0

    .line 526
    .local v8, "scanner":Ljava/util/Scanner;
    const/4 v9, 0x1

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v10, "/proc/mounts"

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 527
    .local v0, "mountFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 528
    new-instance v10, Ljava/util/Scanner;

    invoke-direct {v10, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    move-object v8, v10

    .line 529
    :goto_0
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 530
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v10

    .line 531
    .local v10, "line":Ljava/lang/String;
    const-string v11, "/dev/block/vold/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 532
    invoke-virtual {v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 533
    .local v11, "lineElements":[Ljava/lang/String;
    aget-object v12, v11, v9

    .line 537
    .local v12, "element":Ljava/lang/String;
    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 538
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    .end local v10    # "line":Ljava/lang/String;
    .end local v11    # "lineElements":[Ljava/lang/String;
    .end local v12    # "element":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 546
    .end local v0    # "mountFile":Ljava/io/File;
    :cond_1
    if-eqz v8, :cond_2

    .line 548
    :try_start_1
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 549
    :catch_0
    move-exception v0

    goto :goto_2

    .line 546
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_e

    .line 543
    :catch_1
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_2

    .line 548
    :try_start_3
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 550
    :goto_1
    goto :goto_2

    .line 549
    :catch_2
    move-exception v0

    .line 552
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 553
    .end local v8    # "scanner":Ljava/util/Scanner;
    .local v0, "scanner":Ljava/util/Scanner;
    move-object v8, v0

    .line 556
    .end local v0    # "scanner":Ljava/util/Scanner;
    .restart local v8    # "scanner":Ljava/util/Scanner;
    const/4 v10, 0x0

    :try_start_4
    new-instance v0, Ljava/io/File;

    const-string v11, "/system/etc/vold.fstab"

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 557
    .local v0, "voldFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 558
    new-instance v11, Ljava/util/Scanner;

    invoke-direct {v11, v0}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    move-object v8, v11

    .line 559
    :goto_3
    invoke-virtual {v8}, Ljava/util/Scanner;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 560
    invoke-virtual {v8}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v11

    .line 561
    .local v11, "line":Ljava/lang/String;
    const-string v12, "dev_mount"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 562
    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 563
    .local v12, "lineElements":[Ljava/lang/String;
    const/4 v13, 0x2

    aget-object v13, v12, v13

    .line 565
    .local v13, "element":Ljava/lang/String;
    invoke-virtual {v13, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 566
    invoke-virtual {v13, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 568
    :cond_3
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 569
    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 572
    .end local v11    # "line":Ljava/lang/String;
    .end local v12    # "lineElements":[Ljava/lang/String;
    .end local v13    # "element":Ljava/lang/String;
    :cond_4
    goto :goto_3

    .line 577
    .end local v0    # "voldFile":Ljava/io/File;
    :cond_5
    if-eqz v8, :cond_6

    .line 579
    :try_start_5
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 581
    :goto_4
    goto :goto_5

    .line 580
    :catch_3
    move-exception v0

    goto :goto_4

    .line 577
    :catchall_1
    move-exception v0

    move-object v1, v0

    goto/16 :goto_c

    .line 574
    :catch_4
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v8, :cond_6

    .line 579
    :try_start_7
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    .line 585
    :cond_6
    :goto_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 586
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 587
    .local v1, "mount":Ljava/lang/String;
    invoke-interface {v6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 588
    add-int/lit8 v7, v0, -0x1

    .end local v0    # "i":I
    .local v7, "i":I
    invoke-interface {v5, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v7

    .line 585
    .end local v1    # "mount":Ljava/lang/String;
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_7
    add-int/2addr v0, v9

    goto :goto_6

    .line 591
    .end local v0    # "i":I
    :cond_8
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 594
    .local v0, "mountHash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 595
    .local v4, "mount":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v7, "root":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 597
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 598
    .local v11, "list":[Ljava/io/File;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    .local v12, "hash":Ljava/lang/StringBuilder;
    if-eqz v11, :cond_a

    .line 600
    array-length v13, v11

    move v14, v10

    :goto_8
    if-ge v14, v13, :cond_9

    aget-object v15, v11, v14

    .line 601
    .local v15, "f":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v17, v1

    move-object/from16 v16, v2

    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .end local v15    # "f":Ljava/io/File;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    const/4 v10, 0x0

    goto :goto_8

    :cond_9
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    goto :goto_9

    .line 599
    :cond_a
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    .line 604
    :goto_9
    const-string v1, "]"

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdCard_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_b

    .line 608
    const-string v1, "sdCard"

    goto :goto_a

    .line 609
    :cond_b
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v9, :cond_c

    .line 610
    const-string v1, "externalSdCard"

    .line 612
    :cond_c
    :goto_a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-interface {v3, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 596
    .end local v1    # "key":Ljava/lang/String;
    .end local v11    # "list":[Ljava/io/File;
    .end local v12    # "hash":Ljava/lang/StringBuilder;
    :cond_d
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    .line 616
    .end local v4    # "mount":Ljava/lang/String;
    .end local v7    # "root":Ljava/io/File;
    :cond_e
    :goto_b
    move-object/from16 v2, v16

    move-object/from16 v1, v17

    const/4 v10, 0x0

    goto/16 :goto_7

    .line 618
    :cond_f
    return-object v3

    .line 577
    .end local v0    # "mountHash":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_c
    if-eqz v8, :cond_10

    .line 579
    :try_start_8
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 581
    goto :goto_d

    .line 580
    :catch_5
    move-exception v0

    .line 583
    :cond_10
    :goto_d
    throw v1

    .line 546
    :goto_e
    if-eqz v8, :cond_11

    .line 548
    :try_start_9
    invoke-virtual {v8}, Ljava/util/Scanner;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 550
    goto :goto_f

    .line 549
    :catch_6
    move-exception v0

    .line 552
    :cond_11
    :goto_f
    const/4 v0, 0x0

    .line 553
    .end local v8    # "scanner":Ljava/util/Scanner;
    .local v0, "scanner":Ljava/util/Scanner;
    throw v1
.end method

.method private static tryToGetStorageFromSystemEnv()Ljava/util/Set;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 622
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 623
    .local v0, "storages":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    const-string v1, "EXTERNAL_STORAGE"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, "primarySd":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 625
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .local v2, "t":Ljava/io/File;
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 629
    .end local v2    # "t":Ljava/io/File;
    :cond_0
    const-string v2, "SECONDARY_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, "secondarySd":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 631
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "split":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 633
    .local v6, "s":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 634
    .local v7, "t":Ljava/io/File;
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 632
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "t":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 638
    .end local v3    # "split":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method
