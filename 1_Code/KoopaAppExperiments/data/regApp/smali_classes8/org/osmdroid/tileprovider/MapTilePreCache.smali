.class public Lorg/osmdroid/tileprovider/MapTilePreCache;
.super Ljava/lang/Object;
.source "MapTilePreCache.java"


# instance fields
.field private final mCache:Lorg/osmdroid/tileprovider/MapTileCache;

.field private final mGC:Lorg/osmdroid/util/GarbageCollector;

.field private final mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

.field private mTileIndices:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/osmdroid/tileprovider/MapTileCache;)V
    .locals 2
    .param p1, "pCache"    # Lorg/osmdroid/tileprovider/MapTileCache;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mProviders:Ljava/util/List;

    .line 34
    new-instance v0, Lorg/osmdroid/util/MapTileAreaList;

    invoke-direct {v0}, Lorg/osmdroid/util/MapTileAreaList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    .line 37
    new-instance v0, Lorg/osmdroid/util/GarbageCollector;

    new-instance v1, Lorg/osmdroid/tileprovider/MapTilePreCache$1;

    invoke-direct {v1, p0}, Lorg/osmdroid/tileprovider/MapTilePreCache$1;-><init>(Lorg/osmdroid/tileprovider/MapTilePreCache;)V

    invoke-direct {v0, v1}, Lorg/osmdroid/util/GarbageCollector;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mGC:Lorg/osmdroid/util/GarbageCollector;

    .line 48
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mCache:Lorg/osmdroid/tileprovider/MapTileCache;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/tileprovider/MapTilePreCache;)J
    .locals 2
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/MapTilePreCache;

    .line 31
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/MapTilePreCache;->next()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lorg/osmdroid/tileprovider/MapTilePreCache;J)V
    .locals 0
    .param p0, "x0"    # Lorg/osmdroid/tileprovider/MapTilePreCache;
    .param p1, "x1"    # J

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/tileprovider/MapTilePreCache;->search(J)V

    return-void
.end method

.method private next()J
    .locals 3

    .line 100
    nop

    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileIndices:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 104
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileIndices:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 105
    .local v1, "index":J
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 107
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 108
    return-wide v1

    .line 110
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "index":J
    :cond_1
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private refresh()V
    .locals 6

    .line 72
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    monitor-enter v0

    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, "index":I
    :try_start_0
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/MapTileCache;->getAdditionalMapTileList()Lorg/osmdroid/util/MapTileAreaList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/osmdroid/util/MapTileArea;

    .line 76
    .local v3, "area":Lorg/osmdroid/util/MapTileArea;
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v4}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 77
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v4}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/osmdroid/util/MapTileArea;

    .local v4, "copy":Lorg/osmdroid/util/MapTileArea;
    goto :goto_1

    .line 79
    .end local v4    # "copy":Lorg/osmdroid/util/MapTileArea;
    :cond_0
    new-instance v4, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {v4}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    .line 80
    .restart local v4    # "copy":Lorg/osmdroid/util/MapTileArea;
    iget-object v5, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v5}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :goto_1
    invoke-virtual {v4, v3}, Lorg/osmdroid/util/MapTileArea;->set(Lorg/osmdroid/util/MapTileArea;)Lorg/osmdroid/util/MapTileArea;

    .line 83
    nop

    .end local v3    # "area":Lorg/osmdroid/util/MapTileArea;
    .end local v4    # "copy":Lorg/osmdroid/util/MapTileArea;
    add-int/lit8 v1, v1, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_1
    :goto_2
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v2}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 86
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v2}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v3}, Lorg/osmdroid/util/MapTileAreaList;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 88
    :cond_2
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileAreas:Lorg/osmdroid/util/MapTileAreaList;

    invoke-virtual {v2}, Lorg/osmdroid/util/MapTileAreaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iput-object v2, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mTileIndices:Ljava/util/Iterator;

    .line 89
    .end local v1    # "index":I
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private search(J)V
    .locals 4
    .param p1, "pMapTileIndex"    # J

    .line 117
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 119
    .local v1, "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    :try_start_0
    instance-of v2, v1, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    if-eqz v2, :cond_0

    .line 120
    move-object v2, v1

    check-cast v2, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/modules/MapTileDownloader;->getTileSource()Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    move-result-object v2

    .line 121
    .local v2, "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    instance-of v3, v2, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    if-eqz v3, :cond_0

    .line 122
    move-object v3, v2

    check-cast v3, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;->getTileSourcePolicy()Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/tilesource/TileSourcePolicy;->acceptsPreventive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    goto :goto_0

    .line 127
    .end local v2    # "tileSource":Lorg/osmdroid/tileprovider/tilesource/ITileSource;
    :cond_0
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->getTileLoader()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$TileLoader;->loadTileIfReachable(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 128
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_1

    .line 129
    goto :goto_0

    .line 131
    :cond_1
    iget-object v3, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v3, p1, p2, v2}, Lorg/osmdroid/tileprovider/MapTileCache;->putTile(JLandroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Lorg/osmdroid/tileprovider/modules/CantContinueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-void

    .line 133
    .end local v2    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 136
    .end local v1    # "provider":Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    goto :goto_0

    .line 137
    :cond_2
    return-void
.end method


# virtual methods
.method public addProvider(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;)V
    .locals 1
    .param p1, "pProvider"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 52
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public fill()V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mGC:Lorg/osmdroid/util/GarbageCollector;

    invoke-virtual {v0}, Lorg/osmdroid/util/GarbageCollector;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    return-void

    .line 62
    :cond_0
    invoke-direct {p0}, Lorg/osmdroid/tileprovider/MapTilePreCache;->refresh()V

    .line 63
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTilePreCache;->mGC:Lorg/osmdroid/util/GarbageCollector;

    invoke-virtual {v0}, Lorg/osmdroid/util/GarbageCollector;->gc()Z

    .line 64
    return-void
.end method
