.class public abstract Lorg/mapsforge/map/layer/TileLayer;
.super Lorg/mapsforge/map/layer/Layer;
.source "TileLayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/mapsforge/map/layer/queue/Job;",
        ">",
        "Lorg/mapsforge/map/layer/Layer;"
    }
.end annotation


# instance fields
.field protected final hasJobQueue:Z

.field protected final isTransparent:Z

.field protected jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/mapsforge/map/layer/queue/JobQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

.field private final matrix:Lorg/mapsforge/core/graphics/Matrix;

.field protected final tileCache:Lorg/mapsforge/map/layer/cache/TileCache;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/core/graphics/Matrix;Z)V
    .locals 6
    .param p1, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p2, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p3, "matrix"    # Lorg/mapsforge/core/graphics/Matrix;
    .param p4, "isTransparent"    # Z

    .line 48
    .local p0, "this":Lorg/mapsforge/map/layer/TileLayer;, "Lorg/mapsforge/map/layer/TileLayer<TT;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/mapsforge/map/layer/TileLayer;-><init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/core/graphics/Matrix;ZZ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/layer/cache/TileCache;Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/core/graphics/Matrix;ZZ)V
    .locals 2
    .param p1, "tileCache"    # Lorg/mapsforge/map/layer/cache/TileCache;
    .param p2, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p3, "matrix"    # Lorg/mapsforge/core/graphics/Matrix;
    .param p4, "isTransparent"    # Z
    .param p5, "hasJobQueue"    # Z

    .line 52
    .local p0, "this":Lorg/mapsforge/map/layer/TileLayer;, "Lorg/mapsforge/map/layer/TileLayer<TT;>;"
    invoke-direct {p0}, Lorg/mapsforge/map/layer/Layer;-><init>()V

    .line 54
    if-eqz p1, :cond_1

    .line 56
    if-eqz p2, :cond_0

    .line 60
    iput-boolean p5, p0, Lorg/mapsforge/map/layer/TileLayer;->hasJobQueue:Z

    .line 61
    iput-object p1, p0, Lorg/mapsforge/map/layer/TileLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    .line 62
    iput-object p2, p0, Lorg/mapsforge/map/layer/TileLayer;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    .line 63
    iput-object p3, p0, Lorg/mapsforge/map/layer/TileLayer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    .line 64
    iput-boolean p4, p0, Lorg/mapsforge/map/layer/TileLayer;->isTransparent:Z

    .line 65
    return-void

    .line 57
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mapViewPosition must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tileCache must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawParentTileBitmap(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Tile;)V
    .locals 26
    .param p1, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p2, "point"    # Lorg/mapsforge/core/model/Point;
    .param p3, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 156
    .local p0, "this":Lorg/mapsforge/map/layer/TileLayer;, "Lorg/mapsforge/map/layer/TileLayer<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    const/4 v1, 0x4

    invoke-direct {v0, v14, v1}, Lorg/mapsforge/map/layer/TileLayer;->getCachedParentTile(Lorg/mapsforge/core/model/Tile;I)Lorg/mapsforge/core/model/Tile;

    move-result-object v15

    .line 157
    .local v15, "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    if-eqz v15, :cond_2

    .line 158
    iget-object v1, v0, Lorg/mapsforge/map/layer/TileLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-virtual {v0, v15}, Lorg/mapsforge/map/layer/TileLayer;->createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/queue/Job;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/mapsforge/map/layer/cache/TileCache;->getImmediately(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v11

    .line 159
    .local v11, "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    if-eqz v11, :cond_1

    .line 160
    iget-object v1, v0, Lorg/mapsforge/map/layer/TileLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v10

    .line 161
    .local v10, "tileSize":I
    invoke-virtual {v14, v15}, Lorg/mapsforge/core/model/Tile;->getShiftX(Lorg/mapsforge/core/model/Tile;)I

    move-result v1

    mul-int/2addr v1, v10

    int-to-long v8, v1

    .line 162
    .local v8, "translateX":J
    invoke-virtual {v14, v15}, Lorg/mapsforge/core/model/Tile;->getShiftY(Lorg/mapsforge/core/model/Tile;)I

    move-result v1

    mul-int/2addr v1, v10

    int-to-long v6, v1

    .line 163
    .local v6, "translateY":J
    iget-byte v1, v14, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget-byte v2, v15, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    sub-int/2addr v1, v2

    int-to-byte v5, v1

    .line 164
    .local v5, "zoomLevelDiff":B
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    int-to-double v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v4, v1

    .line 166
    .local v4, "scaleFactor":F
    iget-wide v1, v13, Lorg/mapsforge/core/model/Point;->x:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v3, v1

    .line 167
    .local v3, "x":I
    iget-wide v1, v13, Lorg/mapsforge/core/model/Point;->y:D

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v2, v1

    .line 169
    .local v2, "y":I
    sget-object v1, Lorg/mapsforge/core/util/Parameters;->PARENT_TILES_RENDERING:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    move/from16 v16, v5

    .end local v5    # "zoomLevelDiff":B
    .local v16, "zoomLevelDiff":B
    sget-object v5, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;->SPEED:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    if-ne v1, v5, :cond_0

    .line 170
    invoke-interface/range {p1 .. p1}, Lorg/mapsforge/core/graphics/Canvas;->isAntiAlias()Z

    move-result v5

    .line 171
    .local v5, "antiAlias":Z
    invoke-interface/range {p1 .. p1}, Lorg/mapsforge/core/graphics/Canvas;->isFilterBitmap()Z

    move-result v1

    .line 173
    .local v1, "filterBitmap":Z
    move/from16 v17, v1

    .end local v1    # "filterBitmap":Z
    .local v17, "filterBitmap":Z
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Lorg/mapsforge/core/graphics/Canvas;->setAntiAlias(Z)V

    .line 174
    invoke-interface {v12, v1}, Lorg/mapsforge/core/graphics/Canvas;->setFilterBitmap(Z)V

    .line 176
    long-to-float v1, v8

    div-float/2addr v1, v4

    float-to-int v1, v1

    move/from16 v18, v1

    long-to-float v1, v6

    div-float/2addr v1, v4

    float-to-int v1, v1

    int-to-long v13, v10

    add-long/2addr v13, v8

    long-to-float v13, v13

    div-float/2addr v13, v4

    float-to-int v13, v13

    move-wide/from16 v19, v8

    .end local v8    # "translateX":J
    .local v19, "translateX":J
    int-to-long v8, v10

    add-long/2addr v8, v6

    long-to-float v8, v8

    div-float/2addr v8, v4

    float-to-int v8, v8

    add-int v9, v3, v10

    add-int v14, v2, v10

    move/from16 v21, v1

    iget-object v1, v0, Lorg/mapsforge/map/layer/TileLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 179
    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getFilter()Lorg/mapsforge/core/graphics/Filter;

    move-result-object v22

    .line 176
    move-object/from16 v23, v15

    move/from16 v15, v17

    move/from16 v17, v18

    move/from16 v18, v21

    .end local v17    # "filterBitmap":Z
    .local v15, "filterBitmap":Z
    .local v23, "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    move-object/from16 v1, p1

    move/from16 v21, v2

    .end local v2    # "y":I
    .local v21, "y":I
    move-object v2, v11

    move/from16 v24, v3

    .end local v3    # "x":I
    .local v24, "x":I
    move/from16 v3, v17

    move/from16 v25, v4

    .end local v4    # "scaleFactor":F
    .local v25, "scaleFactor":F
    move/from16 v4, v18

    move v0, v5

    .end local v5    # "antiAlias":Z
    .local v0, "antiAlias":Z
    move v5, v13

    move-wide/from16 v17, v6

    .end local v6    # "translateY":J
    .local v17, "translateY":J
    move v6, v8

    move/from16 v7, v24

    move/from16 v8, v21

    move v13, v10

    .end local v10    # "tileSize":I
    .local v13, "tileSize":I
    move v10, v14

    move-object v14, v11

    .end local v11    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .local v14, "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    move-object/from16 v11, v22

    invoke-interface/range {v1 .. v11}, Lorg/mapsforge/core/graphics/Canvas;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;IIIIIIIILorg/mapsforge/core/graphics/Filter;)V

    .line 181
    invoke-interface {v12, v0}, Lorg/mapsforge/core/graphics/Canvas;->setAntiAlias(Z)V

    .line 182
    invoke-interface {v12, v15}, Lorg/mapsforge/core/graphics/Canvas;->setFilterBitmap(Z)V

    .line 183
    .end local v0    # "antiAlias":Z
    .end local v15    # "filterBitmap":Z
    move-object/from16 v0, p0

    move/from16 v4, v21

    move/from16 v2, v24

    move/from16 v3, v25

    goto :goto_0

    .line 184
    .end local v13    # "tileSize":I
    .end local v14    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .end local v17    # "translateY":J
    .end local v19    # "translateX":J
    .end local v21    # "y":I
    .end local v23    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    .end local v24    # "x":I
    .end local v25    # "scaleFactor":F
    .restart local v2    # "y":I
    .restart local v3    # "x":I
    .restart local v4    # "scaleFactor":F
    .restart local v6    # "translateY":J
    .restart local v8    # "translateX":J
    .restart local v10    # "tileSize":I
    .restart local v11    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .local v15, "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    :cond_0
    move/from16 v21, v2

    move/from16 v24, v3

    move/from16 v25, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move v13, v10

    move-object v14, v11

    move-object/from16 v23, v15

    .end local v2    # "y":I
    .end local v3    # "x":I
    .end local v4    # "scaleFactor":F
    .end local v6    # "translateY":J
    .end local v8    # "translateX":J
    .end local v10    # "tileSize":I
    .end local v11    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .end local v15    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    .restart local v13    # "tileSize":I
    .restart local v14    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .restart local v17    # "translateY":J
    .restart local v19    # "translateX":J
    .restart local v21    # "y":I
    .restart local v23    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    .restart local v24    # "x":I
    .restart local v25    # "scaleFactor":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/mapsforge/map/layer/TileLayer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {v1}, Lorg/mapsforge/core/graphics/Matrix;->reset()V

    .line 185
    iget-object v1, v0, Lorg/mapsforge/map/layer/TileLayer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    move/from16 v2, v24

    .end local v24    # "x":I
    .local v2, "x":I
    int-to-long v3, v2

    sub-long v3, v3, v19

    long-to-float v3, v3

    move/from16 v4, v21

    .end local v21    # "y":I
    .local v4, "y":I
    int-to-long v5, v4

    sub-long v5, v5, v17

    long-to-float v5, v5

    invoke-interface {v1, v3, v5}, Lorg/mapsforge/core/graphics/Matrix;->translate(FF)V

    .line 186
    iget-object v1, v0, Lorg/mapsforge/map/layer/TileLayer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    move/from16 v3, v25

    .end local v25    # "scaleFactor":F
    .local v3, "scaleFactor":F
    invoke-interface {v1, v3, v3}, Lorg/mapsforge/core/graphics/Matrix;->scale(FF)V

    .line 188
    iget-object v1, v0, Lorg/mapsforge/map/layer/TileLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v1

    iget-object v5, v0, Lorg/mapsforge/map/layer/TileLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v5

    invoke-interface {v12, v2, v4, v1, v5}, Lorg/mapsforge/core/graphics/Canvas;->setClip(IIII)V

    .line 189
    iget-object v1, v0, Lorg/mapsforge/map/layer/TileLayer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    iget-object v5, v0, Lorg/mapsforge/map/layer/TileLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getFilter()Lorg/mapsforge/core/graphics/Filter;

    move-result-object v5

    invoke-interface {v12, v14, v1, v5}, Lorg/mapsforge/core/graphics/Canvas;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/graphics/Matrix;Lorg/mapsforge/core/graphics/Filter;)V

    .line 190
    invoke-interface/range {p1 .. p1}, Lorg/mapsforge/core/graphics/Canvas;->resetClip()V

    .line 193
    :goto_0
    invoke-interface {v14}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V

    goto :goto_1

    .line 159
    .end local v2    # "x":I
    .end local v3    # "scaleFactor":F
    .end local v4    # "y":I
    .end local v13    # "tileSize":I
    .end local v14    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .end local v16    # "zoomLevelDiff":B
    .end local v17    # "translateY":J
    .end local v19    # "translateX":J
    .end local v23    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    .restart local v11    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .restart local v15    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    :cond_1
    move-object v14, v11

    move-object/from16 v23, v15

    .end local v11    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .end local v15    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    .restart local v14    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .restart local v23    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    goto :goto_1

    .line 157
    .end local v14    # "bitmap":Lorg/mapsforge/core/graphics/Bitmap;
    .end local v23    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    .restart local v15    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    :cond_2
    move-object/from16 v23, v15

    .line 196
    .end local v15    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    .restart local v23    # "cachedParentTile":Lorg/mapsforge/core/model/Tile;
    :goto_1
    return-void
