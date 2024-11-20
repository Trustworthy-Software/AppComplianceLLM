.class public Lorg/mapsforge/map/view/FrameBufferHA;
.super Lorg/mapsforge/map/view/FrameBuffer;
.source "FrameBufferHA.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field private allowBitmapSwap:Z

.field private final lmBitmapLock:Ljava/lang/Object;

.field private lmMapPosition:Lorg/mapsforge/core/model/MapPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-class v0, Lorg/mapsforge/map/view/FrameBufferHA;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/view/FrameBufferHA;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/model/FrameBufferModel;Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/GraphicFactory;)V
    .locals 1
    .param p1, "frameBufferModel"    # Lorg/mapsforge/map/model/FrameBufferModel;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lorg/mapsforge/map/view/FrameBuffer;-><init>(Lorg/mapsforge/map/model/FrameBufferModel;Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/GraphicFactory;)V

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/view/FrameBufferHA;->allowBitmapSwap:Z

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmBitmapLock:Ljava/lang/Object;

    .line 40
    return-void
.end method

.method private freeLmBitmap(Lorg/mapsforge/core/model/MapPosition;)V
    .locals 2
    .param p1, "frameMapPosition"    # Lorg/mapsforge/core/model/MapPosition;

    .line 66
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmMapPosition:Lorg/mapsforge/core/model/MapPosition;

    .line 68
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->allowBitmapSwap:Z

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private lockLmBitmap()V
    .locals 4

    .line 83
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 85
    iget-boolean v1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->allowBitmapSwap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 87
    :try_start_1
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmBitmapLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v2, Lorg/mapsforge/map/view/FrameBufferHA;->LOGGER:Ljava/util/logging/Logger;

    const-string v3, "FrameBufferHA interrupted"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 93
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->allowBitmapSwap:Z

    .line 94
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private swapBitmaps()V
    .locals 4

    .line 98
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmBitmapLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-boolean v1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->allowBitmapSwap:Z

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 103
    .local v1, "bitmapTemp":Lorg/mapsforge/core/graphics/Bitmap;
    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    iput-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 104
    iput-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 106
    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA;->frameBufferModel:Lorg/mapsforge/map/model/FrameBufferModel;

    iget-object v3, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmMapPosition:Lorg/mapsforge/core/model/MapPosition;

    invoke-virtual {v2, v3}, Lorg/mapsforge/map/model/FrameBufferModel;->setMapPosition(Lorg/mapsforge/core/model/MapPosition;)V

    .line 108
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/mapsforge/map/view/FrameBufferHA;->allowBitmapSwap:Z

    .line 109
    iget-object v2, p0, Lorg/mapsforge/map/view/FrameBufferHA;->lmBitmapLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 111
    .end local v1    # "bitmapTemp":Lorg/mapsforge/core/graphics/Bitmap;
    :cond_0
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public draw(Lorg/mapsforge/core/graphics/GraphicContext;)V
    .locals 2
    .param p1, "graphicContext"    # Lorg/mapsforge/core/graphics/GraphicContext;

    .line 47
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/DisplayModel;->getBackgroundColor()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/mapsforge/core/graphics/GraphicContext;->fillColor(I)V

    .line 50
    invoke-direct {p0}, Lorg/mapsforge/map/view/FrameBufferHA;->swapBitmaps()V

    .line 52
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/mapsforge/map/view/FrameBufferHA;->odBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    iget-object v1, p0, Lorg/mapsforge/map/view/FrameBufferHA;->matrix:Lorg/mapsforge/core/graphics/Matrix;

    invoke-interface {p1, v0, v1}, Lorg/mapsforge/core/graphics/GraphicContext;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;Lorg/mapsforge/core/graphics/Matrix;)V

    .line 55
    :cond_0
    return-void
.end method

.method public frameFinished(Lorg/mapsforge/core/model/MapPosition;)V
    .locals 0
    .param p1, "frameMapPosition"    # Lorg/mapsforge/core/model/MapPosition;

    .line 62
    invoke-direct {p0, p1}, Lorg/mapsforge/map/view/FrameBufferHA;->freeLmBitmap(Lorg/mapsforge/core/model/MapPosition;)V

    .line 63
    return-void
.end method

.method public getDrawingBitmap()Lorg/mapsforge/core/graphics/Bitmap;
    .locals 1

    .line 77
    invoke-direct {p0}, Lorg/mapsforge/map/view/FrameBufferHA;->lockLmBitmap()V

    .line 79
    invoke-super {p0}, Lorg/mapsforge/map/view/FrameBuffer;->getDrawingBitmap()Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
