.class Lorg/mapsforge/map/layer/download/TileDownloadThread;
.super Lorg/mapsforge/map/util/PausableThread;
.source "TileDownloadThread.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field private final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapsforge/map/layer/queue/JobQueue<",
            "Lorg/mapsforge/map/layer/download/DownloadJob;",
            ">;"
        }
    .end annotation
.end field

.field private final layer:Lorg/mapsforge/map/layer/Layer;

.field private final tileCache:Lorg/mapsforge/map/layer/cache/TileCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/mapsforge/map/layer/download/TileDownloadThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/layer/queue/JobQueue;Lorg/mapsforge/map/layer/Layer;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 0
    .param p1, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p3, "layer"    # Lorg/mapsforge/map/layer/Layer;
    .param p4, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p5, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/layer/cache/TileCache;",
            "Lorg/mapsforge/map/layer/queue/JobQueue<",
            "Lorg/mapsforge/map/layer/download/DownloadJob;",
            ">;",
            "Lorg/mapsforge/map/layer/Layer;",
            "Lorg/mapsforge/core/graphics/GraphicFactory;",
            "Lorg/mapsforge/map/model/DisplayModel;",
            ")V"
        }
    .end annotation

    .line 41
    .local p2, "jobQueue":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<Lorg/mapsforge/map/layer/download/DownloadJob;>;"
    invoke-direct {p0}, Lorg/mapsforge/map/util/PausableThread;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    .line 44
    iput-object p2, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    .line 45
    iput-object p3, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->layer:Lorg/mapsforge/map/layer/Layer;

    .line 46
    iput-object p4, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 47
    iput-object p5, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 48
    return-void
.end method

.method private downloadTile(Lorg/mapsforge/map/layer/download/DownloadJob;)V
    .locals 4
    .param p1, "downloadJob"    # Lorg/mapsforge/map/layer/download/DownloadJob;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    new-instance v0, Lorg/mapsforge/map/layer/download/TileDownloader;

    iget-object v1, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    invoke-direct {v0, p1, v1}, Lorg/mapsforge/map/layer/download/TileDownloader;-><init>(Lorg/mapsforge/map/layer/download/DownloadJob;Lorg/mapsforge/core/graphics/GraphicFactory;)V

    .line 81
    .local v0, "tileDownloader":Lorg/mapsforge/map/layer/download/TileDownloader;
    invoke-virtual {v0}, Lorg/mapsforge/map/layer/download/TileDownloader;->downloadImage()Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v1

    .line 83
    .local v1, "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/download/TileDownloadThread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 84
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v2

    iget-object v3, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v3}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lorg/mapsforge/core/graphics/TileBitmap;->scaleTo(II)V

    .line 85
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v2, p1, v1}, Lorg/mapsforge/map/layer/cache/TileCache;->put(Lorg/mapsforge/map/layer/queue/Job;Lorg/mapsforge/core/graphics/TileBitmap;)V

    .line 86
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->layer:Lorg/mapsforge/map/layer/Layer;

    invoke-virtual {v2}, Lorg/mapsforge/map/layer/Layer;->requestRedraw()V

    .line 88
    :cond_0
    return-void
.end method


# virtual methods
.method protected doWork()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/queue/JobQueue;->get()Lorg/mapsforge/map/layer/queue/Job;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/layer/download/DownloadJob;

    .line 59
    .local v0, "downloadJob":Lorg/mapsforge/map/layer/download/DownloadJob;
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v1, v0}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    invoke-direct {p0, v0}, Lorg/mapsforge/map/layer/download/TileDownloadThread;->downloadTile(Lorg/mapsforge/map/layer/download/DownloadJob;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/layer/queue/JobQueue;->remove(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 66
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lorg/mapsforge/map/layer/download/TileDownloadThread;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 67
    :goto_1
    return-void

    .line 65
    :goto_2
    iget-object v2, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/layer/queue/JobQueue;->remove(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 66
    throw v1
.end method

.method protected getThreadPriority()Lorg/mapsforge/map/util/PausableThread$ThreadPriority;
    .locals 1

    .line 71
    sget-object v0, Lorg/mapsforge/map/util/PausableThread$ThreadPriority;->BELOW_NORMAL:Lorg/mapsforge/map/util/PausableThread$ThreadPriority;

    return-object v0
.end method

.method protected hasWork()Z
    .locals 1

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public setJobQueue(Lorg/mapsforge/map/layer/queue/JobQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/layer/queue/JobQueue<",
            "Lorg/mapsforge/map/layer/download/DownloadJob;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "jobQueue":Lorg/mapsforge/map/layer/queue/JobQueue;, "Lorg/mapsforge/map/layer/queue/JobQueue<Lorg/mapsforge/map/layer/download/DownloadJob;>;"
    iput-object p1, p0, Lorg/mapsforge/map/layer/download/TileDownloadThread;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    .line 52
    return-void
.end method
