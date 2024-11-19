.class public Lorg/osmdroid/views/overlay/Polygon;
.super Lorg/osmdroid/views/overlay/PolyOverlayWithIW;
.source "Polygon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Polygon$OnClickListener;
    }
.end annotation


# instance fields
.field protected mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/osmdroid/views/overlay/Polygon;-><init>(Lorg/osmdroid/views/MapView;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 3
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, v0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;-><init>(Lorg/osmdroid/views/MapView;ZZ)V

    .line 44
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    .line 45
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 51
    return-void
.end method

.method public static pointsAsCircle(Lorg/osmdroid/util/GeoPoint;D)Ljava/util/ArrayList;
    .locals 4
    .param p0, "center"    # Lorg/osmdroid/util/GeoPoint;
    .param p1, "radiusInMeters"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/GeoPoint;",
            "D)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x3c

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v0, "circlePoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/util/GeoPoint;>;"
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    const/16 v2, 0x168

    if-ge v1, v2, :cond_0

    .line 159
    int-to-double v2, v1

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DD)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    .line 160
    .local v2, "onCircle":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    .end local v2    # "onCircle":Lorg/osmdroid/util/GeoPoint;
    add-int/lit8 v1, v1, 0x6

    goto :goto_0

    .line 162
    .end local v1    # "f":I
    :cond_0
    return-object v0
.end method

.method public static pointsAsRect(Lorg/osmdroid/util/BoundingBox;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "rectangle"    # Lorg/osmdroid/util/BoundingBox;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/BoundingBox;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v0, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/api/IGeoPoint;>;"
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    return-object v0
.end method

.method public static pointsAsRect(Lorg/osmdroid/util/GeoPoint;DD)Ljava/util/ArrayList;
    .locals 13
    .param p0, "center"    # Lorg/osmdroid/util/GeoPoint;
    .param p1, "lengthInMeters"    # D
    .param p3, "widthInMeters"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osmdroid/util/GeoPoint;",
            "DD)",
            "Ljava/util/ArrayList<",
            "Lorg/osmdroid/api/IGeoPoint;",
            ">;"
        }
    .end annotation

    .line 189
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    .local v1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/osmdroid/api/IGeoPoint;>;"
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v4, p1, v2

    const-wide v6, 0x4056800000000000L    # 90.0

    invoke-virtual {p0, v4, v5, v6, v7}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DD)Lorg/osmdroid/util/GeoPoint;

    move-result-object v4

    .line 191
    .local v4, "east":Lorg/osmdroid/util/GeoPoint;
    mul-double v2, v2, p3

    const-wide v5, 0x4066800000000000L    # 180.0

    invoke-virtual {p0, v2, v3, v5, v6}, Lorg/osmdroid/util/GeoPoint;->destinationPoint(DD)Lorg/osmdroid/util/GeoPoint;

    move-result-object v2

    .line 192
    .local v2, "south":Lorg/osmdroid/util/GeoPoint;
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v5, v7

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v9

    sub-double/2addr v5, v9

    .line 193
    .local v5, "westLon":D
    invoke-virtual {p0}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v9

    mul-double/2addr v9, v7

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    sub-double/2addr v9, v7

    .line 194
    .local v9, "northLat":D
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v11

    invoke-direct {v3, v7, v8, v11, v12}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v2}, Lorg/osmdroid/util/GeoPoint;->getLatitude()D

    move-result-wide v7

    invoke-direct {v3, v7, v8, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-direct {v3, v9, v10, v5, v6}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    new-instance v3, Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {v4}, Lorg/osmdroid/util/GeoPoint;->getLongitude()D

    move-result-wide v7

    invoke-direct {v3, v9, v10, v7, v8}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    return-object v1
.end method


# virtual methods
.method protected click(Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;
    .param p2, "pEventPos"    # Lorg/osmdroid/util/GeoPoint;

    .line 236
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0, p0, p1, p2}, Lorg/osmdroid/views/overlay/Polygon;->onClickDefault(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    return v0

    .line 239
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lorg/osmdroid/views/overlay/Polygon$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z

    move-result v0

    return v0
.end method

.method public getFillColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getFillPaint()Landroid/graphics/Paint;
    .locals 1

    .line 86
    invoke-super {p0}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->getFillPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getHoles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;"
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 140
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    iget-object v1, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/views/overlay/LinearRing;

    .line 141
    .local v2, "hole":Lorg/osmdroid/views/overlay/LinearRing;
    invoke-virtual {v2}, Lorg/osmdroid/views/overlay/LinearRing;->getPoints()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .end local v2    # "hole":Lorg/osmdroid/views/overlay/LinearRing;
    goto :goto_0

    .line 146
    :cond_0
    return-object v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/Polygon;->getActualPoints()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public onClickDefault(Lorg/osmdroid/views/overlay/Polygon;Lorg/osmdroid/views/MapView;Lorg/osmdroid/util/GeoPoint;)Z
    .locals 1
    .param p1, "polygon"    # Lorg/osmdroid/views/overlay/Polygon;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "eventPos"    # Lorg/osmdroid/util/GeoPoint;

    .line 218
    invoke-virtual {p1, p3}, Lorg/osmdroid/views/overlay/Polygon;->setInfoWindowLocation(Lorg/osmdroid/util/GeoPoint;)V

    .line 219
    invoke-virtual {p1}, Lorg/osmdroid/views/overlay/Polygon;->showInfoWindow()V

    .line 220
    const/4 v0, 0x1

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 1
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 203
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/PolyOverlayWithIW;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 205
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 104
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    return-void
.end method

.method public setHoles(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GeoPoint;",
            ">;>;)V"
        }
    .end annotation

    .line 124
    .local p1, "holes":Ljava/util/List;, "Ljava/util/List<+Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/List;

    .line 125
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 126
    .local v1, "sourceHole":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    new-instance v2, Lorg/osmdroid/views/overlay/LinearRing;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mPath:Landroid/graphics/Path;

    invoke-direct {v2, v3}, Lorg/osmdroid/views/overlay/LinearRing;-><init>(Landroid/graphics/Path;)V

    .line 127
    .local v2, "newHole":Lorg/osmdroid/views/overlay/LinearRing;
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutline:Lorg/osmdroid/views/overlay/LinearRing;

    invoke-virtual {v3}, Lorg/osmdroid/views/overlay/LinearRing;->isGeodesic()Z

    move-result v3

    invoke-virtual {v2, v3}, Lorg/osmdroid/views/overlay/LinearRing;->setGeodesic(Z)V

    .line 128
    invoke-virtual {v2, v1}, Lorg/osmdroid/views/overlay/LinearRing;->setPoints(Ljava/util/List;)V

    .line 129
    iget-object v3, p0, Lorg/osmdroid/views/overlay/Polygon;->mHoles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v1    # "sourceHole":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GeoPoint;>;"
    .end local v2    # "newHole":Lorg/osmdroid/views/overlay/LinearRing;
    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/Polygon$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 228
    iput-object p1, p0, Lorg/osmdroid/views/overlay/Polygon;->mOnClickListener:Lorg/osmdroid/views/overlay/Polygon$OnClickListener;

    .line 229
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "width"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Polygon;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 121
    return-void
.end method
