.class public Lorg/mapsforge/map/layer/hills/HillsRenderConfig;
.super Ljava/lang/Object;
.source "HillsRenderConfig.java"


# instance fields
.field private maginuteScaleFactor:F

.field private tileSource:Lorg/mapsforge/map/layer/hills/ShadeTileSource;


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/hills/ShadeTileSource;Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;)V
    .locals 1
    .param p1, "demFolder"    # Ljava/io/File;
    .param p2, "graphicsFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p3, "tileSource"    # Lorg/mapsforge/map/layer/hills/ShadeTileSource;
    .param p4, "algorithm"    # Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->maginuteScaleFactor:F

    .line 40
    if-nez p3, :cond_0

    new-instance v0, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;

    invoke-direct {v0, p1, p4, p2}, Lorg/mapsforge/map/layer/hills/MemoryCachingHgtReaderTileSource;-><init>(Ljava/io/File;Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;Lorg/mapsforge/core/graphics/GraphicFactory;)V

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    iput-object v0, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->tileSource:Lorg/mapsforge/map/layer/hills/ShadeTileSource;

    .line 41
    invoke-interface {v0, p1}, Lorg/mapsforge/map/layer/hills/ShadeTileSource;->setDemFolder(Ljava/io/File;)V

    .line 42
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->tileSource:Lorg/mapsforge/map/layer/hills/ShadeTileSource;

    invoke-interface {v0, p4}, Lorg/mapsforge/map/layer/hills/ShadeTileSource;->setShadingAlgorithm(Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/layer/hills/ShadeTileSource;)V
    .locals 1
    .param p1, "tileSource"    # Lorg/mapsforge/map/layer/hills/ShadeTileSource;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->maginuteScaleFactor:F

    .line 35
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->tileSource:Lorg/mapsforge/map/layer/hills/ShadeTileSource;

    .line 36
    return-void
.end method


# virtual methods
.method public getMaginuteScaleFactor()F
    .locals 1

    .line 78
    iget v0, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->maginuteScaleFactor:F

    return v0
.end method

.method public getShadingTile(IIDD)Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .locals 9
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

    .line 65
    iget-object v7, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->tileSource:Lorg/mapsforge/map/layer/hills/ShadeTileSource;

    .line 66
    .local v7, "tileSource":Lorg/mapsforge/map/layer/hills/ShadeTileSource;
    if-nez v7, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    move-object v0, v7

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/mapsforge/map/layer/hills/ShadeTileSource;->getHillshadingBitmap(IIDD)Lorg/mapsforge/core/graphics/HillshadingBitmap;

    move-result-object v8

    .line 69
    .local v8, "ret":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    if-nez v8, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0xb2

    if-le v0, v1, :cond_2

    .line 70
    if-lez p2, :cond_1

    add-int/lit16 v0, p2, -0xb4

    goto :goto_0

    :cond_1
    add-int/lit16 v0, p2, 0xb4

    :goto_0
    move v2, v0

    .line 71
    .local v2, "eastInt":I
    move-object v0, v7

    move v1, p1

    move-wide v3, p3

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/mapsforge/map/layer/hills/ShadeTileSource;->getHillshadingBitmap(IIDD)Lorg/mapsforge/core/graphics/HillshadingBitmap;

    move-result-object v8

    .line 74
    .end local v2    # "eastInt":I
    :cond_2
    return-object v8
.end method

.method public getTileSource()Lorg/mapsforge/map/layer/hills/ShadeTileSource;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->tileSource:Lorg/mapsforge/map/layer/hills/ShadeTileSource;

    return-object v0
.end method

.method public indexOnThread()Lorg/mapsforge/map/layer/hills/HillsRenderConfig;
    .locals 2

    .line 50
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->tileSource:Lorg/mapsforge/map/layer/hills/ShadeTileSource;

    .line 51
    .local v0, "cache":Lorg/mapsforge/map/layer/hills/ShadeTileSource;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/mapsforge/map/layer/hills/ShadeTileSource;->applyConfiguration(Z)V

    .line 52
    :cond_0
    return-object p0
.end method

.method public setMaginuteScaleFactor(F)V
    .locals 0
    .param p1, "maginuteScaleFactor"    # F

    .line 86
    iput p1, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->maginuteScaleFactor:F

    .line 87
    return-void
.end method

.method public setTileSource(Lorg/mapsforge/map/layer/hills/ShadeTileSource;)V
    .locals 0
    .param p1, "tileSource"    # Lorg/mapsforge/map/layer/hills/ShadeTileSource;

    .line 94
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->tileSource:Lorg/mapsforge/map/layer/hills/ShadeTileSource;

    .line 95
    return-void
.end method
