.class public Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;
.super Lorg/mapsforge/map/layer/Layer;
.source "TileCoordinatesLayer.java"


# instance fields
.field private final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field private drawSimple:Z

.field private final paintBack:Lorg/mapsforge/core/graphics/Paint;

.field private final paintFront:Lorg/mapsforge/core/graphics/Paint;

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 1
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 61
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 63
    iput-object p2, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 65
    invoke-static {p1, p2}, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->createPaintBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    .line 66
    invoke-static {p1, p2}, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->createPaintFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    .line 67
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/Paint;Lorg/mapsforge/core/graphics/Paint;)V
    .locals 1
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p2, "paintBack"    # Lorg/mapsforge/core/graphics/Paint;
    .param p3, "paintFront"    # Lorg/mapsforge/core/graphics/Paint;

    .line 70
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    .line 72
    iput-object p1, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 73
    iput-object p2, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    .line 74
    iput-object p3, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    .line 75
    return-void
.end method

.method private static createPaintBack(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 46
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 47
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->WHITE:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 48
    sget-object v1, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    sget-object v2, Lorg/mapsforge/core/graphics/FontStyle;->BOLD:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 49
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 50
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setStrokeWidth(F)V

    .line 51
    sget-object v1, Lorg/mapsforge/core/graphics/Style;->STROKE:Lorg/mapsforge/core/graphics/Style;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setStyle(Lorg/mapsforge/core/graphics/Style;)V

    .line 52
    return-object v0
.end method

.method private static createPaintFront(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;)Lorg/mapsforge/core/graphics/Paint;
    .locals 3
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .line 38
    invoke-interface {p0}, Lorg/mapsforge/core/graphics/GraphicFactory;->createPaint()Lorg/mapsforge/core/graphics/Paint;

    move-result-object v0

    .line 39
    .local v0, "paint":Lorg/mapsforge/core/graphics/Paint;
    sget-object v1, Lorg/mapsforge/core/graphics/Color;->RED:Lorg/mapsforge/core/graphics/Color;

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Paint;->setColor(Lorg/mapsforge/core/graphics/Color;)V

    .line 40
    sget-object v1, Lorg/mapsforge/core/graphics/FontFamily;->DEFAULT:Lorg/mapsforge/core/graphics/FontFamily;

    sget-object v2, Lorg/mapsforge/core/graphics/FontStyle;->BOLD:Lorg/mapsforge/core/graphics/FontStyle;

    invoke-interface {v0, v1, v2}, Lorg/mapsforge/core/graphics/Paint;->setTypeface(Lorg/mapsforge/core/graphics/FontFamily;Lorg/mapsforge/core/graphics/FontStyle;)V

    .line 41
    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-interface {v0, v2}, Lorg/mapsforge/core/graphics/Paint;->setTextSize(F)V

    .line 42
    return-object v0
.end method

.method private drawTileCoordinates(Lorg/mapsforge/map/layer/TilePosition;Lorg/mapsforge/core/graphics/Canvas;)V
    .locals 9
    .param p1, "tilePosition"    # Lorg/mapsforge/map/layer/TilePosition;
    .param p2, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;

    .line 87
    iget-object v0, p1, Lorg/mapsforge/map/layer/TilePosition;->tile:Lorg/mapsforge/core/model/Tile;

    .line 88
    .local v0, "tile":Lorg/mapsforge/core/model/Tile;
    iget-boolean v1, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->drawSimple:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 90
    iget-object v1, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    iget-byte v2, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v0, Lorg/mapsforge/core/model/Tile;->tileX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lorg/mapsforge/core/model/Tile;->tileY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p1, Lorg/mapsforge/map/layer/TilePosition;->point:Lorg/mapsforge/core/model/Point;

    iget-wide v2, v2, Lorg/mapsforge/core/model/Point;->x:D

    iget v4, v0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v5, v1}, Lorg/mapsforge/core/graphics/Paint;->getTextWidth(Ljava/lang/String;)I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    .line 93
    .local v2, "x":I
    iget-object v3, p1, Lorg/mapsforge/map/layer/TilePosition;->point:Lorg/mapsforge/core/model/Point;

    iget-wide v3, v3, Lorg/mapsforge/core/model/Point;->y:D

    iget v5, v0, Lorg/mapsforge/core/model/Tile;->tileSize:I

    iget-object v6, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {v6, v1}, Lorg/mapsforge/core/graphics/Paint;->getTextHeight(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-double v5, v5

    add-double/2addr v3, v5

    double-to-int v3, v3

    .line 94
    .local v3, "y":I
    iget-object v4, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p2, v1, v2, v3, v4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 95
    iget-object v4, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p2, v1, v2, v3, v4}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 96
    .end local v1    # "text":Ljava/lang/String;
    .end local v2    # "x":I
    .end local v3    # "y":I
    goto/16 :goto_0

    .line 97
    :cond_0
    iget-object v1, p1, Lorg/mapsforge/map/layer/TilePosition;->point:Lorg/mapsforge/core/model/Point;

    iget-wide v3, v1, Lorg/mapsforge/core/model/Point;->x:D

    iget-object v1, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v1

    const/high16 v5, 0x41000000    # 8.0f

    mul-float/2addr v1, v5

    float-to-double v5, v1

    add-double/2addr v3, v5

    double-to-int v1, v3

    .line 98
    .local v1, "x":I
    iget-object v3, p1, Lorg/mapsforge/map/layer/TilePosition;->point:Lorg/mapsforge/core/model/Point;

    iget-wide v3, v3, Lorg/mapsforge/core/model/Point;->y:D

    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v5

    const/high16 v6, 0x41c00000    # 24.0f

    mul-float/2addr v5, v6

    float-to-double v7, v5

    add-double/2addr v3, v7

    double-to-int v3, v3

    .line 100
    .restart local v3    # "y":I
    iget-object v4, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 101
    iget-object v4, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v5, "X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v4, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    iget v5, v0, Lorg/mapsforge/core/model/Tile;->tileX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    iget-object v4, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "text":Ljava/lang/String;
    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p2, v4, v1, v3, v5}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 105
    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p2, v4, v1, v3, v5}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 107
    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 108
    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v7, "Y: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    iget v7, v0, Lorg/mapsforge/core/model/Tile;->tileY:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 111
    int-to-float v5, v3

    iget-object v7, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v7}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v7

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v7, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p2, v4, v1, v5, v7}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 112
    int-to-float v5, v3

    iget-object v7, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v7}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v7

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    iget-object v6, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p2, v4, v1, v5, v6}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 114
    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 115
    iget-object v2, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    const-string v5, "Z: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v2, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    iget-byte v5, v0, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .end local v4    # "text":Ljava/lang/String;
    .local v2, "text":Ljava/lang/String;
    int-to-float v4, v3

    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v5

    const/high16 v6, 0x42400000    # 48.0f

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintBack:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p2, v2, v1, v4, v5}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 119
    int-to-float v4, v3

    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->paintFront:Lorg/mapsforge/core/graphics/Paint;

    invoke-interface {p2, v2, v1, v4, v5}, Lorg/mapsforge/core/graphics/Canvas;->drawText(Ljava/lang/String;IILorg/mapsforge/core/graphics/Paint;)V

    .line 121
    .end local v1    # "x":I
    .end local v2    # "text":Ljava/lang/String;
    .end local v3    # "y":I
    :goto_0
    return-void
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 3
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    .line 79
    iget-object v0, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 80
    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v0

    .line 79
    invoke-static {p1, p2, p4, v0}, Lorg/mapsforge/map/util/LayerUtil;->getTilePositions(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/model/Point;I)Ljava/util/List;

    move-result-object v0

    .line 81
    .local v0, "tilePositions":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/layer/TilePosition;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mapsforge/map/layer/TilePosition;

    invoke-direct {p0, v2, p3}, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->drawTileCoordinates(Lorg/mapsforge/map/layer/TilePosition;Lorg/mapsforge/core/graphics/Canvas;)V

    .line 81
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public isDrawSimple()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->drawSimple:Z

    return v0
.end method

.method public setDrawSimple(Z)V
    .locals 0
    .param p1, "drawSimple"    # Z

    .line 128
    iput-boolean p1, p0, Lorg/mapsforge/map/layer/debug/TileCoordinatesLayer;->drawSimple:Z

    .line 129
    return-void
.end method
