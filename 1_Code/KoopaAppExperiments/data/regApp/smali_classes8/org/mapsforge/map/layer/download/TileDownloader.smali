.class Lorg/mapsforge/map/layer/download/TileDownloader;
.super Ljava/lang/Object;
.source "TileDownloader.java"


# instance fields
.field private final downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

.field private final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/download/DownloadJob;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 2
    .param p1, "downloadJob"    # Lorg/mapsforge/map/layer/download/DownloadJob;
    .param p2, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_1

    .line 46
    if-eqz p2, :cond_0

    .line 50
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    .line 51
    iput-object p2, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 52
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "graphicFactory must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "downloadJob must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;
    .locals 2
    .param p0, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    const-string v0, "gzip"

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method downloadImage()Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v0, v0, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    iget-object v1, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/download/DownloadJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-interface {v0, v1}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getTileUrl(Lorg/mapsforge/core/model/Tile;)Ljava/net/URL;

    move-result-object v0

    .line 56
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 57
    .local v1, "urlConnection":Ljava/net/URLConnection;
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getTimeoutConnect()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 58
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getTimeoutRead()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 59
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_0
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getReferer()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 63
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getReferer()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Referer"

    invoke-virtual {v1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_1
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getAuthorization()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 66
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->getAuthorization()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Authorization"

    invoke-virtual {v1, v3, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    instance-of v2, v1, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_3

    .line 69
    move-object v2, v1

    check-cast v2, Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-interface {v3}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->isFollowRedirects()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 71
    :cond_3
    invoke-static {v1}, Lorg/mapsforge/map/layer/download/TileDownloader;->getInputStream(Ljava/net/URLConnection;)Ljava/io/InputStream;

    move-result-object v2

    .line 74
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v4, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-object v4, v4, Lorg/mapsforge/map/layer/download/DownloadJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget v4, v4, Lorg/mapsforge/core/model/Tile;->tileSize:I

    iget-object v5, p0, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadJob:Lorg/mapsforge/map/layer/download/DownloadJob;

    iget-boolean v5, v5, Lorg/mapsforge/map/layer/download/DownloadJob;->hasAlpha:Z

    invoke-interface {v3, v2, v4, v5}, Lorg/mapsforge/core/graphics/GraphicFactory;->createTileBitmap(Ljava/io/InputStream;IZ)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v3

    .line 76
    .local v3, "result":Lorg/mapsforge/core/graphics/TileBitmap;
    invoke-virtual {v1}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lorg/mapsforge/core/graphics/TileBitmap;->setExpiration(J)V
    :try_end_0
    .catch Lorg/mapsforge/core/graphics/CorruptedInputStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    nop

    .line 84
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 77
    return-object v3

    .line 84
    .end local v3    # "result":Lorg/mapsforge/core/graphics/TileBitmap;
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 85
    throw v3

    .line 78
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Lorg/mapsforge/core/graphics/CorruptedInputStreamException;
    nop

    .line 84
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 82
    const/4 v4, 0x0

    return-object v4
.end method
