.class public Lorg/osmdroid/views/overlay/Polyline;
.super Lorg/osmdroid/views/overlay/PolyOverlayWithIW;
.source "Polyline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Polyline$OnClickListener;
    }
.end annotation


# instance fields
.field protected mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>(Lorg/osmdroid/views/MapView;Z)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;Z)V
    .locals 1
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "pUsePath"    # Z

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/Polyline;-><init>(Lorg/osmdroid/views/MapView;ZZ)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;ZZ)V
    .locals 2
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "pUsePath"    # Z
    .param p3, "pClosePath"    # Z

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;-><init>(Lorg/osmdroid/views/MapView;ZZ)V

    .line 46
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method protected click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "pEventPos"    # Lorg/osmdroid/util/GeoPoint;

    .line 153
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, p0, p1, p2}, Lorg/osmdroid/views/overlay/Polyline;->onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    return v0

    .line 156
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lorg/osmdroid/views/overlay/Polyline$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDistance()D
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/LinearRing;->getDistance()D

    move-result-wide v0

    return-wide v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->getOutlinePaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polyline;->getActualPoints()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public onClickDefault(Lorg/osmdroid/views/overlay/Polyline;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1
    .param p1, "polyline"    # Lorg/osmdroid/views/overlay/Polyline;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "eventPos"    # Lorg/osmdroid/util/GeoPoint;

    .line 129
    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/Polyline;->setInfoWindowLocation(Lorg/osmdroid/util/GeoPoint;)V

    .line 130
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polyline;->showInfoWindow()V

    .line 131
    const/4 v0, 0x1

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 136
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    .line 138
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 101
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polyline$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    .line 113
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polyline;->mOnClickListener:Lorg/osmdroid/views/overlay/Polyline$OnClickListener;

    .line 114
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .param p1, "width"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polyline;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    return-void
.end method
