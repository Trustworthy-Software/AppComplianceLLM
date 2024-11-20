.class public Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;
.super Ljava/lang/Object;
.source "MemoryCachingHgtReaderTileSource.java"

# interfaces
.implements Lorg/mapsforge/map/layer/hills/ShadeTileSource;


# instance fields
.field private algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

.field private configurationChangePending:Z

.field private currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

.field private demFolder:Ljava/io/File;

.field private enableInterpolationOverlap:Z

.field private final graphicsFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private mainCacheSize:I

.field private neighborCacheSize:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 0
    .param p1, "demFolder"    # Ljava/io/File;
    .param p2, "algorithm"    # Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;
    .param p3, "graphicsFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 37
    invoke-direct {p0, p3}, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;)V

    .line 38
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->demFolder:Ljava/io/File;

    .line 39
    iput-object p2, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 1
    .param p1, "graphicsFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x4

    iput v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->mainCacheSize:I

    .line 30
    iput v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->neighborCacheSize:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->enableInterpolationOverlap:Z

    .line 34
    iput-boolean v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->configurationChangePending:Z

    .line 43
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->graphicsFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 44
    return-void
.end method

.method private latestCache()Lorg/mapsforge/map/layer/hills/HgtCache;
    .locals 9

    .line 54
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 55
    .local v0, "ret":Lorg/mapsforge/map/layer/hills/HgtCache;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->configurationChangePending:Z

    if-nez v1, :cond_0

    return-object v0

    .line 56
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->demFolder:Ljava/io/File;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    if-nez v1, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->enableInterpolationOverlap:Z

    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    iget-boolean v2, v2, Lorg/mapsforge/map/layer/hills/HgtCache;->interpolatorOverlap:Z

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->mainCacheSize:I

    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    iget v2, v2, Lorg/mapsforge/map/layer/hills/HgtCache;->mainCacheSize:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->neighborCacheSize:I

    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    iget v2, v2, Lorg/mapsforge/map/layer/hills/HgtCache;->neighborCacheSize:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->demFolder:Ljava/io/File;

    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    iget-object v2, v2, Lorg/mapsforge/map/layer/hills/HgtCache;->demFolder:Ljava/io/File;

    .line 64
    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    iget-object v2, v2, Lorg/mapsforge/map/layer/hills/HgtCache;->algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 67
    :cond_2
    new-instance v1, Lorg/mapsforge/map/layer/hills/HgtCache;

    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->demFolder:Ljava/io/File;

    iget-boolean v4, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->enableInterpolationOverlap:Z

    iget-object v5, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->graphicsFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v6, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    iget v7, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->mainCacheSize:I

    iget v8, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->neighborCacheSize:I

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lorg/mapsforge/map/layer/hills/HgtCache;-><init>(Ljava/io/File;ZLorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;II)V

    move-object v0, v1

    .line 68
    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 70
    :cond_3
    return-object v0

    .line 57
    :cond_4
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 58
    return-object v1
.end method


# virtual methods
.method public applyConfiguration(Z)V
    .locals 2
    .param p1, "allowParallel"    # Z

    .line 48
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 49
    .local v0, "before":Lorg/mapsforge/map/layer/hills/HgtCache;
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->latestCache()Lorg/mapsforge/map/layer/hills/HgtCache;

    move-result-object v1

    .line 50
    .local v1, "latest":Lorg/mapsforge/map/layer/hills/HgtCache;
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    if-eq v1, v0, :cond_0

    invoke-virtual {v1}, Lorg/mapsforge/map/layer/hills/HgtCache;->indexOnThread()V

    .line 51
    :cond_0
    return-void
.end method

.method public getAlgorithm()Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    return-object v0
.end method

.method public getDemFolder()Ljava/io/File;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->demFolder:Ljava/io/File;

    return-object v0
.end method

.method public getHillshadingBitmap(IIDD)Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .locals 8
    .param p1, "latitudeOfSouthWestCorner"    # I
    .param p2, "longituedOfSouthWestCorner"    # I
    .param p3, "pxPerLat"    # D
    .param p5, "pxPerLng"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->latestCache()Lorg/mapsforge/map/layer/hills/HgtCache;

    move-result-object v0

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return-object v0

    .line 85
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lorg/mapsforge/map/layer/hills/HgtCache;->getHillshadingBitmap(IIDD)Lorg/mapsforge/core/graphics/HillshadingBitmap;

    move-result-object v0

    return-object v0
.end method

.method public getMainCacheSize()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->mainCacheSize:I

    return v0
.end method

.method public getNeighborCacheSize()I
    .locals 1

    .line 125
    iget v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->neighborCacheSize:I

    return v0
.end method

.method public isEnableInterpolationOverlap()Z
    .locals 1

    .line 129
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->enableInterpolationOverlap:Z

    return v0
.end method

.method public prepareOnThread()V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->currentCache:Lorg/mapsforge/map/layer/hills/HgtCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/hills/HgtCache;->indexOnThread()V

    .line 76
    :cond_0
    return-void
.end method

.method public setDemFolder(Ljava/io/File;)V
    .locals 0
    .param p1, "demFolder"    # Ljava/io/File;

    .line 95
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->demFolder:Ljava/io/File;

    .line 96
    return-void
.end method

.method public setEnableInterpolationOverlap(Z)V
    .locals 0
    .param p1, "enableInterpolationOverlap"    # Z

    .line 117
    iput-boolean p1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->enableInterpolationOverlap:Z

    .line 118
    return-void
.end method

.method public setMainCacheSize(I)V
    .locals 0
    .param p1, "mainCacheSize"    # I

    .line 102
    iput p1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->mainCacheSize:I

    .line 103
    return-void
.end method

.method public setNeighborCacheSize(I)V
    .locals 0
    .param p1, "neighborCacheSize"    # I

    .line 109
    iput p1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->neighborCacheSize:I

    .line 110
    return-void
.end method

.method public setShadingAlgorithm(Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;)V
    .locals 0
    .param p1, "algorithm"    # Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    .line 90
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;->algorithm:Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    .line 91
    return-void
.end method
