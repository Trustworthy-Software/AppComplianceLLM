.class public Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;
.super Ljava/lang/Object;
.source "MapDataStoreLabelStore.java"

# interfaces
.implements Lorg/mapsforge/map/layer/labels/LabelStore;


# instance fields
.field final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field final renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

.field final standardRenderer:Lorg/mapsforge/map/layer/renderer/StandardRenderer;

.field final textScale:F


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;FLorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 2
    .param p1, "mapDataStore"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p2, "renderThemeFuture"    # Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;
    .param p3, "textScale"    # F
    .param p4, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p5, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p3, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->textScale:F

    .line 49
    iput-object p2, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    .line 51
    new-instance v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p5, v1}, Lorg/mapsforge/map/layer/renderer/StandardRenderer;-><init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;Z)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->standardRenderer:Lorg/mapsforge/map/layer/renderer/StandardRenderer;

    .line 52
    iput-object p4, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 53
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 57
    return-void
.end method

.method public getVersion()I
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getVisibleItems(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Ljava/util/List;
    .locals 9
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/model/Tile;",
            "Lorg/mapsforge/core/model/Tile;",
            ")",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 69
    :try_start_0
    new-instance v8, Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->standardRenderer:Lorg/mapsforge/map/layer/renderer/StandardRenderer;

    iget-object v2, v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    iget-object v3, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    iget-object v4, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget v5, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->textScale:F

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/mapsforge/map/layer/renderer/RendererJob;-><init>(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;Lorg/mapsforge/map/model/DisplayModel;FZZ)V

    move-object v0, v8

    .line 70
    .local v0, "rendererJob":Lorg/mapsforge/map/layer/renderer/RendererJob;
    new-instance v1, Lorg/mapsforge/map/rendertheme/RenderContext;

    new-instance v2, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v3, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->standardRenderer:Lorg/mapsforge/map/layer/renderer/StandardRenderer;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    invoke-direct {v2, v3}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;)V

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/RenderContext;-><init>(Lorg/mapsforge/map/layer/renderer/RendererJob;Lorg/mapsforge/map/layer/renderer/CanvasRasterer;)V

    .line 72
    .local v1, "renderContext":Lorg/mapsforge/map/rendertheme/RenderContext;
    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->standardRenderer:Lorg/mapsforge/map/layer/renderer/StandardRenderer;

    iget-object v2, v2, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    invoke-virtual {v2, p1, p2}, Lorg/mapsforge/map/datastore/MapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v2

    .line 74
    .local v2, "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    if-nez v2, :cond_0

    .line 75
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    .line 78
    .end local p0    # "this":Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;
    :cond_0
    :try_start_1
    iget-object v3, v2, Lorg/mapsforge/map/datastore/MapReadResult;->pointOfInterests:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 79
    .local v4, "pointOfInterest":Lorg/mapsforge/map/datastore/PointOfInterest;
    iget-byte v5, v4, Lorg/mapsforge/map/datastore/PointOfInterest;->layer:B

    invoke-virtual {v1, v5}, Lorg/mapsforge/map/rendertheme/RenderContext;->setDrawingLayers(B)V

    .line 80
    iget-object v5, v1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v5, v5, Lorg/mapsforge/map/layer/renderer/RendererJob;->renderThemeFuture:Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;

    invoke-virtual {v5}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeFuture;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    iget-object v6, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->standardRenderer:Lorg/mapsforge/map/layer/renderer/StandardRenderer;

    invoke-virtual {v5, v6, v1, v4}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V

    .line 81
    .end local v4    # "pointOfInterest":Lorg/mapsforge/map/datastore/PointOfInterest;
    goto :goto_0

    .line 82
    :cond_1
    iget-object v3, v2, Lorg/mapsforge/map/datastore/MapReadResult;->ways:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/map/datastore/Way;

    .line 83
    .local v4, "way":Lorg/mapsforge/map/datastore/Way;
    new-instance v5, Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    invoke-direct {v5, v4, p1, p2}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;-><init>(Lorg/mapsforge/map/datastore/Way;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V

    .line 84
    .local v5, "polylineContainer":Lorg/mapsforge/map/layer/renderer/PolylineContainer;
    invoke-virtual {v5}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getLayer()B

    move-result v6

    invoke-virtual {v1, v6}, Lorg/mapsforge/map/rendertheme/RenderContext;->setDrawingLayers(B)V

    .line 86
    invoke-virtual {v5}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->isClosedWay()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 87
    iget-object v6, v1, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    iget-object v7, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->standardRenderer:Lorg/mapsforge/map/layer/renderer/StandardRenderer;

    invoke-virtual {v6, v7, v1, v5}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchClosedWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    goto :goto_2

    .line 89
    :cond_2
    iget-object v6, v1, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    iget-object v7, p0, Lorg/mapsforge/map/layer/labels/MapDataStoreLabelStore;->standardRenderer:Lorg/mapsforge/map/layer/renderer/StandardRenderer;

    invoke-virtual {v6, v7, v1, v5}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchLinearWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 91
    .end local v4    # "way":Lorg/mapsforge/map/datastore/Way;
    .end local v5    # "polylineContainer":Lorg/mapsforge/map/layer/renderer/PolylineContainer;
    :goto_2
    goto :goto_1

    .line 93
    :cond_3
    iget-object v3, v1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3

    .line 68
    .end local v0    # "rendererJob":Lorg/mapsforge/map/layer/renderer/RendererJob;
    .end local v1    # "renderContext":Lorg/mapsforge/map/rendertheme/RenderContext;
    .end local v2    # "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    .end local p1    # "upperLeft":Lorg/mapsforge/core/model/Tile;
    .end local p2    # "lowerRight":Lorg/mapsforge/core/model/Tile;
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 94
    .restart local p1    # "upperLeft":Lorg/mapsforge/core/model/Tile;
    .restart local p2    # "lowerRight":Lorg/mapsforge/core/model/Tile;
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "upperLeft":Lorg/mapsforge/core/model/Tile;
    .end local p2    # "lowerRight":Lorg/mapsforge/core/model/Tile;
    :goto_3
    monitor-exit p0

    throw p1
.end method