.end method

.method private getCachedParentTile(Lorg/mapsforge/core/model/Tile;I)Lorg/mapsforge/core/model/Tile;
    .locals 3
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "level"    # I

    .line 202
    .local p0, "this":Lorg/mapsforge/map/layer/TileLayer;, "Lorg/mapsforge/map/layer/TileLayer<TT;>;"
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 203
    return-object v0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lorg/mapsforge/core/model/Tile;->getParent()Lorg/mapsforge/core/model/Tile;

    move-result-object v1

    .line 207
    .local v1, "parentTile":Lorg/mapsforge/core/model/Tile;
    if-nez v1, :cond_1

    .line 208
    return-object v0

    .line 209
    :cond_1
    iget-object v0, p0, Lorg/mapsforge/map/layer/TileLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-virtual {p0, v1}, Lorg/mapsforge/map/layer/TileLayer;->createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/queue/Job;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    return-object v1

    .line 213
    :cond_2
    add-int/lit8 v0, p2, -0x1

    invoke-direct {p0, v1, v0}, Lorg/mapsforge/map/layer/TileLayer;->getCachedParentTile(Lorg/mapsforge/core/model/Tile;I)Lorg/mapsforge/core/model/Tile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/queue/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mapsforge/core/model/Tile;",
            ")TT;"
        }
    .end annotation
