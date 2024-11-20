.class public abstract Lorg/osmdroid/views/overlay/ItemizedOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "ItemizedOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/Overlay;",
        "Lorg/osmdroid/views/overlay/Overlay$Snappable;"
    }
.end annotation


# instance fields
.field private itemRect:Landroid/graphics/Rect;

.field private final mCurScreenCoords:Landroid/graphics/Point;

.field protected final mDefaultMarker:Landroid/graphics/drawable/Drawable;

.field protected mDrawFocusedItem:Z

.field protected mDrawnItemsLimit:I

.field private mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field private mInternalItemDisplayedList:[Z

.field private final mInternalItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TItem;>;"
        }
    .end annotation
.end field

.field private final mMarkerRect:Landroid/graphics/Rect;

.field private mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

.field private final mOrientedMarkerRect:Landroid/graphics/Rect;

.field private mPendingFocusChangedEvent:Z

.field private final mRect:Landroid/graphics/Rect;

.field private screenRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pDefaultMarker"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 80
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "pDefaultMarker"    # Landroid/graphics/drawable/Drawable;

    .line 85
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 40
    const v0, 0x7fffffff

    iput v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawnItemsLimit:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMarkerRect:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->itemRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->screenRect:Landroid/graphics/Rect;

    .line 86
    if-eqz p1, :cond_0

    .line 90
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    .line 93
    return-void

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a default marker to ItemizedOverlay."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p2, "hotspot"    # Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 343
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    if-nez p2, :cond_0

    .line 344
    sget-object p2, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 346
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 347
    .local v0, "markerWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 350
    .local v1, "markerHeight":I
    sget-object v2, Lorg/osmdroid/views/overlay/ItemizedOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 356
    const/4 v2, 0x0

    .line 357
    .local v2, "offsetX":I
    goto :goto_0

    .line 366
    .end local v2    # "offsetX":I
    :pswitch_0
    neg-int v2, v0

    .restart local v2    # "offsetX":I
    goto :goto_0

    .line 361
    .end local v2    # "offsetX":I
    :pswitch_1
    neg-int v2, v0

    div-int/lit8 v2, v2, 0x2

    .line 362
    .restart local v2    # "offsetX":I
    nop

    .line 369
    :goto_0
    sget-object v3, Lorg/osmdroid/views/overlay/ItemizedOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I

    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 375
    :pswitch_2
    const/4 v3, 0x0

    .line 376
    .local v3, "offsetY":I
    goto :goto_1

    .line 385
    .end local v3    # "offsetY":I
    :pswitch_3
    neg-int v3, v1

    .restart local v3    # "offsetY":I
    goto :goto_1

    .line 380
    .end local v3    # "offsetY":I
    :pswitch_4
    neg-int v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 381
    .restart local v3    # "offsetY":I
    nop

    .line 388
    :goto_1
    add-int v4, v2, v0

    add-int v5, v3, v1

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 389
    return-object p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected calculateItemRect(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p2, "coords"    # Landroid/graphics/Point;
    .param p3, "reuse"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 401
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 403
    .local v0, "out":Landroid/graphics/Rect;
    :goto_0
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object v1

    .line 404
    .local v1, "hotspot":Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    if-nez v1, :cond_1

    .line 405
    sget-object v1, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->BOTTOM_CENTER:Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    .line 408
    :cond_1
    iget-boolean v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-ne v2, p1, :cond_2

    const/4 v2, 0x4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 409
    .local v2, "state":I
    :goto_1
    invoke-virtual {p1, v2}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getDefaultMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v2}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 410
    .local v3, "marker":Landroid/graphics/drawable/Drawable;
    :goto_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 411
    .local v4, "itemWidth":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 413
    .local v5, "itemHeight":I
    sget-object v6, Lorg/osmdroid/views/overlay/ItemizedOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$OverlayItem$HotspotPlace:[I

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 457
    :pswitch_0
    iget v6, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v4

    iget v7, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    iget v8, p2, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 461
    goto/16 :goto_3

    .line 451
    :pswitch_1
    iget v6, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v4

    iget v7, p2, Landroid/graphics/Point;->y:I

    iget v8, p2, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 455
    goto/16 :goto_3

    .line 439
    :pswitch_2
    iget v6, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v4

    iget v7, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 443
    goto/16 :goto_3

    .line 433
    :pswitch_3
    iget v6, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Point;->y:I

    iget v8, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 437
    goto :goto_3

    .line 427
    :pswitch_4
    iget v6, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    iget v8, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 431
    goto :goto_3

    .line 421
    :pswitch_5
    iget v6, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 425
    goto :goto_3

    .line 469
    :pswitch_6
    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr v7, v5

    iget v8, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v4

    iget v9, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 463
    :pswitch_7
    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    iget v8, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v4

    iget v9, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v5

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 467
    goto :goto_3

    .line 445
    :pswitch_8
    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v4

    iget v9, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 449
    goto :goto_3

    .line 415
    :pswitch_9
    iget v6, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    iget v7, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v8, v5, 0x2

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Point;->x:I

    div-int/lit8 v9, v4, 0x2

    add-int/2addr v8, v9

    iget v9, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 v10, v5, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 419
    nop

    .line 476
    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pj"    # Lorg/osmdroid/views/Projection;

    .line 133
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    invoke-interface {v0, p0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lorg/osmdroid/views/overlay/ItemizedOverlay;Lorg/osmdroid/views/overlay/OverlayItem;)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    .line 137
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawnItemsLimit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    .local v0, "size":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eq v1, v0, :cond_2

    .line 140
    :cond_1
    new-array v1, v0, [Z

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    .line 144
    :cond_2
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 145
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v2

    .line 146
    .local v2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    if-nez v2, :cond_3

    .line 147
    goto :goto_1

    .line 150
    :cond_3
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v3

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    invoke-virtual {p2, v3, v4}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 151
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->itemRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3, v4}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->calculateItemRect(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 153
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    invoke-virtual {p0, p1, v2, v4, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onDrawItem(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;Lorg/osmdroid/views/Projection;)Z

    move-result v4

    aput-boolean v4, v3, v1

    .line 144
    .end local v2    # "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method protected getDefaultMarker(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "state"    # I

    .line 257
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Lorg/osmdroid/views/overlay/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    .line 258
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDefaultMarker:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDisplayedItems()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    if-nez v1, :cond_0

    .line 246
    return-object v0

    .line 248
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 249
    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    .line 250
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public getDrawnItemsLimit()I
    .locals 1

    .line 100
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iget v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawnItemsLimit:I

    return v0
.end method

.method public getFocus()Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    return-object v0
.end method

.method public final getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    :try_start_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected hitTest(Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .locals 1
    .param p2, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "hitX"    # I
    .param p4, "hitY"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    .line 275
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method protected isEventOnItem(Lorg/osmdroid/views/overlay/OverlayItem;IILorg/osmdroid/views/MapView;)Z
    .locals 11
    .param p2, "pEventX"    # I
    .param p3, "pEventY"    # I
    .param p4, "pMapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;II",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    .line 491
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    .local p1, "pItem":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 492
    return v0

    .line 494
    :cond_0
    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v1

    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayItem;->getPoint()Lorg/osmdroid/api/IGeoPoint;

    move-result-object v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    invoke-virtual {v1, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 495
    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-ne v1, p1, :cond_1

    const/4 v0, 0x4

    .line 496
    .local v0, "state":I
    :cond_1
    invoke-virtual {p1, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 497
    .local v1, "marker":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 498
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getDefaultMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 500
    :cond_2
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    .line 501
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 502
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 503
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v6, v2, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p4}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v2

    neg-float v2, v2

    float-to-double v8, v2

    iget-object v10, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-static/range {v5 .. v10}, Lorg/osmdroid/util/RectL;->getBounds(Landroid/graphics/Rect;IIDLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 504
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 113
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    nop

    .line 116
    return-void
.end method

.method protected onDrawItem(Landroid/graphics/Canvas;Lorg/osmdroid/views/overlay/OverlayItem;Landroid/graphics/Point;Lorg/osmdroid/views/Projection;)Z
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "curScreenCoords"    # Landroid/graphics/Point;
    .param p4, "pProjection"    # Lorg/osmdroid/views/Projection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "TItem;",
            "Landroid/graphics/Point;",
            "Lorg/osmdroid/views/Projection;",
            ")Z"
        }
    .end annotation

    .line 203
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-ne v0, p2, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 204
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 205
    .local v0, "state":I
    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getDefaultMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {p2, v0}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    nop

    .line 207
    .local v1, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Lorg/osmdroid/views/overlay/OverlayItem;->getMarkerHotspot()Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;

    move-result-object v2

    .line 209
    .local v2, "hotspot":Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;
    invoke-virtual {p0, v1, v2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->boundToHotspot(Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/OverlayItem$HotspotPlace;)Landroid/graphics/drawable/Drawable;

    .line 211
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 212
    .local v3, "x":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mCurScreenCoords:Landroid/graphics/Point;

    iget v10, v4, Landroid/graphics/Point;->y:I

    .line 214
    .local v10, "y":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 215
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMarkerRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 216
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v3, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 217
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p4}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v5

    float-to-double v7, v5

    iget-object v9, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    move v5, v3

    move v6, v10

    invoke-static/range {v4 .. v9}, Lorg/osmdroid/util/RectL;->getBounds(Landroid/graphics/Rect;IIDLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 218
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOrientedMarkerRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    .line 219
    .local v4, "displayed":Z
    if-eqz v4, :cond_4

    .line 220
    invoke-virtual {p4}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 221
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 222
    invoke-virtual {p4}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v5

    neg-float v5, v5

    int-to-float v7, v3

    int-to-float v8, v10

    invoke-virtual {p1, v5, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 224
    :cond_2
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 225
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 226
    invoke-virtual {p4}, Lorg/osmdroid/views/Projection;->getOrientation()F

    move-result v5

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_3

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 229
    :cond_3
    iget-object v5, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mMarkerRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 232
    :cond_4
    return v4
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 280
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->size()I

    move-result v0

    .line 281
    .local v0, "size":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 282
    .local v1, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 283
    .local v2, "eventY":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 284
    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v4

    invoke-virtual {p0, v4, v1, v2, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->isEventOnItem(Lorg/osmdroid/views/overlay/OverlayItem;IILorg/osmdroid/views/MapView;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 285
    invoke-virtual {p0, v3}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onTap(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    const/4 v4, 0x1

    return v4

    .line 283
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    .end local v3    # "i":I
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v3

    return v3
.end method

.method protected onTap(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 304
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected final populate()V
    .locals 4

    .line 167
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->size()I

    move-result v0

    .line 168
    .local v0, "size":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 170
    const/4 v1, 0x0

    .local v1, "a":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 171
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemList:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    .end local v1    # "a":I
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mInternalItemDisplayedList:[Z

    .line 174
    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .locals 0
    .param p1, "drawFocusedItem"    # Z

    .line 312
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawFocusedItem:Z

    .line 313
    return-void
.end method

.method public setDrawnItemsLimit(I)V
    .locals 0
    .param p1, "aLimit"    # I

    .line 104
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iput p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mDrawnItemsLimit:I

    .line 105
    return-void
.end method

.method public setFocus(Lorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    .line 322
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mPendingFocusChangedEvent:Z

    .line 323
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mFocusedItem:Lorg/osmdroid/views/overlay/OverlayItem;

    .line 324
    return-void
.end method

.method public setOnFocusChangeListener(Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;)V
    .locals 0
    .param p1, "l"    # Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

    .line 480
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedOverlay;, "Lorg/osmdroid/views/overlay/ItemizedOverlay<TItem;>;"
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedOverlay;->mOnFocusChangeListener:Lorg/osmdroid/views/overlay/ItemizedOverlay$OnFocusChangeListener;

    .line 481
    return-void
.end method

.method public abstract size()I
.end method
