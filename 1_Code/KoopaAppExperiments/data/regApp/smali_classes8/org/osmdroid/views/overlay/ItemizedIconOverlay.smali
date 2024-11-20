.class public Lorg/osmdroid/views/overlay/ItemizedIconOverlay;
.super Lorg/osmdroid/views/overlay/ItemizedOverlay;
.source "ItemizedIconOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;,
        Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lorg/osmdroid/views/overlay/OverlayItem;",
        ">",
        "Lorg/osmdroid/views/overlay/ItemizedOverlay<",
        "TItem;>;"
    }
.end annotation


# instance fields
.field protected mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TItem;>;"
        }
    .end annotation
.end field

.field protected mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "pList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "pOnItemGestureListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3, p1}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 0
    .param p2, "pDefaultMarker"    # Landroid/graphics/drawable/Drawable;
    .param p4, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Landroid/graphics/drawable/Drawable;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 24
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "pList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p3, "pOnItemGestureListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-direct {p0, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 26
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    .line 27
    iput-object p3, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    .line 28
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V
    .locals 2
    .param p3, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;",
            "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<",
            "TItem;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "pList":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    .local p2, "pOnItemGestureListener":Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener<TItem;>;"
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->marker_default:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;-><init>(Ljava/util/List;Landroid/graphics/drawable/Drawable;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private activateSelectedItems(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "task"    # Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;

    .line 165
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 166
    .local v0, "eventX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 167
    .local v1, "eventY":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 168
    invoke-virtual {p0, v2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->getItem(I)Lorg/osmdroid/views/overlay/OverlayItem;

    move-result-object v3

    invoke-virtual {p0, v3, v0, v1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->isEventOnItem(Lorg/osmdroid/views/overlay/OverlayItem;IILorg/osmdroid/views/MapView;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-interface {p3, v2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;->run(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 170
    const/4 v3, 0x1

    return v3

    .line 167
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public addItem(ILorg/osmdroid/views/overlay/OverlayItem;)V
    .locals 1
    .param p1, "location"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 80
    return-void
.end method

.method public addItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 74
    return v0
.end method

.method public addItems(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TItem;>;)Z"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 84
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 85
    return v0
.end method

.method protected createItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    return-object v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 49
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 51
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    .line 53
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 138
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$2;

    invoke-direct {v0, p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$2;-><init>(Lorg/osmdroid/views/overlay/ItemizedIconOverlay;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->activateSelectedItems(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 138
    :goto_0
    return v0
.end method

.method protected onLongPressHelper(ILorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)Z"
        }
    .end annotation

    .line 151
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemLongPress(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 120
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    new-instance v0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$1;

    invoke-direct {v0, p0, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$1;-><init>(Lorg/osmdroid/views/overlay/ItemizedIconOverlay;Lorg/osmdroid/views/MapView;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->activateSelectedItems(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;Lorg/osmdroid/views/overlay/ItemizedIconOverlay$ActiveItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedOverlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 120
    :goto_0
    return v0
.end method

.method protected onSingleTapUpHelper(ILorg/osmdroid/views/overlay/OverlayItem;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "index"    # I
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;",
            "Lorg/osmdroid/views/MapView;",
            ")Z"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p2, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mOnItemGestureListener:Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;

    invoke-interface {v0, p1, p2}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay$OnItemGestureListener;->onItemSingleTapUp(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 1
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "pSnapPoint"    # Landroid/graphics/Point;
    .param p4, "pMapView"    # Lorg/osmdroid/api/IMapView;

    .line 58
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public removeAllItems()V
    .locals 1

    .line 89
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->removeAllItems(Z)V

    .line 90
    return-void
.end method

.method public removeAllItems(Z)V
    .locals 1
    .param p1, "withPopulate"    # Z

    .line 93
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 97
    :cond_0
    return-void
.end method

.method public removeItem(I)Lorg/osmdroid/views/overlay/OverlayItem;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/views/overlay/OverlayItem;

    .line 107
    .local v0, "result":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 108
    return-object v0
.end method

.method public removeItem(Lorg/osmdroid/views/overlay/OverlayItem;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)Z"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    .local p1, "item":Lorg/osmdroid/views/overlay/OverlayItem;, "TItem;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 101
    .local v0, "result":Z
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->populate()V

    .line 102
    return v0
.end method

.method public size()I
    .locals 2

    .line 68
    .local p0, "this":Lorg/osmdroid/views/overlay/ItemizedIconOverlay;, "Lorg/osmdroid/views/overlay/ItemizedIconOverlay<TItem;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/views/overlay/ItemizedIconOverlay;->mDrawnItemsLimit:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
