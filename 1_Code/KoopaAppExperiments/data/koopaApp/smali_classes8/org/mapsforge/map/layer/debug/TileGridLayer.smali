.class public Lorg/mapsforge/map/layer/debug/TileGridLayer;
.super Lorg/mapsforge/map/layer/Layer;
.source "TileGridLayer.java"


# instance fields
.field private final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field private final paintBack:Lorg/mapsforge/core/graphics/Paint;

.field private final paintFront:Lorg/mapsforge/core/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 1
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 51
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 53
    iput-object p2, p0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 55
    invoke-static {p1, p2}, Lorg/mapsforge/map/layer/debug/TileGridLayer;->createPaintBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    .line 56
    invoke-static {p1, p2}, Lorg/mapsforge/map/layer/debug/TileGridLayer;->createPaintFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    .line 57
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;)V
    .locals 0
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p2, "paintBack"    # Lorg/mapsforge/core/graphics/Paint;
    .param p3, "paintFront"    # Lorg/mapsforge/core/graphics/Paint;

    .line 60
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 63
    iput-object p2, p0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    .line 64
    iput-object p3, p0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    .line 65
    return-void
.end method

.method private static createPaintBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 40
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 41
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->WHITE:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 42
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 44
    return-object v0
.end method

.method private static createPaintFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 32
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 33
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->RED:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 34
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 36
    return-object v0
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 25
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    .line 69
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    iget-wide v4, v1, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v4, v5, v2}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v4

    int-to-long v4, v4

    .line 70
    .local v4, "tileLeft":J
    iget-wide v6, v1, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v6, v7, v2}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v6

    int-to-long v6, v6

    .line 71
    .local v6, "tileTop":J
    iget-wide v8, v1, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v8, v9, v2}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v8

    int-to-long v8, v8

    .line 72
    .local v8, "tileRight":J
    iget-wide v10, v1, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v10, v11, v2}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v10

    int-to-long v10, v10

    .line 74
    .local v10, "tileBottom":J
    iget-object v12, v0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v12}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v12

    .line 75
    .local v12, "tileSize":I
    invoke-static {v4, v5, v12}, Lorg/mapsforge/core/util/MercatorProjection;->tileToPixel(JI)J

    move-result-wide v13

    long-to-double v13, v13

    iget-wide v1, v3, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v13, v1

    double-to-int v1, v13

    .line 76
    .local v1, "pixelX1":I
    invoke-static {v6, v7, v12}, Lorg/mapsforge/core/util/MercatorProjection;->tileToPixel(JI)J

    move-result-wide v13

    long-to-double v13, v13

    move-wide/from16 v21, v4

    .end local v4    # "tileLeft":J
    .local v21, "tileLeft":J
    iget-wide v4, v3, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v13, v4

    double-to-int v2, v13

    .line 77
    .local v2, "pixelY1":I
    invoke-static {v8, v9, v12}, Lorg/mapsforge/core/util/MercatorProjection;->tileToPixel(JI)J

    move-result-wide v4

    long-to-double v4, v4

    iget-wide v13, v3, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v4, v13

    int-to-double v13, v12

    add-double/2addr v4, v13

    double-to-int v4, v4

    .line 78
    .local v4, "pixelX2":I
    invoke-static {v10, v11, v12}, Lorg/mapsforge/core/util/MercatorProjection;->tileToPixel(JI)J

    move-result-wide v13

    long-to-double v13, v13

    move-wide/from16 v23, v6

    .end local v6    # "tileTop":J
    .local v23, "tileTop":J
    iget-wide v5, v3, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v13, v5

    int-to-double v5, v12

    add-double/2addr v13, v5

    double-to-int v5, v13

    .line 80
    .local v5, "pixelY2":I
    move v6, v1

    .local v6, "lineX":I
    :goto_0
    add-int/lit8 v7, v4, 0x1

    if-gt v6, v7, :cond_0

    .line 81
    iget-object v7, v0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v15, p3

    move/from16 v16, v6

    move/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v5

    move-object/from16 v20, v7

    invoke-interface/range {v15 .. v20}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 80
    add-int/2addr v6, v12

    goto :goto_0

    .line 84
    .end local v6    # "lineX":I
    :cond_0
    move v6, v2

    .local v6, "lineY":I
    :goto_1
    add-int/lit8 v7, v5, 0x1

    if-gt v6, v7, :cond_1

    .line 85
    iget-object v7, v0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v15, p3

    move/from16 v16, v1

    move/from16 v17, v6

    move/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v20, v7

    invoke-interface/range {v15 .. v20}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 84
    add-int/2addr v6, v12

    goto :goto_1

    .line 88
    .end local v6    # "lineY":I
    :cond_1
    move v6, v1

    .local v6, "lineX":I
    :goto_2
    add-int/lit8 v7, v4, 0x1

    if-gt v6, v7, :cond_2

    .line 89
    iget-object v7, v0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v15, p3

    move/from16 v16, v6

    move/from16 v17, v2

    move/from16 v18, v6

    move/from16 v19, v5

    move-object/from16 v20, v7

    invoke-interface/range {v15 .. v20}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 88
    add-int/2addr v6, v12

    goto :goto_2

    .line 92
    .end local v6    # "lineX":I
    :cond_2
    move v6, v2

    .local v6, "lineY":I
    :goto_3
    add-int/lit8 v7, v5, 0x1

    if-gt v6, v7, :cond_3

    .line 93
    iget-object v7, v0, Lorg/mapsforge/map/layer/debug/TileGridLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v15, p3

    move/from16 v16, v1

    move/from16 v17, v6

    move/from16 v18, v4

    move/from16 v19, v6

    move-object/from16 v20, v7

    invoke-interface/range {v15 .. v20}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 92
    add-int/2addr v6, v12

    goto :goto_3

    .line 95
    .end local v6    # "lineY":I
    :cond_3
    return-void
.end method
