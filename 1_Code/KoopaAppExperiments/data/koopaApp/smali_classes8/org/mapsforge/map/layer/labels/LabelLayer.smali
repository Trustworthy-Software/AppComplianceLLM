.class public Lorg/mapsforge/map/layer/labels/LabelLayer;
.super Lorg/mapsforge/map/layer/Layer;
.source "LabelLayer.java"


# instance fields
.field protected elementsToDraw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/core/mapelements/MapElementContainer;",
            ">;"
        }
    .end annotation
.end field

.field protected final labelStore:Lorg/mapsforge/map/layer/labels/LabelStore;

.field protected lastLabelStoreVersion:I

.field protected lowerRight:Lorg/mapsforge/core/model/Tile;

.field protected final matrix:Lorg/mapsforge/core/graphics/Matrix;

.field protected upperLeft:Lorg/mapsforge/core/model/Tile;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/labels/LabelStore;)V
    .locals 1
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "labelStore"    # Lorg/mapsforge/map/layer/labels/LabelStore;

    .line 39
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 40
    iput-object p2, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->labelStore:Lorg/mapsforge/map/layer/labels/LabelStore;

    .line 41
    invoke-interface {p1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createMatrix()Lorg/mapsforge/core/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->lastLabelStoreVersion:I

    .line 43
    return-void
.end method


# virtual methods
.method protected draw(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 4
    .param p1, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p2, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    .line 71
    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->elementsToDraw:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/core/mapelements/MapElementContainer;

    .line 72
    .local v1, "item":Lorg/mapsforge/core/mapelements/MapElementContainer;
    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    iget-object v3, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v3}, Lorg/mapsforge/map/model/DisplayModel;->getFilter()Lorg/mapsforge/core/graphics/Filter;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/mapsforge/core/mapelements/MapElementContainer;->draw(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/graphics/Matrix;Lorg/mapsforge/core/graphics/Filter;)V

    .line 73
    .end local v1    # "item":Lorg/mapsforge/core/mapelements/MapElementContainer;
    goto :goto_0

    .line 74
    :cond_0
    return-void
.end method

.method public draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 5
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    .line 47
    iget-object v0, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/mapsforge/map/util/LayerUtil;->getUpperLeft(Lorg/mapsforge/core/model/BoundingBox;BI)Lorg/mapsforge/core/model/Tile;

    move-result-object v0

    .line 48
    .local v0, "newUpperLeft":Lorg/mapsforge/core/model/Tile;
    iget-object v1, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v1

    invoke-static {p1, p2, v1}, Lorg/mapsforge/map/util/LayerUtil;->getLowerRight(Lorg/mapsforge/core/model/BoundingBox;BI)Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    .line 49
    .local v1, "newLowerRight":Lorg/mapsforge/core/model/Tile;
    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v0, v2}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->lowerRight:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v1, v2}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->lastLabelStoreVersion:I

    iget-object v3, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->labelStore:Lorg/mapsforge/map/layer/labels/LabelStore;

    .line 50
    invoke-interface {v3}, Lorg/mapsforge/map/layer/labels/LabelStore;->getVersion()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 52
    :cond_0
    iput-object v0, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    .line 53
    iput-object v1, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->lowerRight:Lorg/mapsforge/core/model/Tile;

    .line 54
    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->labelStore:Lorg/mapsforge/map/layer/labels/LabelStore;

    invoke-interface {v2}, Lorg/mapsforge/map/layer/labels/LabelStore;->getVersion()I

    move-result v2

    iput v2, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->lastLabelStoreVersion:I

    .line 55
    iget-object v2, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->labelStore:Lorg/mapsforge/map/layer/labels/LabelStore;

    iget-object v3, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->upperLeft:Lorg/mapsforge/core/model/Tile;

    iget-object v4, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->lowerRight:Lorg/mapsforge/core/model/Tile;

    invoke-interface {v2, v3, v4}, Lorg/mapsforge/map/layer/labels/LabelStore;->getVisibleItems(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Ljava/util/List;

    move-result-object v2

    .line 57
    .local v2, "visibleItems":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    invoke-static {v2}, Lorg/mapsforge/map/util/LayerUtil;->collisionFreeOrdered(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/mapsforge/map/layer/labels/LabelLayer;->elementsToDraw:Ljava/util/List;

    .line 64
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 67
    .end local v2    # "visibleItems":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/mapelements/MapElementContainer;>;"
    :cond_1
    invoke-virtual {p0, p3, p4}, Lorg/mapsforge/map/layer/labels/LabelLayer;->draw(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V

    .line 68
    return-void
.end method
