.class public Lorg/mapsforge/map/layer/renderer/TileRendererLayer;
.super Lorg/mapsforge/map/layer/TileLayer;
.source "TileRendererLayer.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapsforge/map/layer/TileLayer<",
        "Lorg/mapsforge/map/layer/renderer/RendererJob;",
        ">;",
        "Lorg/mapsforge/map/model/common/Observer;"
    }
.end annotation


# instance fields
.field private final databaseRenderer:Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

.field private final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private final mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

.field private mapWorkerPool:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

.field private renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

.field private textScale:F

.field private final tileBasedLabelStore:Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

.field private xmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 8
    .param p1, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p2, "mapDataStore"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p3, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p4, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 60
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/model/IMapViewPosition;ZZZLorg/mapsforge/core/graphics/GraphicFactory;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/model/IMapViewPosition;ZZZLorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 9
    .param p1, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p2, "mapDataStore"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p3, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p4, "isTransparent"    # Z
    .param p5, "renderLabels"    # Z
    .param p6, "cacheLabels"    # Z
    .param p7, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 77
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/model/IMapViewPosition;ZZZLorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/model/IMapViewPosition;ZZZLorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;)V
    .locals 15
    .param p1, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p2, "mapDataStore"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p3, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p4, "isTransparent"    # Z
    .param p5, "renderLabels"    # Z
    .param p6, "cacheLabels"    # Z
    .param p7, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p8, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    .line 95
    move-object v0, p0

    invoke-interface/range {p7 .. p7}, Lorg/mapsforge/core/graphics/GraphicFactory;->createMatrix()Lorg/mapsforge/core/graphics/Matrix;

    move-result-object v1

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v12, p4

    invoke-direct {p0, v10, v11, v1, v12}, Lorg/mapsforge/map/layer/TileLayer;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/core/graphics/Matrix;Z)V

    .line 97
    move-object/from16 v1, p7

    iput-object v1, v0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 98
    move-object/from16 v13, p2

    iput-object v13, v0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    .line 99
    if-eqz p6, :cond_0

    .line 100
    new-instance v2, Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

    invoke-interface/range {p1 .. p1}, Lorg/mapsforge/map/layer/cache/TileCache;->getCapacityFirstLevel()I

    move-result v3

    invoke-direct {v2, v3}, Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;-><init>(I)V

    iput-object v2, v0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileBasedLabelStore:Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

    goto :goto_0

    .line 102
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileBasedLabelStore:Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

    .line 104
    :goto_0
    new-instance v14, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

    iget-object v6, v0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileBasedLabelStore:Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

    move-object v2, v14

    move-object/from16 v3, p2

    move-object/from16 v4, p7

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p8

    invoke-direct/range {v2 .. v9}, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;-><init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;ZZLorg/mapsforge/map/layer/hills/HillsRenderConfig;)V

    iput-object v14, v0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->databaseRenderer:Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

    .line 105
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->textScale:F

    .line 106
    return-void
.end method


# virtual methods
.method protected compileRenderTheme()V
    .locals 4

    .line 161
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->xmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v0, v1, v2, v3}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/mapsforge/map/model/DisplayModel;)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    .line 162
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    return-void
.end method

.method protected bridge synthetic createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/queue/Job;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/renderer/RendererJob;

    move-result-object p1

    return-object p1
.end method

.method protected createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/renderer/RendererJob;
    .locals 9
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 171
    new-instance v8, Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    iget-object v4, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget v5, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->textScale:F

    iget-boolean v6, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->isTransparent:Z

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/mapsforge/map/layer/renderer/RendererJob;-><init>(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;Lorg/mapsforge/map/model/DisplayModel;FZZ)V

    return-object v8
.end method

.method public getLabelStore()Lorg/mapsforge/map/layer/labels/LabelStore;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileBasedLabelStore:Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

    return-object v0
.end method

.method public getMapDataStore()Lorg/mapsforge/map/datastore/MapDataStore;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    return-object v0
.end method

