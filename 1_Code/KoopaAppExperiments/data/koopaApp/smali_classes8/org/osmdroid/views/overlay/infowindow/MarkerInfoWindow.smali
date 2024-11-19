.class public Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;
.super Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;
.source "MarkerInfoWindow.java"


# instance fields
.field protected mMarkerRef:Lorg/osmdroid/views/overlay/Marker;


# direct methods
.method public constructor <init>(ILorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "layoutResId"    # I
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;-><init>(ILorg/osmdroid/views/MapView;)V

    .line 43
    return-void
.end method


# virtual methods
.method public getMarkerReference()Lorg/osmdroid/views/overlay/Marker;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    return-object v0
.end method

.method public onClose()V
    .locals 1

    .line 76
    invoke-super {p0}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onClose()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    .line 79
    return-void
.end method

.method public onOpen(Ljava/lang/Object;)V
    .locals 3
    .param p1, "item"    # Ljava/lang/Object;

    .line 56
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/infowindow/BasicInfoWindow;->onOpen(Ljava/lang/Object;)V

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/osmdroid/views/overlay/Marker;

    iput-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    .line 59
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "OsmDroid"

    const-string v1, "Error trapped, MarkerInfoWindow.open, mView is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mView:Landroid/view/View;

    sget v1, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mImageId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 65
    .local v0, "imageView":Landroid/widget/ImageView;
    iget-object v1, p0, Lorg/osmdroid/views/overlay/infowindow/MarkerInfoWindow;->mMarkerRef:Lorg/osmdroid/views/overlay/Marker;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/Marker;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 66
    .local v1, "image":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 69
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :goto_0
    return-void
.end method
