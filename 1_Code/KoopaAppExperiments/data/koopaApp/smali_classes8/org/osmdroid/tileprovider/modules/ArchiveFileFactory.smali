.class public Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;
.super Ljava/lang/Object;
.source "ArchiveFileFactory.java"


# static fields
.field static extensionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/osmdroid/tileprovider/modules/IArchiveFile;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    .line 19
    const-string v1, "zip"

    const-class v2, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    nop

    .line 21
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    const-string v1, "sqlite"

    const-class v2, Lorg/osmdroid/tileprovider/modules/DatabaseFileArchive;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    const-string v1, "mbtiles"

    const-class v2, Lorg/osmdroid/tileprovider/modules/MBTilesFileArchive;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    const-string v1, "gemf"

    const-class v2, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getArchiveFile(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    .locals 6
    .param p0, "pFile"    # Ljava/io/File;

    .line 58
    const-string v0, "Error initializing archive file provider "

    const-string v1, "OsmDroid"

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "extension":Ljava/lang/String;
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v3

    .line 66
    :cond_0
    :goto_0
    sget-object v3, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 67
    .local v3, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/osmdroid/tileprovider/modules/IArchiveFile;>;"
    if-eqz v3, :cond_1

    .line 69
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/tileprovider/modules/IArchiveFile;

    .line 70
    .local v4, "provider":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    invoke-interface {v4, p0}, Lorg/osmdroid/tileprovider/modules/IArchiveFile;->init(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    return-object v4

    .line 76
    .end local v4    # "provider":Lorg/osmdroid/tileprovider/modules/IArchiveFile;
    :catch_1
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error opening archive file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 75
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 72
    :catch_3
    move-exception v4

    .line 73
    .local v4, "e":Ljava/lang/InstantiationException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :goto_1
    nop

    .line 82
    :cond_1
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRegisteredExtensions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 91
    .local v0, "r":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 92
    return-object v0
.end method

.method public static isFileExtensionRegistered(Ljava/lang/String;)Z
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;

    .line 37
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static registerArchiveFileProvider(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "fileExtension"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/osmdroid/tileprovider/modules/IArchiveFile;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 48
    .local p0, "provider":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/osmdroid/tileprovider/modules/IArchiveFile;>;"
    sget-object v0, Lorg/osmdroid/tileprovider/modules/ArchiveFileFactory;->extensionMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
