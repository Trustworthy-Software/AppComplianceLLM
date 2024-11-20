.class public Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;
.super Ljava/lang/Object;
.source "Hillshading.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private always:Z

.field private final layer:B

.field private final level:I

.field private final magnitude:F

.field private final maxZoom:B

.field private final minZoom:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(BBSBZILorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 1
    .param p1, "minZoom"    # B
    .param p2, "maxZoom"    # B
    .param p3, "magnitude"    # S
    .param p4, "layer"    # B
    .param p5, "always"    # Z
    .param p6, "level"    # I
    .param p7, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p5, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->always:Z

    .line 50
    iput p6, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->level:I

    .line 51
    iput-byte p4, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->layer:B

    .line 52
    iput-byte p1, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->minZoom:B

    .line 53
    iput-byte p2, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->maxZoom:B

    .line 54
    int-to-float v0, p3

    iput v0, p0, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->magnitude:F

    .line 55
    return-void
.end method


# virtual methods
.method public render(Lorg/mapsforge/map/rendertheme/RenderContext;Lorg/mapsforge/map/layer/hills/HillsRenderConfig;)V
    .locals 65
    .param p1, "renderContext"    # Lorg/mapsforge/map/rendertheme/RenderContext;
    .param p2, "hillsRenderConfig"    # Lorg/mapsforge/map/layer/hills/HillsRenderConfig;

    .line 58
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez p2, :cond_1

    .line 59
    iget-boolean v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->always:Z

    if-eqz v0, :cond_0

    .line 60
    iget-byte v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->layer:B

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->setDrawingLayers(B)V

    .line 61
    new-instance v0, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;

    iget v4, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->magnitude:F

    invoke-direct {v0, v3, v4, v3, v3}, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;-><init>(Lorg/mapsforge/core/graphics/HillshadingBitmap;FLorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Rectangle;)V

    .line 62
    .local v0, "hillShape":Lorg/mapsforge/map/layer/renderer/ShapeContainer;
    iget v4, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->level:I

    new-instance v5, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    invoke-direct {v5, v0, v3}, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;-><init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;)V

    invoke-virtual {v2, v4, v5}, Lorg/mapsforge/map/rendertheme/RenderContext;->addToCurrentDrawingLayer(ILorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V

    .line 64
    .end local v0    # "hillShape":Lorg/mapsforge/map/layer/renderer/ShapeContainer;
    :cond_0
    return-void

    .line 66
    :cond_1
    iget v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->magnitude:F

    invoke-virtual/range {p2 .. p2}, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->getMaginuteScaleFactor()F

    move-result v4

    mul-float/2addr v0, v4

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v4, 0x437f0000    # 255.0f

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float v11, v0, v4

    .line 67
    .local v11, "effectiveMagnitude":F
    iget-object v0, v2, Lorg/mapsforge/map/rendertheme/RenderContext;->rendererJob:Lorg/mapsforge/map/layer/renderer/RendererJob;

    iget-object v12, v0, Lorg/mapsforge/map/layer/renderer/RendererJob;->tile:Lorg/mapsforge/core/model/Tile;

    .line 68
    .local v12, "tile":Lorg/mapsforge/core/model/Tile;
    iget-byte v13, v12, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    .line 69
    .local v13, "zoomLevel":B
    iget-byte v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->maxZoom:B

    if-gt v13, v0, :cond_11

    iget-byte v0, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->minZoom:B

    if-ge v13, v0, :cond_2

    move-object v14, v1

    move-object v1, v2

    move v10, v11

    move/from16 v32, v13

    goto/16 :goto_b

    .line 72
    :cond_2
    invoke-virtual {v12}, Lorg/mapsforge/core/model/Tile;->getOrigin()Lorg/mapsforge/core/model/Point;

    move-result-object v14

    .line 73
    .local v14, "origin":Lorg/mapsforge/core/model/Point;
    iget-wide v4, v14, Lorg/mapsforge/core/model/Point;->y:D

    double-to-long v4, v4

    long-to-double v4, v4

    iget-wide v6, v12, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v4, v5, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitude(DJ)D

    move-result-wide v15

    .line 74
    .local v15, "maptileTopLat":D
    iget-wide v4, v14, Lorg/mapsforge/core/model/Point;->x:D

    double-to-long v4, v4

    long-to-double v4, v4

    iget-wide v6, v12, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v4, v5, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitude(DJ)D

    move-result-wide v17

    .line 76
    .local v17, "maptileLeftLng":D
    iget-wide v4, v14, Lorg/mapsforge/core/model/Point;->y:D

    double-to-long v4, v4

    iget v0, v12, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    long-to-double v4, v4

    iget-wide v6, v12, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v4, v5, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->pixelYToLatitude(DJ)D

    move-result-wide v19

    .line 77
    .local v19, "maptileBottomLat":D
    iget-wide v4, v14, Lorg/mapsforge/core/model/Point;->x:D

    double-to-long v4, v4

    iget v0, v12, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-long v6, v0

    add-long/2addr v4, v6

    long-to-double v4, v4

    iget-wide v6, v12, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v4, v5, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->pixelXToLongitude(DJ)D

    move-result-wide v4

    .line 79
    .local v4, "maptileRightLng":D
    sub-double v21, v15, v19

    .line 80
    .local v21, "mapTileLatDegrees":D
    sub-double v23, v4, v17

    .line 81
    .local v23, "mapTileLngDegrees":D
    iget v0, v12, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-double v6, v0

    div-double v25, v6, v21

    .line 82
    .local v25, "pxPerLat":D
    iget v0, v12, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-double v6, v0

    div-double v27, v6, v23

    .line 84
    .local v27, "pxPerLng":D
    cmpg-double v0, v4, v17

    if-gez v0, :cond_3

    .line 85
    iget-wide v6, v12, Lorg/mapsforge/core/model/Tile;->mapSize:J

    long-to-double v6, v6

    add-double/2addr v4, v6

    move-wide/from16 v29, v4

    goto :goto_0

    .line 84
    :cond_3
    move-wide/from16 v29, v4

    .line 88
    .end local v4    # "maptileRightLng":D
    .local v29, "maptileRightLng":D
    :goto_0
    const/4 v9, 0x1

    .line 89
    .local v9, "shadingLngStep":I
    const/4 v10, 0x1

    .line 90
    .local v10, "shadingLatStep":I
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    move v7, v0

    .local v7, "shadingLeftLng":I
    :goto_1
    int-to-double v4, v7

    cmpg-double v0, v4, v29

    if-gtz v0, :cond_10

    .line 91
    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    move v8, v0

    .local v8, "shadingBottomLat":I
    :goto_2
    int-to-double v4, v8

    cmpg-double v0, v4, v15

    if-gtz v0, :cond_f

    .line 92
    add-int/lit8 v6, v7, 0x1

    .line 93
    .local v6, "shadingRightLng":I
    add-int/lit8 v5, v8, 0x1

    .line 95
    .local v5, "shadingTopLat":I
    const/16 v31, 0x0

    .line 97
    .local v31, "shadingTile":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    move-object/from16 v4, p2

    move v3, v5

    .end local v5    # "shadingTopLat":I
    .local v3, "shadingTopLat":I
    move v5, v8

    move/from16 v32, v13

    move v13, v6

    .end local v6    # "shadingRightLng":I
    .local v13, "shadingRightLng":I
    .local v32, "zoomLevel":B
    move v6, v7

    move v2, v7

    move/from16 v33, v11

    move v11, v8

    .end local v7    # "shadingLeftLng":I
    .end local v8    # "shadingBottomLat":I
    .local v2, "shadingLeftLng":I
    .local v11, "shadingBottomLat":I
    .local v33, "effectiveMagnitude":F
    move-wide/from16 v7, v25

    move/from16 v35, v9

    move/from16 v34, v13

    move v13, v10

    .end local v9    # "shadingLngStep":I
    .end local v10    # "shadingLatStep":I
    .local v13, "shadingLatStep":I
    .local v34, "shadingRightLng":I
    .local v35, "shadingLngStep":I
    move-wide/from16 v9, v27

    :try_start_0
    invoke-virtual/range {v4 .. v10}, Lorg/mapsforge/map/layer/hills/HillsRenderConfig;->getShadingTile(IIDD)Lorg/mapsforge/core/graphics/HillshadingBitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v31, v0

    .line 100
    goto :goto_3

    .line 98
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->LOGGER:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v31

    .line 101
    .end local v31    # "shadingTile":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .local v0, "shadingTile":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    :goto_3
    if-nez v0, :cond_4

    .line 102
    iget-boolean v4, v1, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->always:Z

    if-nez v4, :cond_4

    .line 103
    move/from16 v55, v13

    move-object/from16 v31, v14

    move/from16 v10, v33

    move/from16 v3, v35

    const/4 v5, 0x0

    move-object v14, v1

    move-object/from16 v1, p1

    goto/16 :goto_a

    .line 106
    :cond_4
    const-wide/16 v4, 0x0

    .line 112
    .local v4, "shadingPixelOffset":D
    if-eqz v0, :cond_5

    .line 113
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getPadding()I

    move-result v6

    .line 114
    .local v6, "padding":I
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getWidth()I

    move-result v7

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    .line 115
    .local v7, "shadingInnerWidth":I
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/HillshadingBitmap;->getHeight()I

    move-result v8

    mul-int/lit8 v9, v6, 0x2

    sub-int/2addr v8, v9

    .local v8, "shadingInnerHeight":I
    goto :goto_4

    .line 118
    .end local v6    # "padding":I
    .end local v7    # "shadingInnerWidth":I
    .end local v8    # "shadingInnerHeight":I
    :cond_5
    const/4 v6, 0x0

    .line 119
    .restart local v6    # "padding":I
    const/4 v7, 0x1

    .line 120
    .restart local v7    # "shadingInnerWidth":I
    const/4 v8, 0x1

    .line 124
    .restart local v8    # "shadingInnerHeight":I
    :goto_4
    int-to-double v9, v6

    .line 125
    .local v9, "shadingSubrectTop":D
    move-object/from16 v31, v0

    .end local v0    # "shadingTile":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .restart local v31    # "shadingTile":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    int-to-double v0, v6

    .line 127
    .local v0, "shadingSubrectLeft":D
    move-wide/from16 v36, v4

    .end local v4    # "shadingPixelOffset":D
    .local v36, "shadingPixelOffset":D
    int-to-double v4, v7

    add-double/2addr v4, v0

    .line 128
    .local v4, "shadingSubrectRight":D
    move-wide/from16 v38, v0

    .end local v0    # "shadingSubrectLeft":D
    .local v38, "shadingSubrectLeft":D
    int-to-double v0, v8

    add-double/2addr v0, v9

    .line 131
    .local v0, "shadingSubrectBottom":D
    const-wide/16 v40, 0x0

    .line 132
    .local v40, "maptileSubrectLeft":D
    const-wide/16 v42, 0x0

    .line 133
    .local v42, "maptileSubrectTop":D
    move-wide/from16 v44, v0

    .end local v0    # "shadingSubrectBottom":D
    .local v44, "shadingSubrectBottom":D
    iget v0, v12, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-double v0, v0

    .line 134
    .local v0, "maptileSubrectRight":D
    move-wide/from16 v46, v0

    .end local v0    # "maptileSubrectRight":D
    .local v46, "maptileSubrectRight":D
    iget v0, v12, Lorg/mapsforge/core/model/Tile;->tileSize:I

    int-to-double v0, v0

    .line 137
    .local v0, "maptileSubrectBottom":D
    move-wide/from16 v48, v0

    .end local v0    # "maptileSubrectBottom":D
    .local v48, "maptileSubrectBottom":D
    int-to-double v0, v3

    cmpl-double v0, v0, v15

    if-lez v0, :cond_6

    .line 138
    int-to-double v0, v6

    move-wide/from16 v50, v4

    .end local v4    # "shadingSubrectRight":D
    .local v50, "shadingSubrectRight":D
    int-to-double v4, v8

    move-wide/from16 v52, v9

    .end local v9    # "shadingSubrectTop":D
    .local v52, "shadingSubrectTop":D
    int-to-double v9, v3

    sub-double/2addr v9, v15

    move/from16 v54, v6

    move/from16 v55, v7

    .end local v6    # "padding":I
    .end local v7    # "shadingInnerWidth":I
    .local v54, "padding":I
    .local v55, "shadingInnerWidth":I
    int-to-double v6, v13

    div-double/2addr v9, v6

    mul-double/2addr v4, v9

    add-double v9, v0, v4

    .end local v52    # "shadingSubrectTop":D
    .restart local v9    # "shadingSubrectTop":D
    goto :goto_5

    .line 139
    .end local v50    # "shadingSubrectRight":D
    .end local v54    # "padding":I
    .end local v55    # "shadingInnerWidth":I
    .restart local v4    # "shadingSubrectRight":D
    .restart local v6    # "padding":I
    .restart local v7    # "shadingInnerWidth":I
    :cond_6
    move-wide/from16 v50, v4

    move/from16 v54, v6

    move/from16 v55, v7

    move-wide/from16 v52, v9

    .end local v4    # "shadingSubrectRight":D
    .end local v6    # "padding":I
    .end local v7    # "shadingInnerWidth":I
    .end local v9    # "shadingSubrectTop":D
    .restart local v50    # "shadingSubrectRight":D
    .restart local v52    # "shadingSubrectTop":D
    .restart local v54    # "padding":I
    .restart local v55    # "shadingInnerWidth":I
    int-to-double v0, v3

    cmpl-double v0, v15, v0

    if-lez v0, :cond_7

    .line 140
    int-to-double v0, v3

    int-to-double v4, v8

    div-double v4, v36, v4

    add-double/2addr v0, v4

    iget-wide v4, v12, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v0, v1, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v0

    iget-wide v4, v14, Lorg/mapsforge/core/model/Point;->y:D

    sub-double v42, v0, v4

    move-wide/from16 v9, v52

    goto :goto_5

    .line 139
    :cond_7
    move-wide/from16 v9, v52

    .line 142
    .end local v52    # "shadingSubrectTop":D
    .restart local v9    # "shadingSubrectTop":D
    :goto_5
    int-to-double v0, v11

    cmpg-double v0, v0, v19

    if-gez v0, :cond_8

    .line 143
    add-int v6, v54, v8

    int-to-double v0, v6

    int-to-double v4, v8

    int-to-double v6, v11

    sub-double v6, v19, v6

    move-wide/from16 v52, v9

    .end local v9    # "shadingSubrectTop":D
    .restart local v52    # "shadingSubrectTop":D
    int-to-double v9, v13

    div-double/2addr v6, v9

    mul-double/2addr v4, v6

    sub-double/2addr v0, v4

    .end local v44    # "shadingSubrectBottom":D
    .local v0, "shadingSubrectBottom":D
    goto :goto_6

    .line 144
    .end local v0    # "shadingSubrectBottom":D
    .end local v52    # "shadingSubrectTop":D
    .restart local v9    # "shadingSubrectTop":D
    .restart local v44    # "shadingSubrectBottom":D
    :cond_8
    move-wide/from16 v52, v9

    .end local v9    # "shadingSubrectTop":D
    .restart local v52    # "shadingSubrectTop":D
    int-to-double v0, v11

    cmpg-double v0, v19, v0

    if-gez v0, :cond_9

    .line 145
    int-to-double v0, v11

    int-to-double v4, v8

    div-double v4, v36, v4

    add-double/2addr v0, v4

    iget-wide v4, v12, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v0, v1, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v0

    iget-wide v4, v14, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v0, v4

    move-wide/from16 v48, v0

    move-wide/from16 v0, v44

    .end local v48    # "maptileSubrectBottom":D
    .local v0, "maptileSubrectBottom":D
    goto :goto_6

    .line 144
    .end local v0    # "maptileSubrectBottom":D
    .restart local v48    # "maptileSubrectBottom":D
    :cond_9
    move-wide/from16 v0, v44

    .line 147
    .end local v44    # "shadingSubrectBottom":D
    .local v0, "shadingSubrectBottom":D
    :goto_6
    int-to-double v4, v2

    cmpg-double v4, v4, v17

    if-gez v4, :cond_a

    .line 148
    move/from16 v6, v54

    .end local v54    # "padding":I
    .restart local v6    # "padding":I
    int-to-double v4, v6

    move/from16 v7, v55

    .end local v55    # "shadingInnerWidth":I
    .restart local v7    # "shadingInnerWidth":I
    int-to-double v9, v7

    move-wide/from16 v44, v0

    .end local v0    # "shadingSubrectBottom":D
    .restart local v44    # "shadingSubrectBottom":D
    int-to-double v0, v2

    sub-double v0, v17, v0

    move/from16 v54, v3

    move/from16 v55, v13

    move/from16 v3, v35

    move-object/from16 v35, v14

    .end local v13    # "shadingLatStep":I
    .end local v14    # "origin":Lorg/mapsforge/core/model/Point;
    .local v3, "shadingLngStep":I
    .local v35, "origin":Lorg/mapsforge/core/model/Point;
    .local v54, "shadingTopLat":I
    .local v55, "shadingLatStep":I
    int-to-double v13, v3

    div-double/2addr v0, v13

    mul-double/2addr v9, v0

    add-double v0, v4, v9

    move-object/from16 v4, v35

    .end local v38    # "shadingSubrectLeft":D
    .local v0, "shadingSubrectLeft":D
    goto :goto_7

    .line 149
    .end local v6    # "padding":I
    .end local v7    # "shadingInnerWidth":I
    .end local v44    # "shadingSubrectBottom":D
    .local v0, "shadingSubrectBottom":D
    .local v3, "shadingTopLat":I
    .restart local v13    # "shadingLatStep":I
    .restart local v14    # "origin":Lorg/mapsforge/core/model/Point;
    .local v35, "shadingLngStep":I
    .restart local v38    # "shadingSubrectLeft":D
    .local v54, "padding":I
    .local v55, "shadingInnerWidth":I
    :cond_a
    move-wide/from16 v44, v0

    move/from16 v6, v54

    move/from16 v7, v55

    move/from16 v54, v3

    move/from16 v55, v13

    move/from16 v3, v35

    move-object/from16 v35, v14

    .end local v0    # "shadingSubrectBottom":D
    .end local v13    # "shadingLatStep":I
    .end local v14    # "origin":Lorg/mapsforge/core/model/Point;
    .local v3, "shadingLngStep":I
    .restart local v6    # "padding":I
    .restart local v7    # "shadingInnerWidth":I
    .local v35, "origin":Lorg/mapsforge/core/model/Point;
    .restart local v44    # "shadingSubrectBottom":D
    .local v54, "shadingTopLat":I
    .local v55, "shadingLatStep":I
    int-to-double v0, v2

    cmpg-double v0, v17, v0

    if-gez v0, :cond_b

    .line 150
    int-to-double v0, v2

    int-to-double v4, v7

    div-double v4, v36, v4

    add-double/2addr v0, v4

    iget-wide v4, v12, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v0, v1, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v0

    move-object/from16 v4, v35

    .end local v35    # "origin":Lorg/mapsforge/core/model/Point;
    .local v4, "origin":Lorg/mapsforge/core/model/Point;
    iget-wide v9, v4, Lorg/mapsforge/core/model/Point;->x:D

    sub-double v40, v0, v9

    move-wide/from16 v0, v38

    goto :goto_7

    .line 149
    .end local v4    # "origin":Lorg/mapsforge/core/model/Point;
    .restart local v35    # "origin":Lorg/mapsforge/core/model/Point;
    :cond_b
    move-object/from16 v4, v35

    .end local v35    # "origin":Lorg/mapsforge/core/model/Point;
    .restart local v4    # "origin":Lorg/mapsforge/core/model/Point;
    move-wide/from16 v0, v38

    .line 152
    .end local v38    # "shadingSubrectLeft":D
    .local v0, "shadingSubrectLeft":D
    :goto_7
    move/from16 v5, v34

    .end local v34    # "shadingRightLng":I
    .local v5, "shadingRightLng":I
    int-to-double v9, v5

    cmpl-double v9, v9, v29

    if-lez v9, :cond_c

    .line 153
    add-int v9, v6, v7

    int-to-double v9, v9

    int-to-double v13, v7

    move/from16 v34, v6

    move/from16 v35, v7

    .end local v6    # "padding":I
    .end local v7    # "shadingInnerWidth":I
    .local v34, "padding":I
    .local v35, "shadingInnerWidth":I
    int-to-double v6, v5

    sub-double v6, v6, v29

    move-wide/from16 v38, v0

    .end local v0    # "shadingSubrectLeft":D
    .restart local v38    # "shadingSubrectLeft":D
    int-to-double v0, v3

    div-double/2addr v6, v0

    mul-double/2addr v13, v6

    sub-double v0, v9, v13

    move-wide/from16 v50, v0

    move-wide/from16 v0, v46

    .end local v50    # "shadingSubrectRight":D
    .local v0, "shadingSubrectRight":D
    goto :goto_8

    .line 154
    .end local v34    # "padding":I
    .end local v35    # "shadingInnerWidth":I
    .end local v38    # "shadingSubrectLeft":D
    .local v0, "shadingSubrectLeft":D
    .restart local v6    # "padding":I
    .restart local v7    # "shadingInnerWidth":I
    .restart local v50    # "shadingSubrectRight":D
    :cond_c
    move-wide/from16 v38, v0

    move/from16 v34, v6

    move/from16 v35, v7

    .end local v0    # "shadingSubrectLeft":D
    .end local v6    # "padding":I
    .end local v7    # "shadingInnerWidth":I
    .restart local v34    # "padding":I
    .restart local v35    # "shadingInnerWidth":I
    .restart local v38    # "shadingSubrectLeft":D
    int-to-double v0, v5

    cmpl-double v0, v29, v0

    if-lez v0, :cond_d

    .line 155
    int-to-double v0, v5

    int-to-double v6, v8

    div-double v6, v36, v6

    add-double/2addr v0, v6

    iget-wide v6, v12, Lorg/mapsforge/core/model/Tile;->mapSize:J

    invoke-static {v0, v1, v6, v7}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v0

    iget-wide v6, v4, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v0, v6

    .end local v46    # "maptileSubrectRight":D
    .local v0, "maptileSubrectRight":D
    goto :goto_8

    .line 154
    .end local v0    # "maptileSubrectRight":D
    .restart local v46    # "maptileSubrectRight":D
    :cond_d
    move-wide/from16 v0, v46

    .line 158
    .end local v46    # "maptileSubrectRight":D
    .restart local v0    # "maptileSubrectRight":D
    :goto_8
    if-nez v31, :cond_e

    const/4 v6, 0x0

    goto :goto_9

    :cond_e
    new-instance v6, Lorg/mapsforge/core/model/Rectangle;

    move-object/from16 v56, v6

    move-wide/from16 v57, v38

    move-wide/from16 v59, v52

    move-wide/from16 v61, v50

    move-wide/from16 v63, v44

    invoke-direct/range {v56 .. v64}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    .line 159
    .local v6, "hillsRect":Lorg/mapsforge/core/model/Rectangle;
    :goto_9
    new-instance v7, Lorg/mapsforge/core/model/Rectangle;

    move-object/from16 v56, v7

    move-wide/from16 v57, v40

    move-wide/from16 v59, v42

    move-wide/from16 v61, v0

    move-wide/from16 v63, v48

    invoke-direct/range {v56 .. v64}, Lorg/mapsforge/core/model/Rectangle;-><init>(DDDD)V

    .line 160
    .local v7, "maptileRect":Lorg/mapsforge/core/model/Rectangle;
    new-instance v9, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;

    move-object/from16 v13, v31

    move/from16 v10, v33

    .end local v31    # "shadingTile":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .end local v33    # "effectiveMagnitude":F
    .local v10, "effectiveMagnitude":F
    .local v13, "shadingTile":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    invoke-direct {v9, v13, v10, v6, v7}, Lorg/mapsforge/map/layer/renderer/HillshadingContainer;-><init>(Lorg/mapsforge/core/graphics/HillshadingBitmap;FLorg/mapsforge/core/model/Rectangle;Lorg/mapsforge/core/model/Rectangle;)V

    .line 162
    .local v9, "hillShape":Lorg/mapsforge/map/layer/renderer/ShapeContainer;
    move-object/from16 v14, p0

    move-wide/from16 v46, v0

    .end local v0    # "maptileSubrectRight":D
    .restart local v46    # "maptileSubrectRight":D
    iget-byte v0, v14, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->layer:B

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/rendertheme/RenderContext;->setDrawingLayers(B)V

    .line 163
    iget v0, v14, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;->level:I

    move-object/from16 v31, v4

    .end local v4    # "origin":Lorg/mapsforge/core/model/Point;
    .local v31, "origin":Lorg/mapsforge/core/model/Point;
    new-instance v4, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;

    move/from16 v33, v5

    const/4 v5, 0x0

    .end local v5    # "shadingRightLng":I
    .local v33, "shadingRightLng":I
    invoke-direct {v4, v9, v5}, Lorg/mapsforge/map/layer/renderer/ShapePaintContainer;-><init>(Lorg/mapsforge/map/layer/renderer/ShapeContainer;Lorg/mapsforge/core/graphics/Paint;)V

    invoke-virtual {v1, v0, v4}, Lorg/mapsforge/map/rendertheme/RenderContext;->addToCurrentDrawingLayer(ILorg/mapsforge/map/layer/renderer/ShapePaintContainer;)V

    .line 91
    .end local v6    # "hillsRect":Lorg/mapsforge/core/model/Rectangle;
    .end local v7    # "maptileRect":Lorg/mapsforge/core/model/Rectangle;
    .end local v8    # "shadingInnerHeight":I
    .end local v9    # "hillShape":Lorg/mapsforge/map/layer/renderer/ShapeContainer;
    .end local v13    # "shadingTile":Lorg/mapsforge/core/graphics/HillshadingBitmap;
    .end local v33    # "shadingRightLng":I
    .end local v34    # "padding":I
    .end local v35    # "shadingInnerWidth":I
    .end local v36    # "shadingPixelOffset":D
    .end local v38    # "shadingSubrectLeft":D
    .end local v40    # "maptileSubrectLeft":D
    .end local v42    # "maptileSubrectTop":D
    .end local v44    # "shadingSubrectBottom":D
    .end local v46    # "maptileSubrectRight":D
    .end local v48    # "maptileSubrectBottom":D
    .end local v50    # "shadingSubrectRight":D
    .end local v52    # "shadingSubrectTop":D
    .end local v54    # "shadingTopLat":I
    :goto_a
    add-int v8, v11, v55

    move v7, v2

    move v9, v3

    move-object v3, v5

    move v11, v10

    move/from16 v13, v32

    move/from16 v10, v55

    move-object v2, v1

    move-object v1, v14

    move-object/from16 v14, v31

    .end local v11    # "shadingBottomLat":I
    .local v8, "shadingBottomLat":I
    goto/16 :goto_2

    .end local v2    # "shadingLeftLng":I
    .end local v3    # "shadingLngStep":I
    .end local v31    # "origin":Lorg/mapsforge/core/model/Point;
    .end local v32    # "zoomLevel":B
    .end local v55    # "shadingLatStep":I
    .local v7, "shadingLeftLng":I
    .local v9, "shadingLngStep":I
    .local v10, "shadingLatStep":I
    .local v11, "effectiveMagnitude":F
    .local v13, "zoomLevel":B
    .restart local v14    # "origin":Lorg/mapsforge/core/model/Point;
    :cond_f
    move-object v5, v3

    move v3, v9

    move/from16 v55, v10

    move v10, v11

    move/from16 v32, v13

    move-object/from16 v31, v14

    move-object v14, v1

    move-object v1, v2

    move v2, v7

    move v11, v8

    .line 90
    .end local v7    # "shadingLeftLng":I
    .end local v8    # "shadingBottomLat":I
    .end local v9    # "shadingLngStep":I
    .end local v11    # "effectiveMagnitude":F
    .end local v13    # "zoomLevel":B
    .end local v14    # "origin":Lorg/mapsforge/core/model/Point;
    .restart local v2    # "shadingLeftLng":I
    .restart local v3    # "shadingLngStep":I
    .local v10, "effectiveMagnitude":F
    .restart local v31    # "origin":Lorg/mapsforge/core/model/Point;
    .restart local v32    # "zoomLevel":B
    .restart local v55    # "shadingLatStep":I
    add-int v7, v2, v3

    move-object v2, v1

    move-object v3, v5

    move v11, v10

    move-object v1, v14

    move-object/from16 v14, v31

    move/from16 v10, v55

    .end local v2    # "shadingLeftLng":I
    .restart local v7    # "shadingLeftLng":I
    goto/16 :goto_1

    .line 166
    .end local v3    # "shadingLngStep":I
    .end local v7    # "shadingLeftLng":I
    .end local v31    # "origin":Lorg/mapsforge/core/model/Point;
    .end local v32    # "zoomLevel":B
    .end local v55    # "shadingLatStep":I
    .restart local v9    # "shadingLngStep":I
    .local v10, "shadingLatStep":I
    .restart local v11    # "effectiveMagnitude":F
    .restart local v13    # "zoomLevel":B
    .restart local v14    # "origin":Lorg/mapsforge/core/model/Point;
    :cond_10
    return-void

    .line 69
    .end local v9    # "shadingLngStep":I
    .end local v10    # "shadingLatStep":I
    .end local v14    # "origin":Lorg/mapsforge/core/model/Point;
    .end local v15    # "maptileTopLat":D
    .end local v17    # "maptileLeftLng":D
    .end local v19    # "maptileBottomLat":D
    .end local v21    # "mapTileLatDegrees":D
    .end local v23    # "mapTileLngDegrees":D
    .end local v25    # "pxPerLat":D
    .end local v27    # "pxPerLng":D
    .end local v29    # "maptileRightLng":D
    :cond_11
    move-object v14, v1

    move-object v1, v2

    move v10, v11

    move/from16 v32, v13

    .line 70
    .end local v11    # "effectiveMagnitude":F
    .end local v13    # "zoomLevel":B
    .local v10, "effectiveMagnitude":F
    .restart local v32    # "zoomLevel":B
    :goto_b
    return-void
.end method
