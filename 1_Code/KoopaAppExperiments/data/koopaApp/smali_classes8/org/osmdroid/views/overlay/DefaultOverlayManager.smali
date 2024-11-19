.class public Lorg/osmdroid/views/overlay/DefaultOverlayManager;
.super Ljava/util/AbstractList;
.source "DefaultOverlayManager.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/OverlayManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lorg/osmdroid/views/overlay/Overlay;",
        ">;",
        "Lorg/osmdroid/views/overlay/OverlayManager;"
    }
.end annotation


# instance fields
.field private final mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation
.end field

.field private mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 1
    .param p1, "tilesOverlay"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 34
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 35
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->setTilesOverlay(Lorg/osmdroid/views/overlay/TilesOverlay;)V

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/DefaultOverlayManager;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/DefaultOverlayManager;

    .line 28
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private onDrawHelper(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/Projection;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 157
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->protectDisplayedTilesForCache(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 160
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    instance-of v2, v1, Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v2, :cond_1

    .line 161
    move-object v2, v1

    check-cast v2, Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v2, p1, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->protectDisplayedTilesForCache(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 163
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_1
    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    if-eqz p2, :cond_3

    .line 168
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1, p2, v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_1

    .line 170
    :cond_3
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 175
    :cond_4
    :goto_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Overlay;

    .line 177
    .local v2, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/Overlay;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 178
    if-eqz p2, :cond_5

    .line 179
    invoke-virtual {v2, p1, p2, v1}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V

    goto :goto_3

    .line 181
    :cond_5
    invoke-virtual {v2, p1, p3}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 184
    .end local v2    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_6
    :goto_3
    goto :goto_2

    .line 186
    :cond_7
    return-void
.end method


# virtual methods
.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p2, Lorg/osmdroid/views/overlay/Overlay;

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->add(ILorg/osmdroid/views/overlay/Overlay;)V

    return-void
.end method

.method public add(ILorg/osmdroid/views/overlay/Overlay;)V
    .locals 3
    .param p1, "pIndex"    # I
    .param p2, "pElement"    # Lorg/osmdroid/views/overlay/Overlay;

    .line 51
    if-nez p2, :cond_0

    .line 53
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 54
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OsmDroid"

    const-string v2, "Attempt to add a null overlay to the collection. This is probably a bug and should be reported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .end local v0    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 58
    :goto_0
    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->get(I)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lorg/osmdroid/views/overlay/Overlay;
    .locals 1
    .param p1, "pIndex"    # I

    .line 41
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    return-object v0
.end method

.method public getTilesOverlay()Lorg/osmdroid/views/overlay/TilesOverlay;
    .locals 1

    .line 81
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "menuIdOffset"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 394
    const/4 v0, 0x1

    .line 395
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/Overlay;

    .line 396
    .local v2, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v3, v2, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    if-eqz v3, :cond_0

    .line 397
    move-object v3, v2

    check-cast v3, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    .line 398
    .local v3, "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    invoke-interface {v3}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->isOptionsMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 399
    invoke-interface {v3, p1, p2, p3}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z

    move-result v4

    and-int/2addr v0, v4

    .line 402
    .end local v2    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    .end local v3    # "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    :cond_0
    goto :goto_0

    .line 404
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/TilesOverlay;->isOptionsMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    iget-object v1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z

    move-result v1

    and-int/2addr v0, v1

    .line 408
    :cond_2
    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 190
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Lorg/osmdroid/views/overlay/TilesOverlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 195
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 196
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->clear()V

    .line 198
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 283
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 284
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    const/4 v0, 0x1

    return v0

    .line 287
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 289
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 294
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 295
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const/4 v0, 0x1

    return v0

    .line 298
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 300
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 318
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 319
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    const/4 v0, 0x1

    return v0

    .line 322
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 139
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->onDrawHelper(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/Projection;)V

    .line 140
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->onDrawHelper(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/Projection;)V

    .line 148
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 8
    .param p1, "pEvent1"    # Landroid/view/MotionEvent;
    .param p2, "pEvent2"    # Landroid/view/MotionEvent;
    .param p3, "pVelocityX"    # F
    .param p4, "pVelocityY"    # F
    .param p5, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 330
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 331
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/overlay/Overlay;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    const/4 v0, 0x1

    return v0

    .line 334
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 224
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 225
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Overlay;->onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v0, 0x1

    return v0

    .line 228
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 235
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 236
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2, p3}, Lorg/osmdroid/views/overlay/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    const/4 v0, 0x1

    return v0

    .line 239
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 241
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 341
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 342
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    const/4 v0, 0x1

    return v0

    .line 345
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 347
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "menuIdOffset"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 431
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 432
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v3, v1, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    if-eqz v3, :cond_0

    .line 433
    move-object v3, v1

    check-cast v3, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    .line 434
    .local v3, "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    invoke-interface {v3}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->isOptionsMenuEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 435
    invoke-interface {v3, p1, p2, p3}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 436
    return v2

    .line 439
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    .end local v3    # "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    :cond_0
    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v0, :cond_2

    .line 442
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->isOptionsMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 443
    invoke-virtual {v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    return v2

    .line 447
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 202
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->onPause()V

    .line 206
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 207
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Overlay;->onPause()V

    .line 208
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    goto :goto_0

    .line 209
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "menuIdOffset"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 413
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 414
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v2, v1, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    if-eqz v2, :cond_0

    .line 415
    move-object v2, v1

    check-cast v2, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    .line 416
    .local v2, "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    invoke-interface {v2}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->isOptionsMenuEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 417
    invoke-interface {v2, p1, p2, p3}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z

    .line 420
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    .end local v2    # "overlayMenuProvider":Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
    :cond_0
    goto :goto_0

    .line 422
    :cond_1
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->isOptionsMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-virtual {v0, p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay;->onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z

    .line 426
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 213
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->onResume()V

    .line 217
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 218
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Overlay;->onResume()V

    .line 219
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    goto :goto_0

    .line 220
    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 8
    .param p1, "pEvent1"    # Landroid/view/MotionEvent;
    .param p2, "pEvent2"    # Landroid/view/MotionEvent;
    .param p3, "pDistanceX"    # F
    .param p4, "pDistanceY"    # F
    .param p5, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 353
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 354
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/views/overlay/Overlay;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    const/4 v0, 0x1

    return v0

    .line 357
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 359
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 364
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 365
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V

    .line 366
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 305
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 306
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    const/4 v0, 0x1

    return v0

    .line 309
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 311
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 371
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 372
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    const/4 v0, 0x1

    return v0

    .line 375
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 377
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snapPoint"    # Landroid/graphics/Point;
    .param p4, "pMapView"    # Lorg/osmdroid/api/IMapView;

    .line 268
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 269
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v2, v1, Lorg/osmdroid/views/overlay/Overlay$Snappable;

    if-eqz v2, :cond_0

    .line 270
    move-object v2, v1

    check-cast v2, Lorg/osmdroid/views/overlay/Overlay$Snappable;

    invoke-interface {v2, p1, p2, p3, p4}, Lorg/osmdroid/views/overlay/Overlay$Snappable;->onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    const/4 v0, 0x1

    return v0

    .line 274
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 246
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 247
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v0, 0x1

    return v0

    .line 250
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 252
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 257
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->overlaysReversed()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 258
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    invoke-virtual {v1, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    const/4 v0, 0x1

    return v0

    .line 261
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 263
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public overlays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public overlaysReversed()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/osmdroid/views/overlay/Overlay;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/osmdroid/views/overlay/DefaultOverlayManager$1;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/DefaultOverlayManager$1;-><init>(Lorg/osmdroid/views/overlay/DefaultOverlayManager;)V

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->remove(I)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Lorg/osmdroid/views/overlay/Overlay;
    .locals 1
    .param p1, "pIndex"    # I

    .line 62
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p2, Lorg/osmdroid/views/overlay/Overlay;

    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->set(ILorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/views/overlay/Overlay;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/osmdroid/views/overlay/Overlay;)Lorg/osmdroid/views/overlay/Overlay;
    .locals 3
    .param p1, "pIndex"    # I
    .param p2, "pElement"    # Lorg/osmdroid/views/overlay/Overlay;

    .line 68
    if-nez p2, :cond_0

    .line 69
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "OsmDroid"

    const-string v2, "Attempt to set a null overlay to the collection. This is probably a bug and should be reported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 71
    const/4 v1, 0x0

    return-object v1

    .line 73
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/Overlay;

    .line 74
    .local v0, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    return-object v0
.end method

.method public setOptionsMenusEnabled(Z)V
    .locals 3
    .param p1, "pEnabled"    # Z

    .line 384
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/Overlay;

    .line 385
    .local v1, "overlay":Lorg/osmdroid/views/overlay/Overlay;
    instance-of v2, v1, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    .line 386
    invoke-interface {v2}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->isOptionsMenuEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    move-object v2, v1

    check-cast v2, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;

    invoke-interface {v2, p1}, Lorg/osmdroid/views/overlay/IOverlayMenuProvider;->setOptionsMenuEnabled(Z)V

    .line 389
    .end local v1    # "overlay":Lorg/osmdroid/views/overlay/Overlay;
    :cond_0
    goto :goto_0

    .line 390
    :cond_1
    return-void
.end method

.method public setTilesOverlay(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 0
    .param p1, "tilesOverlay"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 86
    iput-object p1, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mTilesOverlay:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 87
    return-void
.end method

.method public size()I
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/osmdroid/views/overlay/DefaultOverlayManager;->mOverlayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method
