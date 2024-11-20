.class public Lorg/mapsforge/map/view/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"


# static fields
.field static final IS_TRANSPARENT:Z = false


# instance fields
.field dimension:Lorg/mapsforge/core/model/Dimension;

.field final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field final frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

.field final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;

.field final matrix:Lorg/mapsforge/core/graphics/Matrix;

.field odBitmap:Lorg/mapsforge/core/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lorg/mapsforge/map/model/FrameBufferModel;Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 1
    .param p1, "frameBufferModel"    # Lorg/mapsforge/map/model/FrameBufferModel;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/mapsforge/map/view/FrameBuffer;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    .line 62
    iput-object p2, p0, Lorg/mapsforge/map/view/FrameBuffer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 63
    iput-object p3, p0, Lorg/mapsforge/map/view/FrameBuffer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 64
    invoke-interface {p3}, Lorg/mapsforge/core/graphics/GraphicFactory;->createMatrix()Lorg/mapsforge/core/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    .line 65
    return-void
.end method

.method private destroyBitmaps()V
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V

    .line 96
    iput-object v1, p0, Lorg/mapsforge/map/view/FrameBuffer;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 99
    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V

    .line 100
    iput-object v1, p0, Lorg/mapsforge/map/view/FrameBuffer;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 102
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized adjustMatrix(FFFLorg/mapsforge/core/model/Dimension;FF)V
    .locals 2
    .param p1, "diffX"    # F
    .param p2, "diffY"    # F
    .param p3, "scaleFactor"    # F
    .param p4, "mapViewDimension"    # Lorg/mapsforge/core/model/Dimension;
    .param p5, "pivotDistanceX"    # F
    .param p6, "pivotDistanceY"    # F

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->dimension:Lorg/mapsforge/core/model/Dimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 70
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Matrix;->reset()V

    .line 73
    invoke-virtual {p0, p4}, Lorg/mapsforge/map/view/FrameBuffer;->centerFrameBufferToMapView(Lorg/mapsforge/core/model/Dimension;)V

    .line 74
    const/4 v0, 0x0

    cmpl-float v1, p5, v0

    if-nez v1, :cond_1

    cmpl-float v0, p6, v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {v0, p1, p2}, Lorg/mapsforge/core/graphics/Matrix;->translate(FF)V

    .line 80
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBuffer;
    :cond_1
    invoke-virtual {p0, p3, p5, p6}, Lorg/mapsforge/map/view/FrameBuffer;->scale(FFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 68
    .end local p1    # "diffX":F
    .end local p2    # "diffY":F
    .end local p3    # "scaleFactor":F
    .end local p4    # "mapViewDimension":Lorg/mapsforge/core/model/Dimension;
    .end local p5    # "pivotDistanceX":F
    .end local p6    # "pivotDistanceY":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method centerFrameBufferToMapView(Lorg/mapsforge/core/model/Dimension;)V
    .locals 4
    .param p1, "mapViewDimension"    # Lorg/mapsforge/core/model/Dimension;

    .line 84
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->dimension:Lorg/mapsforge/core/model/Dimension;

    iget v0, v0, Lorg/mapsforge/core/model/Dimension;->width:I

    iget v1, p1, Lorg/mapsforge/core/model/Dimension;->width:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, -0x40000000    # -2.0f

    div-float/2addr v0, v1

    .line 85
    .local v0, "dx":F
    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBuffer;->dimension:Lorg/mapsforge/core/model/Dimension;

    iget v2, v2, Lorg/mapsforge/core/model/Dimension;->height:I

    iget v3, p1, Lorg/mapsforge/core/model/Dimension;->height:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 86
    .local v2, "dy":F
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBuffer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {v1, v0, v2}, Lorg/mapsforge/core/graphics/Matrix;->translate(FF)V

    .line 87
    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    .line 90
    :try_start_0
    invoke-direct {p0}, Lorg/mapsforge/map/view/FrameBuffer;->destroyBitmaps()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBuffer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized draw(Lorg/mapsforge/core/graphics/GraphicContext;)V
    .locals 2
    .param p1, "graphicContext"    # Lorg/mapsforge/core/graphics/GraphicContext;

    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/mapsforge/core/graphics/GraphicContext;->fillColor(I)V

    .line 106
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBuffer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {p1, v0, v1}, Lorg/mapsforge/core/graphics/GraphicContext;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/graphics/Matrix;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBuffer;
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    .end local p1    # "graphicContext":Lorg/mapsforge/core/graphics/GraphicContext;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public frameFinished(Lorg/mapsforge/core/model/MapPosition;)V
    .locals 2
    .param p1, "frameMapPosition"    # Lorg/mapsforge/core/model/MapPosition;

    .line 112
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 115
    .local v0, "bitmapTemp":Lorg/mapsforge/core/graphics/Bitmap;
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBuffer;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    iput-object v1, p0, Lorg/mapsforge/map/view/FrameBuffer;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 116
    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 117
    .end local v0    # "bitmapTemp":Lorg/mapsforge/core/graphics/Bitmap;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    invoke-virtual {v0, p1}, Lorg/mapsforge/map/model/FrameBufferModel;->setMapPosition(Lorg/mapsforge/core/model/MapPosition;)V

    .line 121
    return-void

    .line 117
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDimension()Lorg/mapsforge/core/model/Dimension;
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->dimension:Lorg/mapsforge/core/model/Dimension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 124
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBuffer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDrawingBitmap()Lorg/mapsforge/core/graphics/Bitmap;
    .locals 2

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 132
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBuffer;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v1}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/mapsforge/core/graphics/Bitmap;->setBackgroundColor(I)V

    .line 134
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBuffer;
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method scale(FFF)V
    .locals 6
    .param p1, "scaleFactor"    # F
    .param p2, "pivotDistanceX"    # F
    .param p3, "pivotDistanceY"    # F

    .line 138
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->dimension:Lorg/mapsforge/core/model/Dimension;

    invoke-virtual {v0}, Lorg/mapsforge/core/model/Dimension;->getCenter()Lorg/mapsforge/core/model/Point;

    move-result-object v0

    .line 140
    .local v0, "center":Lorg/mapsforge/core/model/Point;
    float-to-double v1, p2

    iget-wide v3, v0, Lorg/mapsforge/core/model/Point;->x:D

    add-double/2addr v1, v3

    double-to-float v1, v1

    .line 141
    .local v1, "pivotX":F
    float-to-double v2, p3

    iget-wide v4, v0, Lorg/mapsforge/core/model/Point;->y:D

    add-double/2addr v2, v4

    double-to-float v2, v2

    .line 142
    .local v2, "pivotY":F
    iget-object v3, p0, Lorg/mapsforge/map/view/FrameBuffer;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {v3, p1, p1, v1, v2}, Lorg/mapsforge/core/graphics/Matrix;->scale(FFFF)V

    .line 144
    .end local v0    # "center":Lorg/mapsforge/core/model/Point;
    .end local v1    # "pivotX":F
    .end local v2    # "pivotY":F
    :cond_0
    return-void
