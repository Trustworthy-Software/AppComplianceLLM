.class public Lorg/osmdroid/views/overlay/MinimapOverlay;
.super Lorg/osmdroid/views/overlay/TilesOverlay;
.source "MinimapOverlay.java"


# instance fields
.field private mHeight:I

.field private mPadding:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private mZoomDifference:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileRequestCompleteHandler"    # Landroid/os/Handler;

    .line 91
    new-instance v0, Lorg/osmdroid/tileprovider/MapTileProviderBasic;

    invoke-direct {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBasic;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileRequestCompleteHandler"    # Landroid/os/Handler;
    .param p3, "pTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;

    .line 79
    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lorg/osmdroid/tileprovider/MapTileProviderBase;I)V
    .locals 3
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "pTileRequestCompleteHandler"    # Landroid/os/Handler;
    .param p3, "pTileProvider"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p4, "pZoomDifference"    # I

    .line 48
    invoke-direct {p0, p3, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Landroid/content/Context;)V

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 31
    iput v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    .line 32
    const/16 v0, 0xa

    iput v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    .line 49
    invoke-virtual {p0, p4}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setZoomDifference(I)V

    .line 51
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getTileRequestCompleteHandlers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getLoadingBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setLoadingLineColor(I)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 58
    .local v0, "density":F
    iget v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 59
    iget v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    .line 61
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    .line 62
    const v2, -0x777778

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    return-void
.end method

.method private contains(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;

    .line 201
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 202
    .local v0, "canvasRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 7
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 108
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x1

    invoke-virtual {p2, p1, v0, v6}, Lorg/osmdroid/views/Projection;->save(Landroid/graphics/Canvas;ZZ)V

    .line 114
    nop

    .line 115
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0x2

    int-to-float v2, v0

    .line 116
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, 0x2

    int-to-float v4, v0

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPaint:Landroid/graphics/Paint;

    .line 114
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    move-object v0, p0

    move-object v1, p1

    invoke-super/range {v0 .. v5}, Lorg/osmdroid/views/overlay/TilesOverlay;->drawTiles(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;DLorg/osmdroid/util/RectL;)V

    .line 119
    invoke-virtual {p2, p1, v6}, Lorg/osmdroid/views/Projection;->restore(Landroid/graphics/Canvas;Z)V

    .line 120
    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 179
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    return v0
.end method

.method public getPadding()I
    .locals 1

    .line 197
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 161
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    return v0
.end method

.method public getZoomDifference()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .line 143
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 131
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 137
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 125
    invoke-direct {p0, p1}, Lorg/osmdroid/views/overlay/MinimapOverlay;->contains(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .line 170
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mHeight:I

    .line 171
    return-void
.end method

.method public setPadding(I)V
    .locals 0
    .param p1, "padding"    # I

    .line 188
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mPadding:I

    .line 189
    return-void
.end method

.method public setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V
    .locals 1
    .param p1, "pTileSource"    # Lorg/osmdroid/tileprovider/tilesource/ITileSource;

    .line 95
    iget-object v0, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->setTileSource(Lorg/osmdroid/tileprovider/tilesource/ITileSource;)V

    .line 96
    return-void
.end method

.method protected setViewPort(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)Z
    .locals 7
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 207
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getZoomDifference()I

    move-result v2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    .line 208
    .local v0, "zoomLevel":D
    iget-object v2, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-virtual {v2}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMinimumZoomLevel()I

    move-result v2

    int-to-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 209
    const/4 v2, 0x0

    return v2

    .line 212
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 213
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getPadding()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 214
    .local v3, "top":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getHeight()I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v4}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setCanvasRect(Landroid/graphics/Rect;)V

    .line 215
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getCanvasRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v0, v1, v4}, Lorg/osmdroid/views/Projection;->getOffspring(DLandroid/graphics/Rect;)Lorg/osmdroid/views/Projection;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/osmdroid/views/overlay/MinimapOverlay;->setProjection(Lorg/osmdroid/views/Projection;)V

    .line 216
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/MinimapOverlay;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    iget-object v5, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mViewPort:Lorg/osmdroid/util/RectL;

    invoke-virtual {v4, v5}, Lorg/osmdroid/views/Projection;->getMercatorViewPort(Lorg/osmdroid/util/RectL;)Lorg/osmdroid/util/RectL;

    .line 217
    const/4 v4, 0x1

    return v4
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 152
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mWidth:I

    .line 153
    return-void
.end method

.method public setZoomDifference(I)V
    .locals 0
    .param p1, "zoomDifference"    # I

    .line 103
    iput p1, p0, Lorg/osmdroid/views/overlay/MinimapOverlay;->mZoomDifference:I

    .line 104
    return-void
.end method
