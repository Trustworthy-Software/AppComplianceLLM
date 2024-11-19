.class public Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;
.super Ljava/lang/Object;
.source "GEMFFileArchive.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/modules/IArchiveFile;


# instance fields
.field private mFile:Lorg/osmdroid/util/GEMFFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "pFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lorg/osmdroid/util/GEMFFile;

    invoke-direct {v0, p1}, Lorg/osmdroid/util/GEMFFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    .line 25
    return-void
.end method

.method public static getGEMFFileArchive(Ljava/io/File;)Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;
    .locals 1
    .param p0, "pFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;

    invoke-direct {v0, p0}, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;-><init>(Ljava/io/File;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    invoke-virtual {v0}, Lorg/osmdroid/util/GEMFFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 63
    :goto_0
    return-void
.end method

.method public getInputStream(Lorg/osmdroid/tileprovider/tilesource/ITileSource;J)Ljava/io/InputStream;
    .locals 4
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    .param p2, "pMapTileIndex"    # J

    .line 38
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v1

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v2

    invoke-static {p2, p3}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/osmdroid/util/GEMFFile;->getInputStream(III)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getTileSources()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 45
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    invoke-virtual {v1}, Lorg/osmdroid/util/GEMFFile;->getSources()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "OsmDroid"

    const-string v3, "Error getting tile sources: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public init(Ljava/io/File;)V
    .locals 1
    .param p1, "pFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    new-instance v0, Lorg/osmdroid/util/GEMFFile;

    invoke-direct {v0, p1}, Lorg/osmdroid/util/GEMFFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    .line 34
    return-void
.end method

.method public setIgnoreTileSource(Z)V
    .locals 0
    .param p1, "pIgnoreTileSource"    # Z

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GEMFFileArchive [mGEMFFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/GEMFFileArchive;->mFile:Lorg/osmdroid/util/GEMFFile;

    invoke-virtual {v1}, Lorg/osmdroid/util/GEMFFile;->getName()Ljava/lang/String;

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