.method public getRenderThemeFuture()Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    return-object v0
.end method

.method public getTextScale()F
    .locals 1

    .line 122
    iget v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->textScale:F

    return v0
.end method

.method protected isTileStale(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/graphics/TileBitmap;)Z
    .locals 4
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "bitmap"    # Lorg/mapsforge/core/graphics/TileBitmap;

    .line 194
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->getDataTimestamp(Lorg/mapsforge/core/model/Tile;)J

    move-result-wide v0

    invoke-interface {p2}, Lorg/mapsforge/core/graphics/TileBitmap;->getTimestamp()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAdd()V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapWorkerPool:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->start()V

    .line 200
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p0}, Lorg/mapsforge/map/layer/cache/TileCache;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 204
    :cond_0
    invoke-super {p0}, Lorg/mapsforge/map/layer/TileLayer;->onAdd()V

    .line 205
    return-void
.end method

.method public onChange()V
    .locals 0

    .line 226
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->requestRedraw()V

    .line 227
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->decrementRefCount()V

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    invoke-virtual {v0}, Lorg/mapsforge/map/datastore/MapDataStore;->close()V

    .line 131
    invoke-super {p0}, Lorg/mapsforge/map/layer/TileLayer;->onDestroy()V

    .line 132
    return-void
.end method

.method protected onRemove()V
    .locals 1

    .line 209
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapWorkerPool:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->stop()V

    .line 210
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v0, p0}, Lorg/mapsforge/map/layer/cache/TileCache;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 213
    :cond_0
    invoke-super {p0}, Lorg/mapsforge/map/layer/TileLayer;->onRemove()V

    .line 214
    return-void
.end method

.method protected bridge synthetic retrieveLabelsOnly(Lorg/mapsforge/map/layer/queue/Job;)V
    .locals 0

    .line 37
    check-cast p1, Lorg/mapsforge/map/layer/renderer/RendererJob;

    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->retrieveLabelsOnly(Lorg/mapsforge/map/layer/renderer/RendererJob;)V

    return-void
.end method

.method protected retrieveLabelsOnly(Lorg/mapsforge/map/layer/renderer/RendererJob;)V
    .locals 2
    .param p1, "job"    # Lorg/mapsforge/map/layer/renderer/RendererJob;

    .line 218
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->hasJobQueue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileBasedLabelStore:Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;->requiresTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p1}, Lorg/mapsforge/map/layer/renderer/RendererJob;->setRetrieveLabelsOnly()V

    .line 220
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/layer/queue/JobQueue;->add(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 222
    :cond_0
    return-void
.end method

.method public declared-synchronized setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 4
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-super {p0, p1}, Lorg/mapsforge/map/layer/TileLayer;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 137
    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->compileRenderTheme()V

    .line 139
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapWorkerPool:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->databaseRenderer:Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/layer/queue/JobQueue;Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;Lorg/mapsforge/map/layer/Layer;)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapWorkerPool:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    .line 142
    .end local p0    # "this":Lorg/mapsforge/map/layer/renderer/TileRendererLayer;
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapWorkerPool:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->start()V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->mapWorkerPool:Lorg/mapsforge/map/layer/renderer/MapWorkerPool;

    if-eqz v0, :cond_2

    .line 146
    invoke-virtual {v0}, Lorg/mapsforge/map/layer/renderer/MapWorkerPool;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    .end local p1    # "displayModel":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTextScale(F)V
    .locals 0
    .param p1, "textScale"    # F

    .line 152
    iput p1, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->textScale:F

    .line 153
    return-void
.end method

.method public setXmlRenderTheme(Lorg/mapsforge/map/rendertheme/XmlRenderTheme;)V
    .locals 0
    .param p1, "xmlRenderTheme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

    .line 156
    iput-object p1, p0, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->xmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

    .line 157
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/renderer/TileRendererLayer;->compileRenderTheme()V

    .line 158
    return-void
.end method
