.class public final Lorg/mapsforge/map/controller/FrameBufferController;
.super Ljava/lang/Object;
.source "FrameBufferController.java"

# interfaces
.implements Lorg/mapsforge/map/model/common/Observer;


# static fields
.field private static maxAspectRatio:F


# instance fields
.field private final frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

.field private lastMapViewDimension:Lorg/mapsforge/core/model/Dimension;

.field private lastOverdrawFactor:D

.field private final model:Lorg/mapsforge/map/model/Model;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lorg/mapsforge/map/controller/FrameBufferController;->maxAspectRatio:F

    return-void
.end method

.method private constructor <init>(Lorg/mapsforge/map/view/FrameBuffer;Lorg/mapsforge/map/model/Model;)V
    .locals 0
    .param p1, "frameBuffer"    # Lorg/mapsforge/map/view/FrameBuffer;
    .param p2, "model"    # Lorg/mapsforge/map/model/Model;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/mapsforge/map/controller/FrameBufferController;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    .line 64
    iput-object p2, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    .line 65
    return-void
.end method

.method private adjustFrameBufferMatrix(Lorg/mapsforge/core/model/MapPosition;Lorg/mapsforge/core/model/Dimension;DLorg/mapsforge/core/model/LatLong;)V
    .locals 26
    .param p1, "mapPositionFrameBuffer"    # Lorg/mapsforge/core/model/MapPosition;
    .param p2, "mapViewDimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p3, "scaleFactor"    # D
    .param p5, "pivot"    # Lorg/mapsforge/core/model/LatLong;

    .line 112
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    iget-object v3, v0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v3, v3, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v3}, Lorg/mapsforge/map/model/IMapViewPosition;->getMapPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v3

    .line 114
    .local v3, "mapViewPosition":Lorg/mapsforge/core/model/MapPosition;
    iget-byte v4, v1, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    iget-object v5, v0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v5, v5, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v5}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v5

    invoke-static {v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v4

    .line 116
    .local v4, "mapSize":J
    iget-object v6, v1, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    invoke-static {v6, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->getPixel(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;

    move-result-object v6

    .line 117
    .local v6, "pointFrameBuffer":Lorg/mapsforge/core/model/Point;
    iget-object v7, v3, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    invoke-static {v7, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->getPixel(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;

    move-result-object v7

    .line 119
    .local v7, "pointMapPosition":Lorg/mapsforge/core/model/Point;
    iget-wide v8, v6, Lorg/mapsforge/core/model/Point;->x:D

    iget-wide v10, v7, Lorg/mapsforge/core/model/Point;->x:D

    sub-double/2addr v8, v10

    .line 120
    .local v8, "diffX":D
    iget-wide v10, v6, Lorg/mapsforge/core/model/Point;->y:D

    iget-wide v12, v7, Lorg/mapsforge/core/model/Point;->y:D

    sub-double/2addr v10, v12

    .line 125
    .local v10, "diffY":D
    const-wide/16 v12, 0x0

    .line 126
    .local v12, "pivotDistanceX":D
    const-wide/16 v14, 0x0

    .line 127
    .local v14, "pivotDistanceY":D
    if-eqz v2, :cond_0

    .line 128
    move-object/from16 v16, v3

    .end local v3    # "mapViewPosition":Lorg/mapsforge/core/model/MapPosition;
    .local v16, "mapViewPosition":Lorg/mapsforge/core/model/MapPosition;
    invoke-static {v2, v4, v5}, Lorg/mapsforge/core/util/MercatorProjection;->getPixel(Lorg/mapsforge/core/model/LatLong;J)Lorg/mapsforge/core/model/Point;

    move-result-object v3

    .line 129
    .local v3, "pivotXY":Lorg/mapsforge/core/model/Point;
    move-wide/from16 v17, v4

    .end local v4    # "mapSize":J
    .local v17, "mapSize":J
    iget-wide v4, v3, Lorg/mapsforge/core/model/Point;->x:D

    move-wide/from16 v19, v12

    .end local v12    # "pivotDistanceX":D
    .local v19, "pivotDistanceX":D
    iget-wide v12, v6, Lorg/mapsforge/core/model/Point;->x:D

    sub-double v12, v4, v12

    .line 130
    .end local v19    # "pivotDistanceX":D
    .restart local v12    # "pivotDistanceX":D
    iget-wide v4, v3, Lorg/mapsforge/core/model/Point;->y:D

    move-object/from16 v21, v3

    .end local v3    # "pivotXY":Lorg/mapsforge/core/model/Point;
    .local v21, "pivotXY":Lorg/mapsforge/core/model/Point;
    iget-wide v2, v6, Lorg/mapsforge/core/model/Point;->y:D

    sub-double v14, v4, v2

    goto :goto_0

    .line 127
    .end local v16    # "mapViewPosition":Lorg/mapsforge/core/model/MapPosition;
    .end local v17    # "mapSize":J
    .end local v21    # "pivotXY":Lorg/mapsforge/core/model/Point;
    .local v3, "mapViewPosition":Lorg/mapsforge/core/model/MapPosition;
    .restart local v4    # "mapSize":J
    :cond_0
    move-object/from16 v16, v3

    move-wide/from16 v17, v4

    move-wide/from16 v19, v12

    .line 133
    .end local v3    # "mapViewPosition":Lorg/mapsforge/core/model/MapPosition;
    .end local v4    # "mapSize":J
    .restart local v16    # "mapViewPosition":Lorg/mapsforge/core/model/MapPosition;
    .restart local v17    # "mapSize":J
    :goto_0
    iget-byte v2, v1, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double v2, p3, v2

    double-to-float v2, v2

    .line 135
    .local v2, "currentScaleFactor":F
    iget-object v3, v0, Lorg/mapsforge/map/controller/FrameBufferController;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    double-to-float v4, v8

    double-to-float v5, v10

    double-to-float v0, v12

    double-to-float v1, v14

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v2

    move-object/from16 v23, p2

    move/from16 v24, v0

    move/from16 v25, v1

    invoke-virtual/range {v19 .. v25}, Lorg/mapsforge/map/view/FrameBuffer;->adjustMatrix(FFFLorg/mapsforge/core/model/Dimension;FF)V

    .line 137
    return-void
.end method

.method public static calculateFrameBufferDimension(Lorg/mapsforge/core/model/Dimension;D)Lorg/mapsforge/core/model/Dimension;
    .locals 5
    .param p0, "mapViewDimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p1, "overdrawFactor"    # D

    .line 45
    iget v0, p0, Lorg/mapsforge/core/model/Dimension;->width:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 46
    .local v0, "width":I
    iget v1, p0, Lorg/mapsforge/core/model/Dimension;->height:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    .line 47
    .local v1, "height":I
    sget-boolean v2, Lorg/mapsforge/core/util/Parameters;->SQUARE_FRAME_BUFFER:Z

    if-eqz v2, :cond_0

    .line 48
    iget v2, p0, Lorg/mapsforge/core/model/Dimension;->width:I

    int-to-float v2, v2

    iget v3, p0, Lorg/mapsforge/core/model/Dimension;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 49
    .local v2, "aspectRatio":F
    sget v3, Lorg/mapsforge/map/controller/FrameBufferController;->maxAspectRatio:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    div-float/2addr v4, v3

    cmpl-float v3, v2, v4

    if-lez v3, :cond_0

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 51
    move v1, v0

    .line 54
    .end local v2    # "aspectRatio":F
    :cond_0
    new-instance v2, Lorg/mapsforge/core/model/Dimension;

    invoke-direct {v2, v0, v1}, Lorg/mapsforge/core/model/Dimension;-><init>(II)V

    return-object v2
.end method

.method public static create(Lorg/mapsforge/map/view/FrameBuffer;Lorg/mapsforge/map/model/Model;)Lorg/mapsforge/map/controller/FrameBufferController;
    .locals 2
    .param p0, "frameBuffer"    # Lorg/mapsforge/map/view/FrameBuffer;
    .param p1, "model"    # Lorg/mapsforge/map/model/Model;

    .line 34
    new-instance v0, Lorg/mapsforge/map/controller/FrameBufferController;

    invoke-direct {v0, p0, p1}, Lorg/mapsforge/map/controller/FrameBufferController;-><init>(Lorg/mapsforge/map/view/FrameBuffer;Lorg/mapsforge/map/model/Model;)V

    .line 36
    .local v0, "frameBufferController":Lorg/mapsforge/map/controller/FrameBufferController;
    iget-object v1, p1, Lorg/mapsforge/map/model/Model;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/model/FrameBufferModel;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 37
    iget-object v1, p1, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/model/MapViewDimension;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 38
    iget-object v1, p1, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1, v0}, Lorg/mapsforge/map/model/IMapViewPosition;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 39
    iget-object v1, p1, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1, v0}, Lorg/mapsforge/map/model/DisplayModel;->addObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 41
    return-object v0
.end method

.method private dimensionChangeNeeded(Lorg/mapsforge/core/model/Dimension;D)Z
    .locals 2
    .param p1, "mapViewDimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p2, "overdrawFactor"    # D

    .line 140
    iget-wide v0, p0, Lorg/mapsforge/map/controller/FrameBufferController;->lastOverdrawFactor:D

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 141
    return v1

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/controller/FrameBufferController;->lastMapViewDimension:Lorg/mapsforge/core/model/Dimension;

    invoke-virtual {p1, v0}, Lorg/mapsforge/core/model/Dimension;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    return v1

    .line 145
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0, p0}, Lorg/mapsforge/map/model/DisplayModel;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 69
    iget-object v0, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0, p0}, Lorg/mapsforge/map/model/IMapViewPosition;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 70
    iget-object v0, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    invoke-virtual {v0, p0}, Lorg/mapsforge/map/model/MapViewDimension;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 71
    iget-object v0, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    invoke-virtual {v0, p0}, Lorg/mapsforge/map/model/FrameBufferModel;->removeObserver(Lorg/mapsforge/map/model/common/Observer;)V

    .line 72
    return-void
.end method

.method public onChange()V
    .locals 12

    .line 76
    iget-object v0, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v0, v0, Lorg/mapsforge/map/model/Model;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/MapViewDimension;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v0

    .line 77
    .local v0, "mapViewDimension":Lorg/mapsforge/core/model/Dimension;
    if-nez v0, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v1, v1, Lorg/mapsforge/map/model/Model;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/FrameBufferModel;->getOverdrawFactor()D

    move-result-wide v7

    .line 83
    .local v7, "overdrawFactor":D
    invoke-direct {p0, v0, v7, v8}, Lorg/mapsforge/map/controller/FrameBufferController;->dimensionChangeNeeded(Lorg/mapsforge/core/model/Dimension;D)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    invoke-static {v0, v7, v8}, Lorg/mapsforge/map/controller/FrameBufferController;->calculateFrameBufferDimension(Lorg/mapsforge/core/model/Dimension;D)Lorg/mapsforge/core/model/Dimension;

    move-result-object v1

    .line 85
    .local v1, "newDimension":Lorg/mapsforge/core/model/Dimension;
    sget-boolean v2, Lorg/mapsforge/core/util/Parameters;->SQUARE_FRAME_BUFFER:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/mapsforge/map/controller/FrameBufferController;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    invoke-virtual {v2}, Lorg/mapsforge/map/view/FrameBuffer;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v1, Lorg/mapsforge/core/model/Dimension;->width:I

    iget-object v3, p0, Lorg/mapsforge/map/controller/FrameBufferController;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    .line 86
    invoke-virtual {v3}, Lorg/mapsforge/map/view/FrameBuffer;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v3

    iget v3, v3, Lorg/mapsforge/core/model/Dimension;->width:I

    if-gt v2, v3, :cond_1

    iget v2, v1, Lorg/mapsforge/core/model/Dimension;->height:I

    iget-object v3, p0, Lorg/mapsforge/map/controller/FrameBufferController;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    .line 87
    invoke-virtual {v3}, Lorg/mapsforge/map/view/FrameBuffer;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v3

    iget v3, v3, Lorg/mapsforge/core/model/Dimension;->height:I

    if-le v2, v3, :cond_2

    .line 90
    :cond_1
    iget-object v2, p0, Lorg/mapsforge/map/controller/FrameBufferController;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    invoke-virtual {v2, v1}, Lorg/mapsforge/map/view/FrameBuffer;->setDimension(Lorg/mapsforge/core/model/Dimension;)V

    .line 92
    :cond_2
    iput-object v0, p0, Lorg/mapsforge/map/controller/FrameBufferController;->lastMapViewDimension:Lorg/mapsforge/core/model/Dimension;

    .line 93
    iput-wide v7, p0, Lorg/mapsforge/map/controller/FrameBufferController;->lastOverdrawFactor:D

    .line 96
    .end local v1    # "newDimension":Lorg/mapsforge/core/model/Dimension;
    :cond_3
    iget-object v1, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v9, v1, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    monitor-enter v9

    .line 97
    :try_start_0
    iget-object v10, p0, Lorg/mapsforge/map/controller/FrameBufferController;->frameBuffer:Lorg/mapsforge/map/view/FrameBuffer;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    :try_start_1
    iget-object v1, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v1, v1, Lorg/mapsforge/map/model/Model;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/FrameBufferModel;->getMapPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v1

    move-object v11, v1

    .line 100
    .local v11, "mapPositionFrameBuffer":Lorg/mapsforge/core/model/MapPosition;
    if-eqz v11, :cond_4

    .line 101
    iget-object v1, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v1, v1, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1}, Lorg/mapsforge/map/model/IMapViewPosition;->getScaleFactor()D

    move-result-wide v4

    .line 102
    .local v4, "scaleFactor":D
    iget-object v1, p0, Lorg/mapsforge/map/controller/FrameBufferController;->model:Lorg/mapsforge/map/model/Model;

    iget-object v1, v1, Lorg/mapsforge/map/model/Model;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v1}, Lorg/mapsforge/map/model/IMapViewPosition;->getPivot()Lorg/mapsforge/core/model/LatLong;

    move-result-object v6

    .line 103
    .local v6, "pivot":Lorg/mapsforge/core/model/LatLong;
    move-object v1, p0

    move-object v2, v11

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lorg/mapsforge/map/controller/FrameBufferController;->adjustFrameBufferMatrix(Lorg/mapsforge/core/model/MapPosition;Lorg/mapsforge/core/model/Dimension;DLorg/mapsforge/core/model/LatLong;)V

    .line 105
    .end local v4    # "scaleFactor":D
    .end local v6    # "pivot":Lorg/mapsforge/core/model/LatLong;
    .end local v11    # "mapPositionFrameBuffer":Lorg/mapsforge/core/model/MapPosition;
    :cond_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "mapViewDimension":Lorg/mapsforge/core/model/Dimension;
    .end local v7    # "overdrawFactor":D
    :try_start_4
    throw v1

    .line 106
    .restart local v0    # "mapViewDimension":Lorg/mapsforge/core/model/Dimension;
    .restart local v7    # "overdrawFactor":D
    :catchall_1
    move-exception v1

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
