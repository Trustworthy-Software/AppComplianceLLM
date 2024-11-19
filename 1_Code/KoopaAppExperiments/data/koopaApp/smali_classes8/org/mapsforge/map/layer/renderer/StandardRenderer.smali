.class public Lorg/mapsforge/map/layer/renderer/StandardRenderer;
.super Ljava/lang/Object;
.source "StandardRenderer.java"

# interfaces
.implements Lorg/mapsforge/map/rendertheme/RenderCallback;


# static fields
.field private static final DEFAULT_START_ZOOM_LEVEL:Ljava/lang/Byte;

.field private static final TAG_NATURAL_WATER:Lorg/mapsforge/core/model/Tag;

.field private static final ZOOM_MAX:B = 0x16t


# instance fields
.field public final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field public final hillsRenderConfig:Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

.field public final mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

.field private final renderLabels:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->DEFAULT_START_ZOOM_LEVEL:Ljava/lang/Byte;

    .line 46
    new-instance v0, Lorg/mapsforge/core/model/Tag;

    const-string v1, "natural"

    const-string v2, "water"

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/core/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->TAG_NATURAL_WATER:Lorg/mapsforge/core/model/Tag;

    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;Z)V
    .locals 1
    .param p1, "mapDataStore"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p2, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p3, "renderLabels"    # Z

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/mapsforge/map/layer/renderer/StandardRenderer;-><init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;ZLorg/mapsforge/map/layer/hills/HillsRenderConfig;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/datastore/MapDataStore;Lorg/mapsforge/core/graphics/GraphicFactory;ZLorg/mapsforge/map/layer/hills/HillsRenderConfig;)V
    .locals 0
    .param p1, "mapDataStore"    # Lorg/mapsforge/map/datastore/MapDataStore;
    .param p2, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p3, "renderLabels"    # Z
    .param p4, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    .line 75
    iput-object p2, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 76
    iput-boolean p3, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderLabels:Z

    .line 77
    iput-object p4, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->hillsRenderConfig:Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    .line 78
    return-void
.end method

