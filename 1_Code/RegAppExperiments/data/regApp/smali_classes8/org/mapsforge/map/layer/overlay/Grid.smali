.class public Lorg/mapsforge/map/layer/overlay/Grid;
.super Lorg/mapsforge/map/layer/Layer;
.source "Grid.java"


# instance fields
.field private final lineBack:Lorg/mapsforge/core/graphics/Paint;

.field private final lineFront:Lorg/mapsforge/core/graphics/Paint;

.field private final spacingConfig:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final textBack:Lorg/mapsforge/core/graphics/Paint;

.field private final textFront:Lorg/mapsforge/core/graphics/Paint;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/util/Map;)V
    .locals 1
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/graphics/GraphicFactory;",
            "Lorg/mapsforge/map/model/DisplayModel;",
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p3, "spacingConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Ljava/lang/Double;>;"
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 109
    iput-object p2, p0, Lorg/mapsforge/map/layer/overlay/Grid;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 110
    iput-object p3, p0, Lorg/mapsforge/map/layer/overlay/Grid;->spacingConfig:Ljava/util/Map;

    .line 112
    invoke-static {p1, p2}, Lorg/mapsforge/map/layer/overlay/Grid;->createLineBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/overlay/Grid;->lineBack:Lorg/mapsforge/core/graphics/Paint;

    .line 113
    invoke-static {p1, p2}, Lorg/mapsforge/map/layer/overlay/Grid;->createLineFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/overlay/Grid;->lineFront:Lorg/mapsforge/core/graphics/Paint;

    .line 114
    invoke-static {p1, p2}, Lorg/mapsforge/map/layer/overlay/Grid;->createTextBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/overlay/Grid;->textBack:Lorg/mapsforge/core/graphics/Paint;

    .line 115
    invoke-static {p1, p2}, Lorg/mapsforge/map/layer/overlay/Grid;->createTextFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/overlay/Grid;->textFront:Lorg/mapsforge/core/graphics/Paint;

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/model/DisplayModel;Ljava/util/Map;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;)V
    .locals 0
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "lineBack"    # Lorg/mapsforge/core/graphics/Paint;
    .param p4, "lineFront"    # Lorg/mapsforge/core/graphics/Paint;
    .param p5, "textBack"    # Lorg/mapsforge/core/graphics/Paint;
    .param p6, "textFront"    # Lorg/mapsforge/core/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/map/model/DisplayModel;",
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Double;",
            ">;",
            "Lorg/mapsforge/core/graphics/Paint;",
            "Lorg/mapsforge/core/graphics/Paint;",
            "Lorg/mapsforge/core/graphics/Paint;",
            "Lorg/mapsforge/core/graphics/Paint;",
            ")V"
        }
    .end annotation

    .line 130
    .local p2, "spacingConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Ljava/lang/Double;>;"
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 132
    iput-object p1, p0, Lorg/mapsforge/map/layer/overlay/Grid;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 133
    iput-object p2, p0, Lorg/mapsforge/map/layer/overlay/Grid;->spacingConfig:Ljava/util/Map;

    .line 134
    iput-object p3, p0, Lorg/mapsforge/map/layer/overlay/Grid;->lineBack:Lorg/mapsforge/core/graphics/Paint;

    .line 135
    iput-object p4, p0, Lorg/mapsforge/map/layer/overlay/Grid;->lineFront:Lorg/mapsforge/core/graphics/Paint;

    .line 136
    iput-object p5, p0, Lorg/mapsforge/map/layer/overlay/Grid;->textBack:Lorg/mapsforge/core/graphics/Paint;

    .line 137
    iput-object p6, p0, Lorg/mapsforge/map/layer/overlay/Grid;->textFront:Lorg/mapsforge/core/graphics/Paint;

    .line 138
    return-void
.end method

