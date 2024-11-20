.class public Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;
.super Lorg/mapsforge/map/layer/renderer/StandardRenderer;
.source "DatabaseRenderer.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final labelStore:Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

.field private final renderLabels:Z

.field private final tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

.field private final tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;ZZLorg/mapsforge/map/layer/hills/HillsRenderConfig;)V
    .locals 1
    .param p1, "mapDataStore"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p2, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p3, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p4, "labelStore"    # Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;
    .param p5, "renderLabels"    # Z
    .param p6, "cacheLabels"    # Z
    .param p7, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    .line 69
    if-nez p5, :cond_1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, v0, p7}, Lorg/mapsforge/map/layer/renderer/StandardRenderer;-><init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;ZLorg/mapsforge/map/layer/hills/HillsRenderConfig;)V

    .line 70
    iput-object p3, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    .line 71
    iput-object p4, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->labelStore:Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

    .line 72
    iput-boolean p5, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->renderLabels:Z

    .line 73
    if-nez p5, :cond_2

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    goto :goto_2

    .line 76
    :cond_2
    new-instance v0, Lorg/mapsforge/map/layer/renderer/TileDependencies;

    invoke-direct {v0}, Lorg/mapsforge/map/layer/renderer/TileDependencies;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    .line 78
    :goto_2
    return-void
.end method

.method private createBackgroundBitmap(Lorg/mapsforge/map/rendertheme/RenderContext;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 3
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;

    .line 160
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget v1, v1, Lorg/mapsforge/core/model/Tile;->tileSize:I

    iget-object v2, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-boolean v2, v2, Lorg/mapsforge/map/layer/renderer/RendererJob;->hasAlpha:Z

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/core/graphics/GraphicFactory;->createTileBitmap(IZ)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v0

    .line 161
    .local v0, "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->setCanvasBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 162
    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-boolean v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->hasAlpha:Z

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v2, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v2}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->getMapBackgroundOutside()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->fill(I)V

    .line 165
    :cond_0
    return-object v0
.end method