.end method

.method public draw(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;)V
    .locals 11
    .param p1, "boundingBox"    # Lorg/mapsforge/core/model/BoundingBox;
    .param p2, "zoomLevel"    # B
    .param p3, "canvas"    # Lorg/mapsforge/core/graphics/Canvas;
    .param p4, "topLeftPoint"    # Lorg/mapsforge/core/model/Point;

    .line 69
    .local p0, "this":Lorg/mapsforge/map/layer/TileLayer;, "Lorg/mapsforge/map/layer/TileLayer<TT;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/TileLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 70
    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v0

    .line 69
    invoke-static {p1, p2, p4, v0}, Lorg/mapsforge/map/util/LayerUtil;->getTilePositions(Lorg/mapsforge/core/model/BoundingBox;BLorg/mapsforge/core/model/Point;I)Ljava/util/List;

    move-result-object v0

    .line 80
    .local v0, "tilePositions":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/layer/TilePosition;>;"
    invoke-interface {p3}, Lorg/mapsforge/core/graphics/Canvas;->resetClip()V

    .line 82
    iget-boolean v1, p0, Lorg/mapsforge/map/layer/TileLayer;->isTransparent:Z

    if-nez v1, :cond_0

    .line 83
    iget-object v1, p0, Lorg/mapsforge/map/layer/TileLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v1

    invoke-interface {p3, v1}, Lorg/mapsforge/core/graphics/Canvas;->fillColor(I)V

    .line 86
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 87
    .local v1, "jobs":Ljava/util/Set;, "Ljava/util/Set<Lorg/mapsforge/map/layer/queue/Job;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/map/layer/TilePosition;

    .line 88
    .local v3, "tilePosition":Lorg/mapsforge/map/layer/TilePosition;
    iget-object v4, v3, Lorg/mapsforge/map/layer/TilePosition;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {p0, v4}, Lorg/mapsforge/map/layer/TileLayer;->createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/queue/Job;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v3    # "tilePosition":Lorg/mapsforge/map/layer/TilePosition;
    goto :goto_0

    .line 90
    :cond_1
    iget-object v2, p0, Lorg/mapsforge/map/layer/TileLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v2, v1}, Lorg/mapsforge/map/layer/cache/TileCache;->setWorkingSet(Ljava/util/Set;)V

    .line 92
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    .line 93
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mapsforge/map/layer/TilePosition;

    .line 94
    .restart local v3    # "tilePosition":Lorg/mapsforge/map/layer/TilePosition;
    iget-object v4, v3, Lorg/mapsforge/map/layer/TilePosition;->point:Lorg/mapsforge/core/model/Point;

    .line 95
    .local v4, "point":Lorg/mapsforge/core/model/Point;
    iget-object v5, v3, Lorg/mapsforge/map/layer/TilePosition;->tile:Lorg/mapsforge/core/model/Tile;

    .line 96
    .local v5, "tile":Lorg/mapsforge/core/model/Tile;
    invoke-virtual {p0, v5}, Lorg/mapsforge/map/layer/TileLayer;->createJob(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/layer/queue/Job;

    move-result-object v6

    .line 97
    .local v6, "job":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    iget-object v7, p0, Lorg/mapsforge/map/layer/TileLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v7, v6}, Lorg/mapsforge/map/layer/cache/TileCache;->getImmediately(Lorg/mapsforge/map/layer/queue/Job;)Lorg/mapsforge/core/graphics/TileBitmap;

    move-result-object v7

    .line 99
    .local v7, "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    if-nez v7, :cond_3

    .line 100
    iget-boolean v8, p0, Lorg/mapsforge/map/layer/TileLayer;->hasJobQueue:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lorg/mapsforge/map/layer/TileLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v8, v6}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 101
    iget-object v8, p0, Lorg/mapsforge/map/layer/TileLayer;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    invoke-virtual {v8, v6}, Lorg/mapsforge/map/layer/queue/JobQueue;->add(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 103
    :cond_2
    sget-object v8, Lorg/mapsforge/core/util/Parameters;->PARENT_TILES_RENDERING:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    sget-object v9, Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;->OFF:Lorg/mapsforge/core/util/Parameters$ParentTilesRendering;

    if-eq v8, v9, :cond_5

    .line 104
    invoke-direct {p0, p3, v4, v5}, Lorg/mapsforge/map/layer/TileLayer;->drawParentTileBitmap(Lorg/mapsforge/core/graphics/Canvas;Lorg/mapsforge/core/model/Point;Lorg/mapsforge/core/model/Tile;)V

    goto :goto_2

    .line 107
    :cond_3
    invoke-virtual {p0, v5, v7}, Lorg/mapsforge/map/layer/TileLayer;->isTileStale(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/graphics/TileBitmap;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lorg/mapsforge/map/layer/TileLayer;->hasJobQueue:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lorg/mapsforge/map/layer/TileLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    invoke-interface {v8, v6}, Lorg/mapsforge/map/layer/cache/TileCache;->containsKey(Lorg/mapsforge/map/layer/queue/Job;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 108
    iget-object v8, p0, Lorg/mapsforge/map/layer/TileLayer;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    invoke-virtual {v8, v6}, Lorg/mapsforge/map/layer/queue/JobQueue;->add(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 110
    :cond_4
    invoke-virtual {p0, v6}, Lorg/mapsforge/map/layer/TileLayer;->retrieveLabelsOnly(Lorg/mapsforge/map/layer/queue/Job;)V

    .line 111
    iget-wide v8, v4, Lorg/mapsforge/core/model/Point;->x:D

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    iget-wide v9, v4, Lorg/mapsforge/core/model/Point;->y:D

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v9, v9

    iget-object v10, p0, Lorg/mapsforge/map/layer/TileLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v10}, Lorg/mapsforge/map/model/DisplayModel;->getFilter()Lorg/mapsforge/core/graphics/Filter;

    move-result-object v10

    invoke-interface {p3, v7, v8, v9, v10}, Lorg/mapsforge/core/graphics/Canvas;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;IILorg/mapsforge/core/graphics/Filter;)V

    .line 112
    invoke-interface {v7}, Lorg/mapsforge/core/graphics/TileBitmap;->decrementRefCount()V

    .line 92
    .end local v3    # "tilePosition":Lorg/mapsforge/map/layer/TilePosition;
    .end local v4    # "point":Lorg/mapsforge/core/model/Point;
    .end local v5    # "tile":Lorg/mapsforge/core/model/Tile;
    .end local v6    # "job":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    .end local v7    # "bitmap":Lorg/mapsforge/core/graphics/TileBitmap;
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 115
    .end local v2    # "i":I
    :cond_6
    iget-boolean v2, p0, Lorg/mapsforge/map/layer/TileLayer;->hasJobQueue:Z

    if-eqz v2, :cond_7

    .line 116
    iget-object v2, p0, Lorg/mapsforge/map/layer/TileLayer;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    invoke-virtual {v2}, Lorg/mapsforge/map/layer/queue/JobQueue;->notifyWorkers()V

    .line 118
    :cond_7
    return-void
.end method

.method public getTileCache()Lorg/mapsforge/map/layer/cache/TileCache;
    .locals 1

    .line 217
    .local p0, "this":Lorg/mapsforge/map/layer/TileLayer;, "Lorg/mapsforge/map/layer/TileLayer<TT;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/TileLayer;->tileCache:Lorg/mapsforge/map/layer/cache/TileCache;

    return-object v0
.end method

.method protected abstract isTileStale(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/graphics/TileBitmap;)Z
.end method

.method protected retrieveLabelsOnly(Lorg/mapsforge/map/layer/queue/Job;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lorg/mapsforge/map/layer/TileLayer;, "Lorg/mapsforge/map/layer/TileLayer<TT;>;"
    .local p1, "job":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    return-void
.end method

.method public declared-synchronized setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V
    .locals 3
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;

    .local p0, "this":Lorg/mapsforge/map/layer/TileLayer;, "Lorg/mapsforge/map/layer/TileLayer<TT;>;"
    monitor-enter p0

    .line 122
    :try_start_0
    invoke-super {p0, p1}, Lorg/mapsforge/map/layer/Layer;->setDisplayModel(Lorg/mapsforge/map/model/DisplayModel;)V

    .line 123
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lorg/mapsforge/map/layer/TileLayer;->hasJobQueue:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Lorg/mapsforge/map/layer/queue/JobQueue;

    iget-object v1, p0, Lorg/mapsforge/map/layer/TileLayer;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    iget-object v2, p0, Lorg/mapsforge/map/layer/TileLayer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/layer/queue/JobQueue;-><init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/DisplayModel;)V

    iput-object v0, p0, Lorg/mapsforge/map/layer/TileLayer;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;

    goto :goto_0

    .line 126
    .end local p0    # "this":Lorg/mapsforge/map/layer/TileLayer;, "Lorg/mapsforge/map/layer/TileLayer<TT;>;"
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mapsforge/map/layer/TileLayer;->jobQueue:Lorg/mapsforge/map/layer/queue/JobQueue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    .end local p1    # "displayModel":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
