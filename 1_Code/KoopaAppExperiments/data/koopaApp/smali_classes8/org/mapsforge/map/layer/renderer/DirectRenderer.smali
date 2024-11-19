.class public Lorg/mapsforge/map/layer/renderer/DirectRenderer;
.super Lorg/mapsforge/map/layer/renderer/StandardRenderer;
.source "DirectRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private final renderLabels:Z

.field private final tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

.field private final tileRefreshers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;ZLorg/mapsforge/map/layer/hills/HillsRenderConfig;)V
    .locals 1
    .param p1, "mapDataStore"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p2, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p3, "renderLabels"    # Z
    .param p4, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/mapsforge/map/layer/renderer/StandardRenderer;-><init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;ZLorg/mapsforge/map/layer/hills/HillsRenderConfig;)V

    .line 64
    iput-boolean p3, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->renderLabels:Z

    .line 65
    new-instance v0, Lorg/mapsforge/map/layer/renderer/TileDependencies;

    invoke-direct {v0}, Lorg/mapsforge/map/layer/renderer/TileDependencies;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->tileRefreshers:Ljava/util/List;

    .line 67
    return-void
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

    .line 133
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    monitor-enter v0

    .line 136
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v1, "labelsToDraw":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    iget-object v2, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v2, v2, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v2}, Lorg/mapsforge/core/model/Tile;->getNeighbours()Ljava/util/Set;

    move-result-object v2

    .line 139
    .local v2, "neighbours":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/model/Tile;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mapsforge/core/model/Tile;

    .line 140
    .local v4, "neighbour":Lorg/mapsforge/core/model/Tile;
    iget-object v5, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    iget-object v6, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v6, v6, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v5, v4, v6}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->getOverlappingElements(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 141
    nop

    .end local v4    # "neighbour":Lorg/mapsforge/core/model/Tile;
    goto :goto_0

    .line 147
    :cond_0
    iget-object v3, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    invoke-static {v3}, Lorg/mapsforge/map/util/LayerUtil;->collisionFreeOrdered(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 150
    .local v3, "currentElementsOrdered":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 151
    .local v4, "currentMapElementsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 152
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 153
    .local v5, "current":Lorg/mapsforge/core/mapelements/MapElementContainer;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 154
    .local v7, "label":Lorg/mapsforge/core/mapelements/MapElementContainer;
    invoke-virtual {v7, v5}, Lorg/mapsforge/core/mapelements/MapElementContainer;->clashesWith(Lorg/mapsforge/core/mapelements/MapElementContainer;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 155
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 156
    goto :goto_3

    .line 158
    .end local v7    # "label":Lorg/mapsforge/core/mapelements/MapElementContainer;
    :cond_1
    goto :goto_2

    .line 159
    .end local v5    # "current":Lorg/mapsforge/core/mapelements/MapElementContainer;
    :cond_2
    :goto_3
    goto :goto_1

    .line 161
    :cond_3
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 165
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mapsforge/core/model/Tile;

    .line 166
    .local v6, "neighbour":Lorg/mapsforge/core/model/Tile;
    iget-object v7, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    iget-object v8, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v8, v8, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v7, v8, v6}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->getOverlappingElements(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Ljava/util/Set;

    move-result-object v7

    .line 167
    .local v7, "before":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 168
    .local v8, "after":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 169
    .local v10, "element":Lorg/mapsforge/core/mapelements/MapElementContainer;
    invoke-virtual {v6}, Lorg/mapsforge/core/model/Tile;->getBoundaryAbsolute()Lorg/mapsforge/core/model/Rectangle;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/mapsforge/core/mapelements/MapElementContainer;->intersects(Lorg/mapsforge/core/model/Rectangle;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 170
    invoke-interface {v8, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v10    # "element":Lorg/mapsforge/core/mapelements/MapElementContainer;
    :cond_4
    goto :goto_5

    .line 173
    :cond_5
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 174
    iget-object v9, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    iget-object v10, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v10, v10, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v9, v10, v6}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->removeTileData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V

    .line 175
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 176
    .restart local v10    # "element":Lorg/mapsforge/core/mapelements/MapElementContainer;
    iget-object v11, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->tileDependencies:Lorg/mapsforge/map/layer/renderer/TileDependencies;

    iget-object v12, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v12, v12, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v11, v12, v6, v10}, Lorg/mapsforge/map/layer/renderer/TileDependencies;->addOverlappingElement(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/mapelements/MapElementContainer;)V

    .line 177
    .end local v10    # "element":Lorg/mapsforge/core/mapelements/MapElementContainer;
    goto :goto_6

    .line 178
    :cond_6
    iget-object v9, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->tileRefreshers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;

    .line 179
    .local v10, "tileRefresher":Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;
    invoke-interface {v10, v6}, Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;->refresh(Lorg/mapsforge/core/model/Tile;)V

    .line 180
    .end local v10    # "tileRefresher":Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;
    goto :goto_7

    .line 182
    .end local v6    # "neighbour":Lorg/mapsforge/core/model/Tile;
    .end local v7    # "before":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    .end local v8    # "after":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    :cond_7
    goto :goto_4

    .line 183
    :cond_8
    monitor-exit v0

    return-object v1

    .line 184
    .end local v1    # "labelsToDraw":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    .end local v2    # "neighbours":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/model/Tile;>;"
    .end local v3    # "currentElementsOrdered":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    .end local v4    # "currentMapElementsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addTileRefresher(Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;)V
    .locals 1
    .param p1, "tileRefresher"    # Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;

    .line 70
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->tileRefreshers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public executeJob(Lorg/mapsforge/map/layer/renderer/RendererJob;)Lorg/mapsforge/core/graphics/TileBitmap;
    .locals 6
    .param p1, "rendererJob"    # Lorg/mapsforge/map/layer/renderer/RendererJob;

    .line 79
    const/4 v0, 0x0

    .line 81
    .local v0, "renderContext":Lorg/mapsforge/map/rendertheme/RenderContext;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Lorg/mapsforge/map/rendertheme/RenderContext;

    new-instance v3, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v4, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    invoke-direct {v3, v4}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;)V

    invoke-direct {v2, p1, v3}, Lorg/mapsforge/map/rendertheme/RenderContext;-><init>(Lorg/mapsforge/map/layer/renderer/RendererJob;Lorg/mapsforge/map/layer/renderer/CanvasRasterer;)V

    move-object v0, v2

    .line 83
    invoke-virtual {p0, v0}, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->renderBitmap(Lorg/mapsforge/map/rendertheme/RenderContext;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 84
    const/4 v2, 0x0

    .line 86
    .local v2, "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    iget-object v4, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v3, v4}, Lorg/mapsforge/map/datastore/MapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v3

    .line 88
    .local v3, "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    invoke-virtual {p0, v0, v3}, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->processReadMapData(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/MapReadResult;)V

    .line 91
    .end local v3    # "mapReadResult":Lorg/mapsforge/map/datastore/MapReadResult;
    :cond_0
    iget-boolean v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->labelsOnly:Z

    if-nez v3, :cond_2

    .line 92
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v3, p0, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchHillShadings(Lorg/mapsforge/map/layer/renderer/StandardRenderer;Lorg/mapsforge/map/rendertheme/RenderContext;)V

    .line 93
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v4, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget v4, v4, Lorg/mapsforge/core/model/Tile;->tileSize:I

    iget-boolean v5, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->hasAlpha:Z

    invoke-interface {v3, v4, v5}, Lorg/mapsforge/core/graphics/GraphicFactory;->createTileBitmap(IZ)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v3

    move-object v2, v3

    .line 94
    iget-object v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    iget-object v4, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v3, v4}, Lorg/mapsforge/map/datastore/MapDataStore;->getDataTimestamp(Lorg/mapsforge/core/model/Tile;)J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lorg/mapsforge/core/graphics/TileBitmap;->setTimestamp(J)V

    .line 95
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    invoke-virtual {v3, v2}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->setCanvasBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 96
    iget-boolean v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->hasAlpha:Z

    if-nez v3, :cond_1

    iget-object v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v3}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v3

    iget-object v4, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v4}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->getMapBackground()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 97
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v4, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v4}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->getMapBackground()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->fill(I)V

    .line 99
    :cond_1
    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    invoke-virtual {v3, v0}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->drawWays(Lorg/mapsforge/map/rendertheme/RenderContext;)V

    .line 102
    :cond_2
    iget-boolean v3, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->renderLabels:Z

    if-eqz v3, :cond_3

    .line 103
    invoke-direct {p0, v0}, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->processLabels(Lorg/mapsforge/map/rendertheme/RenderContext;)Ljava/util/Set;

    move-result-object v3

    .line 105
    .local v3, "labelsToDraw":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    iget-object v4, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v5, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v4, v3, v5}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->drawMapElements(Ljava/util/Set;Lorg/mapsforge/core/model/Tile;)V

    .line 108
    .end local v3    # "labelsToDraw":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    :cond_3
    iget-boolean v3, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->labelsOnly:Z

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v3}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->hasMapBackgroundOutside()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 110
    iget-object v3, p0, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    invoke-virtual {v3}, Lorg/mapsforge/map/datastore/MapDataStore;->boundingBox()Lorg/mapsforge/core/model/BoundingBox;

    move-result-object v3

    iget-object v4, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/model/BoundingBox;->getPositionRelativeToTile(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Rectangle;

    move-result-object v3

    .line 111
    .local v3, "insideArea":Lorg/mapsforge/core/model/Rectangle;
    iget-boolean v4, p1, Lorg/mapsforge/map/layer/renderer/RendererJob;->hasAlpha:Z

    if-nez v4, :cond_4

    .line 112
    iget-object v4, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    iget-object v5, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v5}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->getMapBackgroundOutside()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->fillOutsideAreas(ILorg/mapsforge/core/model/Rectangle;)V

    goto :goto_0

    .line 114
    :cond_4
    iget-object v4, v0, Lorg/mapsforge/map/rendertheme/RenderContext;->canvasRasterer:Lorg/mapsforge/map/layer/renderer/CanvasRasterer;

    sget-object v5, Lorg/mapsforge/core/graphics/Color;->TRANSPARENT:Lorg/mapsforge/core/graphics/Color;

    invoke-virtual {v4, v5, v3}, Lorg/mapsforge/map/layer/renderer/CanvasRasterer;->fillOutsideAreas(Lorg/mapsforge/core/graphics/Color;Lorg/mapsforge/core/model/Rectangle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .end local v3    # "insideArea":Lorg/mapsforge/core/model/Rectangle;
    :cond_5
    :goto_0
    nop

    .line 126
    nop

    .line 127
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->destroy()V

    .line 117
    return-object v2

    .line 120
    .end local v2    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    :cond_6
    nop

    .line 126
    nop

    .line 127
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->destroy()V

    .line 120
    return-object v1

    .line 126
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 121
    :catch_0
    move-exception v2

    .line 123
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Lorg/mapsforge/map/layer/renderer/DirectRenderer;->LOGGER:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    nop

    .line 126
    if-eqz v0, :cond_7

    .line 127
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->destroy()V

    .line 124
    :cond_7
    return-object v1

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    if-eqz v0, :cond_8

    .line 127
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->destroy()V

    .line 129
    :cond_8
    throw v1
.end method