.end method

.method public declared-synchronized setDimension(Lorg/mapsforge/core/model/Dimension;)V
    .locals 4
    .param p1, "dimension"    # Lorg/mapsforge/core/model/Dimension;

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->dimension:Lorg/mapsforge/core/model/Dimension;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/mapsforge/core/model/Dimension;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 148
    monitor-exit p0

    return-void

    .line 150
    .end local p0    # "this":Lorg/mapsforge/map/view/FrameBuffer;
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/mapsforge/map/view/FrameBuffer;->dimension:Lorg/mapsforge/core/model/Dimension;

    .line 152
    invoke-direct {p0}, Lorg/mapsforge/map/view/FrameBuffer;->destroyBitmaps()V

    .line 154
    iget v0, p1, Lorg/mapsforge/core/model/Dimension;->width:I

    if-lez v0, :cond_1

    iget v0, p1, Lorg/mapsforge/core/model/Dimension;->height:I

    if-lez v0, :cond_1

    .line 155
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget v1, p1, Lorg/mapsforge/core/model/Dimension;->width:I

    iget v2, p1, Lorg/mapsforge/core/model/Dimension;->height:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/mapsforge/core/graphics/GraphicFactory;->createBitmap(IIZ)Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 156
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget v1, p1, Lorg/mapsforge/core/model/Dimension;->width:I

    iget v2, p1, Lorg/mapsforge/core/model/Dimension;->height:I

    invoke-interface {v0, v1, v2, v3}, Lorg/mapsforge/core/graphics/GraphicFactory;->createBitmap(IIZ)Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBuffer;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    :cond_1
    monitor-exit p0

    return-void

    .line 146
    .end local p1    # "dimension":Lorg/mapsforge/core/model/Dimension;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
