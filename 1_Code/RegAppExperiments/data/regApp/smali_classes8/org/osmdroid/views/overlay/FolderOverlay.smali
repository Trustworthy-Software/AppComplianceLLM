.class public Lorg/osmdroid/views/overlay/FolderOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "FolderOverlay.java"


# instance fields
.field protected mDescription:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 37
    new-instance v0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;-><init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mName:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mDescription:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 32
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;-><init>()V

    .line 33
    return-void
.end method

.method private recalculateBounds()V
    .locals 21

    .line 74
    move-object/from16 v0, p0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 75
    .local v1, "minLat":D
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 76
    .local v3, "minLon":D
    const-wide v5, -0x10000000000001L

    .line 77
    .local v5, "maxLat":D
    const-wide v7, -0x10000000000001L

    .line 78
    .local v7, "maxLon":D
    iget-object v9, v0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v9}, Lorg/osmdroid/views/overlay/OverlayManager;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/osmdroid/views/overlay/Overlay;

    .line 79
    .local v10, "gp":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v10}, Lorg/osmdroid/views/overlay/Overlay;->getBounds()Lorg/osmdroid/util/BoundingBox;

    move-result-object v11

    .line 82
    .local v11, "box":Lorg/osmdroid/util/BoundingBox;
    invoke-virtual {v11}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v12

    invoke-static {v1, v2, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 83
    invoke-virtual {v11}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v12

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    .line 84
    invoke-virtual {v11}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v12

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    .line 85
    invoke-virtual {v11}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v12

    invoke-static {v7, v8, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    .line 86
    .end local v10    # "gp":Lorg/osmdroid/views/overlay/Overlay;
    .end local v11    # "box":Lorg/osmdroid/util/BoundingBox;
    goto :goto_0

    .line 88
    :cond_0
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v9, v1, v9

    if-nez v9, :cond_1

    .line 89
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v9

    .line 90
    .local v9, "tileSystem":Lorg/osmdroid/util/TileSystem;
    new-instance v15, Lorg/osmdroid/util/BoundingBox;

    .line 91
    invoke-virtual {v9}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v11

    invoke-virtual {v9}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v13

    .line 92
    invoke-virtual {v9}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v16

    invoke-virtual {v9}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v18

    move-object v10, v15

    move-object/from16 v20, v9

    move-object v9, v15

    .end local v9    # "tileSystem":Lorg/osmdroid/util/TileSystem;
    .local v20, "tileSystem":Lorg/osmdroid/util/TileSystem;
    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    invoke-direct/range {v10 .. v18}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v9, v0, Lorg/osmdroid/views/overlay/FolderOverlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    .line 93
    .end local v20    # "tileSystem":Lorg/osmdroid/util/TileSystem;
    goto :goto_1

    .line 94
    :cond_1
    new-instance v9, Lorg/osmdroid/util/BoundingBox;

    move-object v10, v9

    move-wide v11, v5

    move-wide v13, v7

    move-wide v15, v1

    move-wide/from16 v17, v3

    invoke-direct/range {v10 .. v18}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v9, v0, Lorg/osmdroid/views/overlay/FolderOverlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    .line 96
    :goto_1
    return-void
.end method


# virtual methods
.method public add(Lorg/osmdroid/views/overlay/Overlay;)Z
    .locals 1
    .param p1, "item"    # Lorg/osmdroid/views/overlay/Overlay;

    .line 68
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 69
    .local v0, "b":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->recalculateBounds()V

    .line 70
    :cond_0
    return v0
.end method

.method public closeAllInfoWindows()V
    .locals 3

    .line 166
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/OverlayManager;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 167
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v2, v1, Lorg/osmdroid/views/overlay/FolderOverlay;

    if-eqz v2, :cond_0

    .line 168
    move-object v2, v1

    check-cast v2, Lorg/osmdroid/views/overlay/FolderOverlay;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/FolderOverlay;->closeAllInfoWindows()V

    goto :goto_1

    .line 169
    :cond_0
    instance-of v2, v1, Lorg/osmdroid/views/overlay/OverlayWithIW;

    if-eqz v2, :cond_1

    .line 170
    move-object v2, v1

    check-cast v2, Lorg/osmdroid/views/overlay/OverlayWithIW;

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/OverlayWithIW;->closeInfoWindow()V

    .line 172
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_1
    :goto_1
    goto :goto_0

    .line 173
    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 1
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "pShadow"    # Z

    .line 113
    if-eqz p3, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V

    .line 117
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 1
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 107
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 108
    return-void
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 177
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 179
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    .line 180
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 153
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    return v0

    .line 156
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 137
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    return v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 129
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    return v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 121
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 145
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/OverlayManager;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public remove(Lorg/osmdroid/views/overlay/Overlay;)Z
    .locals 1
    .param p1, "item"    # Lorg/osmdroid/views/overlay/Overlay;

    .line 99
    iget-object v0, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mOverlayManager:Lorg/osmdroid/views/overlay/OverlayManager;

    invoke-interface {v0, p1}, Lorg/osmdroid/views/overlay/OverlayManager;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 100
    .local v0, "b":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/osmdroid/views/overlay/FolderOverlay;->recalculateBounds()V

    .line 101
    :cond_0
    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mDescription:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lorg/osmdroid/views/overlay/FolderOverlay;->mName:Ljava/lang/String;

    .line 44
    return-void
.end method