.method private processLabels(Lorg/mapsforge/map/rendertheme/RenderContext;)Ljava/util/Set;
    .locals 13
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/rendertheme/RenderContext;",
            ")",
            "Ljava/util/Set<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 174
    .local v0, "labelsToDraw":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    iget-object v1, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    monitor-enter v1

    .line 178
    :try_start_0
    iget-object v2, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v2}, Lorg/mapsforge/core/model/Tile;->getNeighbours()Ljava/util/Set;

    move-result-object v2

    .line 179
    .local v2, "neighbours":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/model/Tile;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 180
    .local v3, "tileIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/model/Tile;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 182
    .local v4, "undrawableElements":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    iget-object v5, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    iget-object v6, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v6, v6, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v5, v6}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->addTileInProgress(Lorg/mapsforge/core/model/Tile;)V

    .line 183
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/core/model/Tile;

    .line 186
    .local v5, "neighbour":Lorg/mapsforge/core/model/Tile;
    iget-object v6, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    invoke-virtual {v6, v5}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->isTileInProgress(Lorg/mapsforge/core/model/Tile;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    iget-object v7, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    invoke-virtual {v7, v5}, Lorg/mapsforge/map/layer/renderer/RendererJob;->otherTile(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/renderer/RendererJob;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    iget-object v6, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    invoke-virtual {v6, v5}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->removeTileData(Lorg/mapsforge/core/model/Tile;)V

    goto :goto_3

    .line 192
    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    iget-object v7, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v7, v7, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v6, v5, v7}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->getOverlappingElements(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 195
    iget-object v6, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 196
    .local v7, "current":Lorg/mapsforge/core/mapelements/MapElementContainer;
    invoke-virtual {v5}, Lorg/mapsforge/core/model/Tile;->getBoundaryAbsolute()Lorg/mapsforge/core/model/Rectangle;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/mapsforge/core/mapelements/MapElementContainer;->intersects(Lorg/mapsforge/core/model/Rectangle;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 197
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    .end local v7    # "current":Lorg/mapsforge/core/mapelements/MapElementContainer;
    :cond_2
    goto :goto_2

    .line 202
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 206
    .end local v5    # "neighbour":Lorg/mapsforge/core/model/Tile;
    :goto_3
    goto :goto_0

    .line 210
    :cond_4
    iget-object v5, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 216
    iget-object v5, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    invoke-static {v5}, Lorg/mapsforge/map/util/LayerUtil;->collisionFreeOrdered(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 219
    .local v5, "currentElementsOrdered":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 220
    .local v6, "currentMapElementsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 221
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 222
    .restart local v7    # "current":Lorg/mapsforge/core/mapelements/MapElementContainer;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 223
    .local v9, "label":Lorg/mapsforge/core/mapelements/MapElementContainer;
    invoke-virtual {v9, v7}, Lorg/mapsforge/core/mapelements/MapElementContainer;->clashesWith(Lorg/mapsforge/core/mapelements/MapElementContainer;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 224
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 225
    goto :goto_6

    .line 227
    .end local v9    # "label":Lorg/mapsforge/core/mapelements/MapElementContainer;
    :cond_5
    goto :goto_5

    .line 228
    .end local v7    # "current":Lorg/mapsforge/core/mapelements/MapElementContainer;
    :cond_6
    :goto_6
    goto :goto_4

    .line 230
    :cond_7
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 234
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/mapsforge/core/model/Tile;

    .line 235
    .local v8, "tile":Lorg/mapsforge/core/model/Tile;
    iget-object v9, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    iget-object v10, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v10, v10, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v9, v10, v8}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->removeTileData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V

    .line 236
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 237
    .local v10, "element":Lorg/mapsforge/core/mapelements/MapElementContainer;
    invoke-virtual {v8}, Lorg/mapsforge/core/model/Tile;->getBoundaryAbsolute()Lorg/mapsforge/core/model/Rectangle;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mapsforge/core/mapelements/MapElementContainer;->intersects(Lorg/mapsforge/core/model/Rectangle;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 238
    iget-object v11, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    iget-object v12, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v12, v12, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v11, v12, v8, v10}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->addOverlappingElement(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/mapelements/MapElementContainer;)V

    .line 240
    .end local v10    # "element":Lorg/mapsforge/core/mapelements/MapElementContainer;
    :cond_8
    goto :goto_8

    .line 241
    .end local v8    # "tile":Lorg/mapsforge/core/model/Tile;
    :cond_9
    goto :goto_7

    .line 242
    .end local v2    # "neighbours":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/model/Tile;>;"
    .end local v3    # "tileIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/model/Tile;>;"
    .end local v4    # "undrawableElements":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    .end local v5    # "currentElementsOrdered":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    .end local v6    # "currentMapElementsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    :cond_a
    monitor-exit v1

    .line 243
    return-object v0

    .line 242
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public executeJob(Lorg/mapsforge/map/layer/renderer/RendererJob;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 5
    .param p1, "rendererJob"    # Lorg/mapsforge/map/layer/renderer/RendererJob;

    .line 86
    const/4 v0, 0x0

    .line 88
    .local v0, "renderContext":Lorg/mapsforge/map/rendertheme/RenderContext;
    :try_start_0
    new-instance v1, Lorg/mapsforge/map/rendertheme/RenderContext;

    new-instance v2, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    invoke-direct {v2, v3}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;)V

    invoke-direct {v1, p1, v2}, Lorg/mapsforge/map/rendertheme/RenderContext;-><init>(Lorg/mapsforge/map/layer/renderer/RendererJob;Lorg/mapsforge/map/layer/renderer/CanvasRasterer;)V

    move-object v0, v1

    .line 90
    invoke-virtual {p0, v0}, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->renderBitmap(Lorg/mapsforge/map/rendertheme/RenderContext;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 91
    const/4 v1, 0x0

    .line 93
    .local v1, "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    if-eqz v2, :cond_0

    .line 94
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    iget-object v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v2, v3}, Lorg/mapsforge/map/datastore/MapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v2

    .line 95
    .local v2, "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    invoke-virtual {p0, v0, v2}, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->processReadMapData(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/MapReadResult;)V

    .line 98
    .end local v2    # "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    :cond_0
    iget-boolean v2, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->labelsOnly:Z

    if-nez v2, :cond_2

    .line 99
    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v2, p0, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchHillShadings(Lorg/mapsforge/map/layer/renderer/StandardRenderer;Lorg/mapsforge/map/rendertheme/RenderContext;)V

    .line 100
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget v3, v3, Lorg/mapsforge/core/model/Tile;->tileSize:I

    iget-boolean v4, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->hasAlpha:Z

    invoke-interface {v2, v3, v4}, Lorg/mapsforge/core/graphics/GraphicFactory;->createTileBitmap(IZ)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v2

    move-object v1, v2

    .line 101
    iget-object v2, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    iget-object v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v2, v3}, Lorg/mapsforge/map/datastore/MapDataStore;->getDataTimestamp(Lorg/mapsforge/core/model/Tile;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lorg/mapsforge/core/graphics/TileBitmap;->setTimestamp(J)V

    .line 102
    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    invoke-virtual {v2, v1}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->setCanvasBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 103
    iget-boolean v2, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->hasAlpha:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v2

    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v3}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->getMapBackground()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 104
    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v3}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->getMapBackground()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->fill(I)V

    .line 106
    :cond_1
    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->drawWays(Lorg/mapsforge/map/rendertheme/RenderContext;)V

    .line 109
    :cond_2
    iget-boolean v2, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->renderLabels:Z

    if-eqz v2, :cond_3

    .line 110
    invoke-direct {p0, v0}, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->processLabels(Lorg/mapsforge/map/rendertheme/RenderContext;)Ljava/util/Set;

    move-result-object v2

    .line 112
    .local v2, "labelsToDraw":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v4, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v3, v2, v4}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->drawMapElements(Ljava/util/Set;Lorg/mapsforge/core/model/Tile;)V

    .line 114
    .end local v2    # "labelsToDraw":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    :cond_3
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->labelStore:Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;

    if-eqz v2, :cond_4

    .line 116
    iget-object v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-object v4, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    invoke-virtual {v2, v3, v4}, Lorg/mapsforge/map/layer/labels/TileBasedLabelStore;->storeMapItems(Lorg/mapsforge/core/model/Tile;Ljava/util/List;)V

    .line 119
    :cond_4
    iget-boolean v2, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->labelsOnly:Z

    if-nez v2, :cond_6

    iget-object v2, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v2}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->hasMapBackgroundOutside()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 121
    iget-object v2, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    invoke-virtual {v2}, Lorg/mapsforge/map/datastore/MapDataStore;->boundingBox()Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v2

    iget-object v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v2, v3}, Lorg/mapsforge/core/model/BoundingBox;->getPositionRelativeToTile(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Rectangle;

    move-result-object v2

    .line 122
    .local v2, "insideArea":Lorg/mapsforge/core/model/Rectangle;
    iget-boolean v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->hasAlpha:Z

    if-nez v3, :cond_5

    .line 123
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v4, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v4}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->getMapBackgroundOutside()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->fillOutsideAreas(ILorg/mapsforge/core/model/Rectangle;)V

    goto :goto_0

    .line 125
    :cond_5
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    sget-object v4, Lorg/mapsforge/core/graphics/Color;->TRANSPARENT:Lorg/mapsforge/core/graphics/Color;

    invoke-virtual {v3, v4, v2}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->fillOutsideAreas(Lorg/mapsforge/core/graphics/Color;Lorg/mapsforge/core/model/Rectangle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v2    # "insideArea":Lorg/mapsforge/core/model/Rectangle;
    :cond_6
    :goto_0
    nop

    .line 137
    nop

    .line 138
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->destroy()V

    .line 128
    return-object v1

    .line 131
    .end local v1    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    :cond_7
    :try_start_1
    invoke-direct {p0, v0}, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->createBackgroundBitmap(Lorg/mapsforge/map/rendertheme/RenderContext;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    nop

    .line 138
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->destroy()V

    .line 131
    return-object v1

    .line 137
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 132
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    nop

    .line 137
    if-eqz v0, :cond_8

    .line 138
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->destroy()V

    .line 135
    :cond_8
    const/4 v2, 0x0

    return-object v2

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v0, :cond_9

    .line 138
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->destroy()V

    .line 140
    :cond_9
    throw v1
.end method

.method public getMapDatabase()Lorg/mapsforge/map/datastore/MapDataStore;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    return-object v0
.end method

.method removeTileInProgress(Lorg/mapsforge/core/model/Tile;)V
    .locals 1
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 148
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/DatabaseRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0, p1}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->removeTileInProgress(Lorg/mapsforge/core/model/Tile;)V

    .line 151
    :cond_0
    return-void
.end method
