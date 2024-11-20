.class public abstract Lorg/osmdroid/views/overlay/ClickableIconOverlay;
.super Lorg/osmdroid/views/overlay/IconOverlay;
.source "ClickableIconOverlay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/osmdroid/views/overlay/IconOverlay;"
    }
.end annotation


# instance fields
.field private mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field protected mId:I


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    .local p1, "data":Ljava/lang/Object;, "TDataType;"
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/IconOverlay;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static find(Ljava/util/List;I)Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/ClickableIconOverlay;",
            ">;I)",
            "Lorg/osmdroid/views/overlay/ClickableIconOverlay;"
        }
    .end annotation

    .line 105
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/views/overlay/ClickableIconOverlay;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/views/overlay/ClickableIconOverlay;

    .line 106
    .local v1, "item":Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    if-eqz v1, :cond_0

    iget v2, v1, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    if-ne v2, p1, :cond_0

    return-object v1

    .line 107
    .end local v1    # "item":Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    :cond_0
    goto :goto_0

    .line 108
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TDataType;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    iget-object v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .line 112
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    iget v0, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    return v0
.end method

.method protected hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 59
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 62
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v2}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 65
    invoke-virtual {v0}, Lorg/osmdroid/views/Projection;->getIntrinsicScreenRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 66
    .local v1, "screenRect":Landroid/graphics/Rect;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 67
    .local v2, "x":I
    iget-object v3, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPositionPixels:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    neg-int v3, v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 68
    .local v3, "y":I
    iget-object v4, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    .line 69
    .local v4, "hit":Z
    return v4

    .line 62
    .end local v1    # "screenRect":Landroid/graphics/Rect;
    .end local v2    # "x":I
    .end local v3    # "y":I
    .end local v4    # "hit":Z
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 92
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 93
    .local v0, "touched":Z
    if-eqz v0, :cond_0

    .line 94
    iget v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    invoke-virtual {p0, p2, v1, v2, v3}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->onMarkerLongPress(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    return v1
.end method

.method protected abstract onMarkerClicked(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/views/MapView;",
            "I",
            "Lorg/osmdroid/api/IGeoPoint;",
            "TDataType;)Z"
        }
    .end annotation
.end method

.method protected onMarkerLongPress(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "markerId"    # I
    .param p3, "geoPosition"    # Lorg/osmdroid/api/IGeoPoint;
    .param p4, "data"    # Ljava/lang/Object;

    .line 101
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 78
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->hitTest(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v0

    .line 79
    .local v0, "touched":Z
    if-eqz v0, :cond_0

    .line 80
    iget v1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mPosition:Lorg/osmdroid/api/IGeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    invoke-virtual {p0, p2, v1, v2, v3}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->onMarkerClicked(Lorg/osmdroid/views/MapView;ILorg/osmdroid/api/IGeoPoint;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 82
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/IconOverlay;->onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    return v1
.end method

.method public set(ILorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;Ljava/lang/Object;)Lorg/osmdroid/views/overlay/ClickableIconOverlay;
    .locals 0
    .param p1, "id"    # I
    .param p2, "position"    # Lorg/osmdroid/api/IGeoPoint;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/osmdroid/api/IGeoPoint;",
            "Landroid/graphics/drawable/Drawable;",
            "TDataType;)",
            "Lorg/osmdroid/views/overlay/ClickableIconOverlay;"
        }
    .end annotation

    .line 47
    .local p0, "this":Lorg/osmdroid/views/overlay/ClickableIconOverlay;, "Lorg/osmdroid/views/overlay/ClickableIconOverlay<TDataType;>;"
    .local p4, "data":Ljava/lang/Object;, "TDataType;"
    invoke-virtual {p0, p2, p3}, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->set(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/drawable/Drawable;)Lorg/osmdroid/views/overlay/IconOverlay;

    .line 48
    iput p1, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mId:I

    .line 49
    iput-object p4, p0, Lorg/osmdroid/views/overlay/ClickableIconOverlay;->mData:Ljava/lang/Object;

    .line 50
    return-object p0
.end method