.method private static getTilePixelCoordinates(I)[Lorg/mapsforge/core/model/Point;
    .locals 9
    .param p0, "tileSize"    # I

    .line 225
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/mapsforge/core/model/Point;

    .line 226
    .local v0, "result":[Lorg/mapsforge/core/model/Point;
    new-instance v1, Lorg/mapsforge/core/model/Point;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    const/4 v4, 0x0

    aput-object v1, v0, v4

    .line 227
    new-instance v1, Lorg/mapsforge/core/model/Point;

    int-to-double v5, p0

    invoke-direct {v1, v5, v6, v2, v3}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    const/4 v5, 0x1

    aput-object v1, v0, v5

    .line 228
    new-instance v1, Lorg/mapsforge/core/model/Point;

    int-to-double v5, p0

    int-to-double v7, p0

    invoke-direct {v1, v5, v6, v7, v8}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    const/4 v5, 0x2

    aput-object v1, v0, v5

    .line 229
    new-instance v1, Lorg/mapsforge/core/model/Point;

    int-to-double v5, p0

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/mapsforge/core/model/Point;-><init>(DD)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 230
    const/4 v1, 0x4

    aget-object v2, v0, v4

    aput-object v2, v0, v1

    .line 231
    return-object v0
.end method


# virtual methods
.method public getStartPosition()Lorg/mapsforge/core/model/LatLong;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Lorg/mapsforge/map/datastore/MapDataStore;->startPosition()Lorg/mapsforge/core/model/LatLong;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartZoomLevel()Ljava/lang/Byte;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/mapsforge/map/datastore/MapDataStore;->startZoomLevel()Ljava/lang/Byte;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    invoke-virtual {v0}, Lorg/mapsforge/map/datastore/MapDataStore;->startZoomLevel()Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 97
    :cond_0
    sget-object v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->DEFAULT_START_ZOOM_LEVEL:Ljava/lang/Byte;

    return-object v0
.end method

.method public getZoomLevelMax()B
    .locals 1

    .line 104
    const/16 v0, 0x16

    return v0
.end method

.method protected processReadMapData(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/MapReadResult;)V
    .locals 5
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "mapReadResult"    # Lorg/mapsforge/map/datastore/MapReadResult;

    .line 207
    if-nez p2, :cond_0

    .line 208
    return-void

    .line 211
    :cond_0
    iget-object v0, p2, Lorg/mapsforge/map/datastore/MapReadResult;->pointOfInterests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 212
    .local v1, "pointOfInterest":Lorg/mapsforge/map/datastore/PointOfInterest;
    invoke-virtual {p0, p1, v1}, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderPointOfInterest(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V

    .line 213
    .end local v1    # "pointOfInterest":Lorg/mapsforge/map/datastore/PointOfInterest;
    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p2, Lorg/mapsforge/map/datastore/MapReadResult;->ways:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/Way;

    .line 216
    .local v1, "way":Lorg/mapsforge/map/datastore/Way;
    new-instance v2, Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    iget-object v3, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-object v4, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v4, v4, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-direct {v2, v1, v3, v4}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;-><init>(Lorg/mapsforge/map/datastore/Way;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)V

    invoke-virtual {p0, p1, v2}, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderWay(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 217
    .end local v1    # "way":Lorg/mapsforge/map/datastore/Way;
    goto :goto_1

    .line 219
    :cond_2
    iget-boolean v0, p2, Lorg/mapsforge/map/datastore/MapReadResult;->isWater:Z

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderWaterBackground(Lorg/mapsforge/map/rendertheme/RenderContext;)V

    .line 222
    :cond_3
    return-void
.end method

.method public renderArea(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ILorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 1
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "fill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p3, "stroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p4, "level"    # I
    .param p5, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 109
    new-instance v0, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    invoke-direct {v0, p5, p3}, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;-><init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;)V

    invoke-virtual {p1, p4, v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->addToCurrentDrawingLayer(ILorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V

    .line 110
    new-instance v0, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    invoke-direct {v0, p5, p2}, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;-><init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;)V

    invoke-virtual {p1, p4, v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->addToCurrentDrawingLayer(ILorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V

    .line 111
    return-void
.end method

.method public renderAreaCaption(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;FFLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Position;ILorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 18
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "caption"    # Ljava/lang/String;
    .param p5, "horizontalOffset"    # F
    .param p6, "verticalOffset"    # F
    .param p7, "fill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p8, "stroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p9, "position"    # Lorg/mapsforge/core/graphics/Position;
    .param p10, "maxTextWidth"    # I
    .param p11, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 115
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderLabels:Z

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual/range {p11 .. p11}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getCenterAbsolute()Lorg/mapsforge/core/model/Point;

    move-result-object v1

    move/from16 v2, p5

    float-to-double v3, v2

    move/from16 v5, p6

    float-to-double v6, v5

    invoke-virtual {v1, v3, v4, v6, v7}, Lorg/mapsforge/core/model/Point;->offset(DD)Lorg/mapsforge/core/model/Point;

    move-result-object v1

    .line 117
    .local v1, "centerPoint":Lorg/mapsforge/core/model/Point;
    move-object/from16 v3, p1

    iget-object v4, v3, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    iget-object v8, v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    const/4 v15, 0x0

    move-object v9, v1

    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v16, p9

    move/from16 v17, p10

    invoke-interface/range {v8 .. v17}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPointTextContainer(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/mapelements/SymbolContainer;Lorg/mapsforge/core/graphics/Position;I)Lorg/mapsforge/core/mapelements/PointTextContainer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    .end local v1    # "centerPoint":Lorg/mapsforge/core/model/Point;
    :cond_0
    move-object/from16 v3, p1

    move/from16 v2, p5

    move/from16 v5, p6

    .line 119
    :goto_0
    return-void
.end method

.method public renderAreaSymbol(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 3
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "symbol"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p5, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 123
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderLabels:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p5}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getCenterAbsolute()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    .line 125
    .local v0, "centerPosition":Lorg/mapsforge/core/model/Point;
    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    new-instance v2, Lorg/mapsforge/core/mapelements/SymbolContainer;

    invoke-direct {v2, v0, p2, p3, p4}, Lorg/mapsforge/core/mapelements/SymbolContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .end local v0    # "centerPosition":Lorg/mapsforge/core/model/Point;
    :cond_0
    return-void
.end method

.method renderBitmap(Lorg/mapsforge/map/rendertheme/RenderContext;)Z
    .locals 2
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;

    .line 177
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->hasMapBackgroundOutside()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->mapDataStore:Lorg/mapsforge/map/datastore/MapDataStore;

    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/datastore/MapDataStore;->supportsTile(Lorg/mapsforge/core/model/Tile;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected renderPointOfInterest(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 1
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "pointOfInterest"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 181
    iget-byte v0, p2, Lorg/mapsforge/map/datastore/PointOfInterest;->layer:B

    invoke-virtual {p1, v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->setDrawingLayers(B)V

    .line 182
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v0, p0, p1, p2}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchNode(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/datastore/PointOfInterest;)V

    .line 183
    return-void
.end method

.method public renderPointOfInterestCaption(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;FFLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Position;ILorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 16
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "caption"    # Ljava/lang/String;
    .param p5, "horizontalOffset"    # F
    .param p6, "verticalOffset"    # F
    .param p7, "fill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p8, "stroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p9, "position"    # Lorg/mapsforge/core/graphics/Position;
    .param p10, "maxTextWidth"    # I
    .param p11, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderLabels:Z

    if-eqz v2, :cond_0

    .line 132
    move-object/from16 v2, p11

    iget-object v3, v2, Lorg/mapsforge/map/datastore/PointOfInterest;->position:Lorg/mapsforge/core/model/LatLong;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v4, v4, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-wide v4, v4, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v3, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelAbsolute(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;

    move-result-object v3

    .line 134
    .local v3, "poiPosition":Lorg/mapsforge/core/model/Point;
    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    iget-object v5, v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    move/from16 v15, p5

    float-to-double v6, v15

    move/from16 v14, p6

    float-to-double v8, v14

    invoke-virtual {v3, v6, v7, v8, v9}, Lorg/mapsforge/core/model/Point;->offset(DD)Lorg/mapsforge/core/model/Point;

    move-result-object v6

    const/4 v12, 0x0

    move-object/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v13, p9

    move/from16 v14, p10

    invoke-interface/range {v5 .. v14}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPointTextContainer(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/mapelements/SymbolContainer;Lorg/mapsforge/core/graphics/Position;I)Lorg/mapsforge/core/mapelements/PointTextContainer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 131
    .end local v3    # "poiPosition":Lorg/mapsforge/core/model/Point;
    :cond_0
    move/from16 v15, p5

    move-object/from16 v2, p11

    .line 137
    :goto_0
    return-void
.end method

.method public renderPointOfInterestCircle(Lorg/mapsforge/map/rendertheme/RenderContext;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ILorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 3
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "radius"    # F
    .param p3, "fill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p4, "stroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p5, "level"    # I
    .param p6, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 141
    iget-object v0, p6, Lorg/mapsforge/map/datastore/PointOfInterest;->position:Lorg/mapsforge/core/model/LatLong;

    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-static {v0, v1}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelRelativeToTile(Lorg/mapsforge/core/model/LatLong;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    .line 142
    .local v0, "poiPosition":Lorg/mapsforge/core/model/Point;
    new-instance v1, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    new-instance v2, Lorg/mapsforge/map/layer/renderer/CircleContainer;

    invoke-direct {v2, v0, p2}, Lorg/mapsforge/map/layer/renderer/CircleContainer;-><init>(Lorg/mapsforge/core/model/Point;F)V

    invoke-direct {v1, v2, p4}, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;-><init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;)V

    invoke-virtual {p1, p5, v1}, Lorg/mapsforge/map/rendertheme/RenderContext;->addToCurrentDrawingLayer(ILorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V

    .line 143
    new-instance v1, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    new-instance v2, Lorg/mapsforge/map/layer/renderer/CircleContainer;

    invoke-direct {v2, v0, p2}, Lorg/mapsforge/map/layer/renderer/CircleContainer;-><init>(Lorg/mapsforge/core/model/Point;F)V

    invoke-direct {v1, v2, p3}, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;-><init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;)V

    invoke-virtual {p1, p5, v1}, Lorg/mapsforge/map/rendertheme/RenderContext;->addToCurrentDrawingLayer(ILorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V

    .line 144
    return-void
.end method

.method public renderPointOfInterestSymbol(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/map/datastore/PointOfInterest;)V
    .locals 3
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "symbol"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p5, "poi"    # Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 148
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderLabels:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p5, Lorg/mapsforge/map/datastore/PointOfInterest;->position:Lorg/mapsforge/core/model/LatLong;

    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-wide v1, v1, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v0, v1, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getPixelAbsolute(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;

    move-result-object v0

    .line 150
    .local v0, "poiPosition":Lorg/mapsforge/core/model/Point;
    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    new-instance v2, Lorg/mapsforge/core/mapelements/SymbolContainer;

    invoke-direct {v2, v0, p2, p3, p4}, Lorg/mapsforge/core/mapelements/SymbolContainer;-><init>(Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .end local v0    # "poiPosition":Lorg/mapsforge/core/model/Point;
    :cond_0
    return-void
.end method

.method protected renderWaterBackground(Lorg/mapsforge/map/rendertheme/RenderContext;)V
    .locals 8
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->setDrawingLayers(B)V

    .line 187
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v0, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget v0, v0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-static {v0}, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->getTilePixelCoordinates(I)[Lorg/mapsforge/core/model/Point;

    move-result-object v0

    .line 188
    .local v0, "coordinates":[Lorg/mapsforge/core/model/Point;
    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v1, v1, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v1}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v1

    .line 189
    .local v1, "tileOrigin":Lorg/mapsforge/core/model/Point;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 190
    aget-object v3, v0, v2

    iget-wide v4, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v6, v1, Lorg/mapsforge/core/model/Point;->y:D

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/mapsforge/core/model/Point;->offset(DD)Lorg/mapsforge/core/model/Point;

    move-result-object v3

    aput-object v3, v0, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 192
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    iget-object v3, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v3, v3, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    iget-object v4, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v4, v4, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    sget-object v5, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->TAG_NATURAL_WATER:Lorg/mapsforge/core/model/Tag;

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v0, v3, v4, v5}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;-><init>([Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Ljava/util/List;)V

    .line 193
    .local v2, "way":Lorg/mapsforge/map/layer/renderer/PolylineContainer;
    iget-object v3, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v3, p0, p1, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchClosedWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 194
    return-void
.end method

.method public renderWay(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Paint;FILorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 1
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "stroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p3, "dy"    # F
    .param p4, "level"    # I
    .param p5, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 156
    new-instance v0, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    invoke-direct {v0, p5, p2, p3}, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;-><init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;F)V

    invoke-virtual {p1, p4, v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->addToCurrentDrawingLayer(ILorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V

    .line 157
    return-void
.end method

.method protected renderWay(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 1
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 197
    invoke-virtual {p2}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getLayer()B

    move-result v0

    invoke-virtual {p1, v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->setDrawingLayers(B)V

    .line 199
    invoke-virtual {p2}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->isClosedWay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v0, p0, p1, p2}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchClosedWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/RenderContext;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v0, p0, p1, p2}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->matchLinearWay(Lorg/mapsforge/map/rendertheme/RenderCallback;Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/renderer/PolylineContainer;)V

    .line 204
    :goto_0
    return-void
.end method

.method public renderWaySymbol(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILorg/mapsforge/core/graphics/Bitmap;FZZFFZLorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 13
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "symbol"    # Lorg/mapsforge/core/graphics/Bitmap;
    .param p5, "dy"    # F
    .param p6, "alignCenter"    # Z
    .param p7, "repeat"    # Z
    .param p8, "repeatGap"    # F
    .param p9, "repeatStart"    # F
    .param p10, "rotate"    # Z
    .param p11, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 161
    move-object v0, p0

    iget-boolean v1, v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderLabels:Z

    if-eqz v1, :cond_0

    .line 162
    nop

    .line 163
    invoke-virtual/range {p11 .. p11}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getCoordinatesAbsolute()[[Lorg/mapsforge/core/model/Point;

    move-result-object v11

    move-object v1, p1

    iget-object v12, v1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    .line 162
    move-object/from16 v2, p4

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v2 .. v12}, Lorg/mapsforge/map/layer/renderer/WayDecorator;->renderSymbol(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/graphics/Display;IFZZFFZ[[Lorg/mapsforge/core/model/Point;Ljava/util/List;)V

    goto :goto_0

    .line 161
    :cond_0
    move-object v1, p1

    .line 165
    :goto_0
    return-void
.end method

.method public renderWayText(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/core/graphics/Display;ILjava/lang/String;FLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ZFFZLorg/mapsforge/map/layer/renderer/PolylineContainer;)V
    .locals 16
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "display"    # Lorg/mapsforge/core/graphics/Display;
    .param p3, "priority"    # I
    .param p4, "textKey"    # Ljava/lang/String;
    .param p5, "dy"    # F
    .param p6, "fill"    # Lorg/mapsforge/core/graphics/Paint;
    .param p7, "stroke"    # Lorg/mapsforge/core/graphics/Paint;
    .param p8, "repeat"    # Z
    .param p9, "repeatGap"    # F
    .param p10, "repeatStart"    # F
    .param p11, "rotate"    # Z
    .param p12, "way"    # Lorg/mapsforge/map/layer/renderer/PolylineContainer;

    .line 170
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/mapsforge/map/layer/renderer/StandardRenderer;->renderLabels:Z

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual/range {p12 .. p12}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getUpperLeft()Lorg/mapsforge/core/model/Tile;

    move-result-object v2

    invoke-virtual/range {p12 .. p12}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getLowerRight()Lorg/mapsforge/core/model/Tile;

    move-result-object v3

    .line 172
    invoke-virtual/range {p12 .. p12}, Lorg/mapsforge/map/layer/renderer/PolylineContainer;->getCoordinatesAbsolute()[[Lorg/mapsforge/core/model/Point;

    move-result-object v14

    move-object/from16 v1, p1

    iget-object v15, v1, Lorg/mapsforge/map/rendertheme/RenderContext;->labels:Ljava/util/List;

    .line 171
    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v2 .. v15}, Lorg/mapsforge/map/layer/renderer/WayDecorator;->renderText(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;Ljava/lang/String;Lorg/mapsforge/core/graphics/Display;IFLorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;ZFFZ[[Lorg/mapsforge/core/model/Point;Ljava/util/List;)V

    goto :goto_0

    .line 170
    :cond_0
    move-object/from16 v1, p1

    .line 174
    :goto_0
    return-void
.end method
