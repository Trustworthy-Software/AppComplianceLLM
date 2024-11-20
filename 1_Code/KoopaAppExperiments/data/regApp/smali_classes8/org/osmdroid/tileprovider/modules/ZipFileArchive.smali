.class public Lorg/osmdroid/tileprovider/modules/ZipFileArchive;
.super Ljava/lang/Object;
.source "ZipFileArchive.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IArchiveFile;


# instance fields
.field private mIgnoreTileSource:Z

.field protected mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mIgnoreTileSource:Z

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/util/zip/ZipFile;)V
    .locals 1
    .param p1, "pZipFile"    # Ljava/util/zip/ZipFile;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mIgnoreTileSource:Z

    .line 28
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    .line 29
    return-void
.end method

.method private getTileRelativeFilenameString(JLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "pMapTileIndex"    # J
    .param p3, "pathBase"    # Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getZipFileArchive(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/ZipFileArchive;
    .locals 2
    .param p0, "pFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;

    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;-><init>(Ljava/util/zip/ZipFile;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 117
    :goto_0
    return-void
.end method

.method public getInputStream(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/InputStream;
    .locals 6
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 51
    const-string v0, "/"

    :try_start_0
    iget-boolean v1, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mIgnoreTileSource:Z

    if-nez v1, :cond_1

    .line 52
    invoke-interface {p1, p2, p3}, Lorg/osmdroid/tileprovider/tilesource/ITileSource;->getTileRelativeFilenameString(J)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "path":Ljava/lang/String;
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    .line 54
    .local v1, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v1, :cond_0

    .line 55
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    return-object v2

    .line 57
    .end local v0    # "path":Ljava/lang/String;
    .end local v1    # "entry":Ljava/util/zip/ZipEntry;
    :cond_0
    goto :goto_1

    .line 59
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 60
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 62
    .local v2, "nextElement":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {p0, p2, p3, v4}, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->getTileRelativeFilenameString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 66
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v5, :cond_2

    .line 67
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 70
    .end local v2    # "nextElement":Ljava/util/zip/ZipEntry;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    :cond_2
    goto :goto_0

    .line 74
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_3
    :goto_1
    goto :goto_2

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting zip stream: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTileSources()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 96
    const-string v0, "/"

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 98
    .local v1, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 99
    .local v2, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/zip/ZipEntry;

    .line 101
    .local v3, "nextElement":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v3    # "nextElement":Ljava/util/zip/ZipEntry;
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 107
    .end local v2    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    goto :goto_1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "OsmDroid"

    const-string v3, "Error getting tile sources: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method public init(Ljava/io/File;)V
    .locals 1
    .param p1, "pFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    .line 46
    return-void
.end method

.method public setIgnoreTileSource(Z)V
    .locals 0
    .param p1, "pIgnoreTileSource"    # Z

    .line 40
    iput-boolean p1, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mIgnoreTileSource:Z

    .line 41
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZipFileArchive [mZipFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/ZipFileArchive;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