.method private static convertCoordinate(D)Ljava/lang/String;
    .locals 8
    .param p0, "coordinate"    # D

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v1, 0x0

    cmpg-double v1, p0, v1

    if-gez v1, :cond_0

    .line 42
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    neg-double p0, p0

    .line 46
    :cond_0
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "df":Ljava/text/DecimalFormat;
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 48
    .local v2, "degrees":I
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/16 v3, 0xb0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    int-to-double v3, v2

    sub-double/2addr p0, v3

    .line 51
    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, v3

    .line 52
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 53
    .local v5, "minutes":I
    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/16 v6, 0x2032

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    int-to-double v6, v5

    sub-double/2addr p0, v6

    .line 56
    mul-double/2addr p0, v3

    .line 57
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const/16 v3, 0x2033

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static createLineBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 71
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 72
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->WHITE:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 73
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 75
    return-object v0
.end method

.method private static createLineFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 63
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 64
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->BLUE:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 65
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 66
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 67
    return-object v0
.end method

.method private static createTextBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 87
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 88
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->WHITE:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 89
    sget-object v1, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    sget-object v2, Lorg/mapsforge/core/graphics/FontStyle;->BOLD:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 90
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 91
    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 92
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 93
    return-object v0
.end method

.method private static createTextFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 79
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 80
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->BLUE:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 81
    sget-object v1, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    sget-object v2, Lorg/mapsforge/core/graphics/FontStyle;->BOLD:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 82
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 83
    return-object v0
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 29
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    iget-object v2, v0, Lorg/mapsforge/map/layer/overlay/Grid;->spacingConfig:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 143
    iget-object v2, v0, Lorg/mapsforge/map/layer/overlay/Grid;->spacingConfig:Ljava/util/Map;

    invoke-static/range {p2 .. p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 145
    .local v10, "spacing":D
    iget-wide v2, v1, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double v12, v10, v2

    .line 146
    .local v12, "minLongitude":D
    iget-wide v2, v1, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    mul-double v14, v10, v2

    .line 147
    .local v14, "maxLongitude":D
    iget-wide v2, v1, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    mul-double v6, v10, v2

    .line 148
    .local v6, "minLatitude":D
    iget-wide v2, v1, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    mul-double v4, v10, v2

    .line 150
    .local v4, "maxLatitude":D
    iget-object v2, v0, Lorg/mapsforge/map/layer/overlay/Grid;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v2

    move/from16 v3, p2

    move-wide/from16 v16, v10

    .end local v10    # "spacing":D
    .local v16, "spacing":D
    invoke-static {v3, v2}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v10

    .line 152
    .local v10, "mapSize":J
    invoke-static {v6, v7, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v18

    iget-wide v1, v9, Lorg/mapsforge/core/model/Point;->y:D

    sub-double v1, v18, v1

    double-to-int v1, v1

    .line 153
    .local v1, "bottom":I
    invoke-static {v4, v5, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v18

    iget-wide v2, v9, Lorg/mapsforge/core/model/Point;->y:D

    sub-double v2, v18, v2

    double-to-int v3, v2

    .line 154
    .local v3, "top":I
    invoke-static {v12, v13, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v18

    move/from16 v20, v3

    .end local v3    # "top":I
    .local v20, "top":I
    iget-wide v2, v9, Lorg/mapsforge/core/model/Point;->x:D

    sub-double v2, v18, v2

    double-to-int v3, v2

    .line 155
    .local v3, "left":I
    invoke-static {v14, v15, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v18

    move/from16 v21, v3

    .end local v3    # "left":I
    .local v21, "left":I
    iget-wide v2, v9, Lorg/mapsforge/core/model/Point;->x:D

    sub-double v2, v18, v2

    double-to-int v3, v2

    .line 157
    .local v3, "right":I
    move-wide/from16 v18, v6

    move-wide/from16 v22, v14

    move-wide/from16 v14, v18

    .local v14, "latitude":D
    .local v22, "maxLongitude":D
    :goto_0
    cmpg-double v2, v14, v4

    if-gtz v2, :cond_0

    .line 158
    invoke-static {v14, v15, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v18

    move/from16 v24, v3

    .end local v3    # "right":I
    .local v24, "right":I
    iget-wide v2, v9, Lorg/mapsforge/core/model/Point;->y:D

    sub-double v2, v18, v2

    double-to-int v3, v2

    .line 159
    .local v3, "pixelY":I
    iget-object v2, v0, Lorg/mapsforge/map/layer/overlay/Grid;->lineBack:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v18, v2

    move-object/from16 v2, p3

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v24

    move/from16 v24, v3

    .end local v3    # "pixelY":I
    .local v19, "top":I
    .local v20, "left":I
    .local v21, "right":I
    .local v24, "pixelY":I
    move/from16 v3, v20

    move-wide/from16 v25, v4

    .end local v4    # "maxLatitude":D
    .local v25, "maxLatitude":D
    move/from16 v4, v24

    move/from16 v5, v21

    move-wide/from16 v27, v6

    .end local v6    # "minLatitude":D
    .local v27, "minLatitude":D
    move/from16 v6, v24

    move-object/from16 v7, v18

    invoke-interface/range {v2 .. v7}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 157
    .end local v24    # "pixelY":I
    add-double v14, v14, v16

    move/from16 v3, v21

    move-wide/from16 v4, v25

    move-wide/from16 v6, v27

    move/from16 v21, v20

    move/from16 v20, v19

    goto :goto_0

    .end local v19    # "top":I
    .end local v25    # "maxLatitude":D
    .end local v27    # "minLatitude":D
    .local v3, "right":I
    .restart local v4    # "maxLatitude":D
    .restart local v6    # "minLatitude":D
    .local v20, "top":I
    .local v21, "left":I
    :cond_0
    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v3

    .line 162
    .end local v3    # "right":I
    .end local v4    # "maxLatitude":D
    .end local v6    # "minLatitude":D
    .end local v14    # "latitude":D
    .restart local v19    # "top":I
    .local v20, "left":I
    .local v21, "right":I
    .restart local v25    # "maxLatitude":D
    .restart local v27    # "minLatitude":D
    move-wide v2, v12

    move-wide v14, v2

    .local v14, "longitude":D
    :goto_1
    cmpg-double v2, v14, v22

    if-gtz v2, :cond_1

    .line 163
    invoke-static {v14, v15, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v2

    iget-wide v4, v9, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v2, v4

    double-to-int v7, v2

    .line 164
    .local v7, "pixelX":I
    iget-object v6, v0, Lorg/mapsforge/map/layer/overlay/Grid;->lineBack:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v2, p3

    move v3, v7

    move v4, v1

    move v5, v7

    move-object/from16 v18, v6

    move/from16 v6, v19

    move/from16 v24, v7

    .end local v7    # "pixelX":I
    .local v24, "pixelX":I
    move-object/from16 v7, v18

    invoke-interface/range {v2 .. v7}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 162
    .end local v24    # "pixelX":I
    add-double v14, v14, v16

    goto :goto_1

    .line 167
    .end local v14    # "longitude":D
    :cond_1
    move-wide/from16 v2, v27

    move-wide v14, v2

    .local v14, "latitude":D
    :goto_2
    cmpg-double v2, v14, v25

    if-gtz v2, :cond_2

    .line 168
    invoke-static {v14, v15, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v2

    iget-wide v4, v9, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v2, v4

    double-to-int v7, v2

    .line 169
    .local v7, "pixelY":I
    iget-object v6, v0, Lorg/mapsforge/map/layer/overlay/Grid;->lineFront:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v2, p3

    move/from16 v3, v20

    move v4, v7

    move/from16 v5, v21

    move-object/from16 v18, v6

    move v6, v7

    move/from16 v24, v7

    .end local v7    # "pixelY":I
    .local v24, "pixelY":I
    move-object/from16 v7, v18

    invoke-interface/range {v2 .. v7}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 167
    .end local v24    # "pixelY":I
    add-double v14, v14, v16

    goto :goto_2

    .line 172
    .end local v14    # "latitude":D
    :cond_2
    move-wide v2, v12

    move-wide v14, v2

    .local v14, "longitude":D
    :goto_3
    cmpg-double v2, v14, v22

    if-gtz v2, :cond_3

    .line 173
    invoke-static {v14, v15, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v2

    iget-wide v4, v9, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v2, v4

    double-to-int v7, v2

    .line 174
    .local v7, "pixelX":I
    iget-object v6, v0, Lorg/mapsforge/map/layer/overlay/Grid;->lineFront:Lorg/mapsforge/core/graphics/Paint;

    move-object/from16 v2, p3

    move v3, v7

    move v4, v1

    move v5, v7

    move-object/from16 v18, v6

    move/from16 v6, v19

    move/from16 v24, v7

    .end local v7    # "pixelX":I
    .local v24, "pixelX":I
    move-object/from16 v7, v18

    invoke-interface/range {v2 .. v7}, Lorg/mapsforge/core/graphics/Canvas;->drawLine(IIIILorg/mapsforge/core/graphics/Paint;)V

    .line 172
    .end local v24    # "pixelX":I
    add-double v14, v14, v16

    goto :goto_3

    .line 177
    .end local v14    # "longitude":D
    :cond_3
    move-wide/from16 v2, v27

    .local v2, "latitude":D
    :goto_4
    cmpg-double v4, v2, v25

    if-gtz v4, :cond_4

    .line 178
    invoke-static {v2, v3}, Lorg/mapsforge/map/layer/overlay/Grid;->convertCoordinate(D)Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "text":Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Lorg/mapsforge/core/graphics/Canvas;->getWidth()I

    move-result v5

    iget-object v6, v0, Lorg/mapsforge/map/layer/overlay/Grid;->textFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v6, v4}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 180
    .local v5, "pixelX":I
    invoke-static {v2, v3, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToPixelY(DJ)D

    move-result-wide v6

    iget-wide v14, v9, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v6, v14

    double-to-int v6, v6

    iget-object v7, v0, Lorg/mapsforge/map/layer/overlay/Grid;->textFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v7, v4}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    .line 181
    .local v6, "pixelY":I
    iget-object v7, v0, Lorg/mapsforge/map/layer/overlay/Grid;->textBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v8, v4, v5, v6, v7}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 182
    iget-object v7, v0, Lorg/mapsforge/map/layer/overlay/Grid;->textFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v8, v4, v5, v6, v7}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 177
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "pixelX":I
    .end local v6    # "pixelY":I
    add-double v2, v2, v16

    goto :goto_4

    .line 185
    .end local v2    # "latitude":D
    :cond_4
    move-wide v2, v12

    .local v2, "longitude":D
    :goto_5
    cmpg-double v4, v2, v22

    if-gtz v4, :cond_5

    .line 186
    invoke-static {v2, v3}, Lorg/mapsforge/map/layer/overlay/Grid;->convertCoordinate(D)Ljava/lang/String;

    move-result-object v4

    .line 187
    .restart local v4    # "text":Ljava/lang/String;
    invoke-static {v2, v3, v10, v11}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToPixelX(DJ)D

    move-result-wide v5

    iget-wide v14, v9, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v5, v14

    double-to-int v5, v5

    iget-object v6, v0, Lorg/mapsforge/map/layer/overlay/Grid;->textFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v6, v4}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    .line 188
    .restart local v5    # "pixelX":I
    invoke-interface/range {p3 .. p3}, Lorg/mapsforge/core/graphics/Canvas;->getHeight()I

    move-result v6

    iget-object v7, v0, Lorg/mapsforge/map/layer/overlay/Grid;->textFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v7, v4}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    .line 189
    .restart local v6    # "pixelY":I
    iget-object v7, v0, Lorg/mapsforge/map/layer/overlay/Grid;->textBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v8, v4, v5, v6, v7}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 190
    iget-object v7, v0, Lorg/mapsforge/map/layer/overlay/Grid;->textFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v8, v4, v5, v6, v7}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 185
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "pixelX":I
    .end local v6    # "pixelY":I
    add-double v2, v2, v16

    goto :goto_5

    .line 193
    .end local v1    # "bottom":I
    .end local v2    # "longitude":D
    .end local v10    # "mapSize":J
    .end local v12    # "minLongitude":D
    .end local v16    # "spacing":D
    .end local v19    # "top":I
    .end local v20    # "left":I
    .end local v21    # "right":I
    .end local v22    # "maxLongitude":D
    .end local v25    # "maxLatitude":D
    .end local v27    # "minLatitude":D
    :cond_5
    return-void
.end method
