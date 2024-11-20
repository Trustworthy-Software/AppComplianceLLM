.class public abstract Lorg/mapsforge/map/scalebar/MapScaleBar;
.super Ljava/lang/Object;
.source "MapScaleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;,
        Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;
    }
.end annotation


# static fields
.field private static final DEFAULT_SCALE_BAR_POSITION:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

.field private static final LATITUDE_REDRAW_THRESHOLD:D = 0.2


# instance fields
.field protected final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field protected distanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

.field protected final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field protected final mapScaleBitmap:Lorg/mapsforge/core/graphics/Bitmap;

.field protected final mapScaleCanvas:Lorg/mapsforge/core/graphics/Canvas;

.field private final mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

.field private final mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

.field private marginHorizontal:I

.field private marginVertical:I

.field private prevMapPosition:Lorg/mapsforge/core/model/MapPosition;

.field protected redrawNeeded:Z

.field protected scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-object v0, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->BOTTOM_LEFT:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    sput-object v0, Lorg/mapsforge/map/scalebar/MapScaleBar;->DEFAULT_SCALE_BAR_POSITION:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    return-void
.end method

.method public constructor <init>(Lorg/mapsforge/map/model/IMapViewPosition;Lorg/mapsforge/map/model/MapViewDimension;Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/core/graphics/GraphicFactory;II)V
    .locals 2
    .param p1, "mapViewPosition"    # Lorg/mapsforge/map/model/IMapViewPosition;
    .param p2, "mapViewDimension"    # Lorg/mapsforge/map/model/MapViewDimension;
    .param p3, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p4, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    .line 74
    iput-object p2, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    .line 75
    iput-object p3, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 76
    iput-object p4, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 77
    invoke-interface {p4, p5, p6}, Lorg/mapsforge/core/graphics/GraphicFactory;->createBitmap(II)Lorg/mapsforge/core/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    .line 79
    sget-object v1, Lorg/mapsforge/map/scalebar/MapScaleBar;->DEFAULT_SCALE_BAR_POSITION:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    iput-object v1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    .line 81
    invoke-interface {p4}, Lorg/mapsforge/core/graphics/GraphicFactory;->createCanvas()Lorg/mapsforge/core/graphics/Canvas;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleCanvas:Lorg/mapsforge/core/graphics/Canvas;

    .line 82
    invoke-interface {v1, v0}, Lorg/mapsforge/core/graphics/Canvas;->setBitmap(Lorg/mapsforge/core/graphics/Bitmap;)V

    .line 83
    sget-object v0, Lorg/mapsforge/map/scalebar/MetricUnitAdapter;->INSTANCE:Lorg/mapsforge/map/scalebar/MetricUnitAdapter;

    iput-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->distanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->visible:Z

    .line 85
    iput-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->redrawNeeded:Z

    .line 86
    return-void
.end method

.method private calculatePositionLeft(III)I
    .locals 3
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "width"    # I

    .line 166
    sget-object v0, Lorg/mapsforge/map/scalebar/MapScaleBar$1;->$SwitchMap$org$mapsforge$map$scalebar$MapScaleBar$ScaleBarPosition:[I

    iget-object v1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    invoke-virtual {v1}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 180
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown horizontal position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :pswitch_0
    sub-int v0, p2, p1

    sub-int/2addr v0, p3

    iget v1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginHorizontal:I

    sub-int/2addr v0, v1

    return v0

    .line 173
    :pswitch_1
    sub-int v0, p2, p1

    sub-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 169
    :pswitch_2
    iget v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginHorizontal:I

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private calculatePositionTop(III)I
    .locals 3
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "height"    # I

    .line 184
    sget-object v0, Lorg/mapsforge/map/scalebar/MapScaleBar$1;->$SwitchMap$org$mapsforge$map$scalebar$MapScaleBar$ScaleBarPosition:[I

    iget-object v1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    invoke-virtual {v1}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown vertical position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :pswitch_0
    iget v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginVertical:I

    return v0

    .line 193
    :pswitch_1
    sub-int v0, p2, p1

    sub-int/2addr v0, p3

    iget v1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginVertical:I

    sub-int/2addr v0, v1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected calculateScaleBarLengthAndValue()Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;
    .locals 1

    .line 233
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->distanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/scalebar/MapScaleBar;->calculateScaleBarLengthAndValue(Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;)Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;

    move-result-object v0

    return-object v0
.end method

.method protected calculateScaleBarLengthAndValue(Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;)Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;
    .locals 10
    .param p1, "unitAdapter"    # Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    .line 206
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0}, Lorg/mapsforge/map/model/IMapViewPosition;->getMapPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->prevMapPosition:Lorg/mapsforge/core/model/MapPosition;

    .line 207
    iget-object v0, v0, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v0, v0, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->prevMapPosition:Lorg/mapsforge/core/model/MapPosition;

    iget-byte v2, v2, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    iget-object v3, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 208
    invoke-virtual {v3}, Lorg/mapsforge/map/model/DisplayModel;->getTileSize()I

    move-result v3

    invoke-static {v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->getMapSize(BI)J

    move-result-wide v2

    .line 207
    invoke-static {v0, v1, v2, v3}, Lorg/mapsforge/core/util/MercatorProjection;->calculateGroundResolution(DJ)D

    move-result-wide v0

    .line 210
    .local v0, "groundResolution":D
    invoke-interface {p1}, Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;->getMeterRatio()D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 211
    invoke-interface {p1}, Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;->getScaleBarValues()[I

    move-result-object v2

    .line 213
    .local v2, "scaleBarValues":[I
    const/4 v3, 0x0

    .line 214
    .local v3, "scaleBarLength":I
    const/4 v4, 0x0

    .line 216
    .local v4, "mapScaleValue":I
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget v7, v2, v6

    .line 217
    .local v7, "scaleBarValue":I
    move v4, v7

    .line 218
    int-to-double v8, v4

    div-double/2addr v8, v0

    double-to-int v3, v8

    .line 219
    iget-object v8, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v8}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v8

    add-int/lit8 v8, v8, -0xa

    if-ge v3, v8, :cond_0

    .line 220
    goto :goto_1

    .line 216
    .end local v7    # "scaleBarValue":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 224
    :cond_1
    :goto_1
    new-instance v5, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;

    invoke-direct {v5, v3, v4}, Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarLengthAndValue;-><init>(II)V

    return-object v5
.end method

.method public destroy()V
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Bitmap;->decrementRefCount()V

    .line 93
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleCanvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-interface {v0}, Lorg/mapsforge/core/graphics/Canvas;->destroy()V

    .line 94
    return-void
.end method

.method public draw(Lorg/mapsforge/core/graphics/GraphicContext;)V
    .locals 4
    .param p1, "graphicContext"    # Lorg/mapsforge/core/graphics/GraphicContext;

    .line 242
    iget-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->visible:Z

    if-nez v0, :cond_0

    .line 243
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/MapViewDimension;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v0

    if-nez v0, :cond_1

    .line 247
    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Lorg/mapsforge/map/scalebar/MapScaleBar;->isRedrawNecessary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleCanvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/scalebar/MapScaleBar;->redraw(Lorg/mapsforge/core/graphics/Canvas;)V

    .line 252
    iput-boolean v1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->redrawNeeded:Z

    .line 255
    :cond_2
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    invoke-virtual {v0}, Lorg/mapsforge/map/model/MapViewDimension;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v0

    iget v0, v0, Lorg/mapsforge/core/model/Dimension;->width:I

    iget-object v2, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v2}, Lorg/mapsforge/core/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lorg/mapsforge/map/scalebar/MapScaleBar;->calculatePositionLeft(III)I

    move-result v0

    .line 256
    .local v0, "positionLeft":I
    iget-object v2, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapViewDimension:Lorg/mapsforge/map/model/MapViewDimension;

    invoke-virtual {v2}, Lorg/mapsforge/map/model/MapViewDimension;->getDimension()Lorg/mapsforge/core/model/Dimension;

    move-result-object v2

    iget v2, v2, Lorg/mapsforge/core/model/Dimension;->height:I

    iget-object v3, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {v3}, Lorg/mapsforge/core/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lorg/mapsforge/map/scalebar/MapScaleBar;->calculatePositionTop(III)I

    move-result v1

    .line 258
    .local v1, "positionTop":I
    iget-object v2, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleBitmap:Lorg/mapsforge/core/graphics/Bitmap;

    invoke-interface {p1, v2, v0, v1}, Lorg/mapsforge/core/graphics/GraphicContext;->drawBitmap(Lorg/mapsforge/core/graphics/Bitmap;II)V

    .line 259
    return-void
.end method

.method public drawScaleBar()V
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapScaleCanvas:Lorg/mapsforge/core/graphics/Canvas;

    invoke-virtual {p0, v0}, Lorg/mapsforge/map/scalebar/MapScaleBar;->draw(Lorg/mapsforge/core/graphics/GraphicContext;)V

    .line 266
    return-void
.end method

.method public getDistanceUnitAdapter()Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->distanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    return-object v0
.end method

.method public getMarginHorizontal()I
    .locals 1

    .line 133
    iget v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginHorizontal:I

    return v0
.end method

.method public getMarginVertical()I
    .locals 1

    .line 144
    iget v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginVertical:I

    return v0
.end method

.method public getScaleBarPosition()Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    return-object v0
.end method

.method protected isRedrawNecessary()Z
    .locals 6

    .line 281
    iget-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->redrawNeeded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->prevMapPosition:Lorg/mapsforge/core/model/MapPosition;

    if-nez v0, :cond_0

    goto :goto_1

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->mapViewPosition:Lorg/mapsforge/map/model/IMapViewPosition;

    invoke-interface {v0}, Lorg/mapsforge/map/model/IMapViewPosition;->getMapPosition()Lorg/mapsforge/core/model/MapPosition;

    move-result-object v0

    .line 286
    .local v0, "currentMapPosition":Lorg/mapsforge/core/model/MapPosition;
    iget-byte v2, v0, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    iget-object v3, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->prevMapPosition:Lorg/mapsforge/core/model/MapPosition;

    iget-byte v3, v3, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    if-eq v2, v3, :cond_1

    .line 287
    return v1

    .line 290
    :cond_1
    iget-object v2, v0, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v2, v2, Lorg/mapsforge/core/model/LatLong;->latitude:D

    iget-object v4, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->prevMapPosition:Lorg/mapsforge/core/model/MapPosition;

    iget-object v4, v4, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-wide v4, v4, Lorg/mapsforge/core/model/LatLong;->latitude:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    .line 291
    .local v2, "latitudeDiff":D
    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double v4, v2, v4

    if-lez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 282
    .end local v0    # "currentMapPosition":Lorg/mapsforge/core/model/MapPosition;
    .end local v2    # "latitudeDiff":D
    :cond_3
    :goto_1
    return v1
.end method

.method public isVisible()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->visible:Z

    return v0
.end method

.method protected abstract redraw(Lorg/mapsforge/core/graphics/Canvas;)V
.end method

.method public redrawScaleBar()V
    .locals 1

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->redrawNeeded:Z

    .line 273
    return-void
.end method

.method public setDistanceUnitAdapter(Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;)V
    .locals 2
    .param p1, "distanceUnitAdapter"    # Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    .line 125
    if-eqz p1, :cond_0

    .line 128
    iput-object p1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->distanceUnitAdapter:Lorg/mapsforge/map/scalebar/DistanceUnitAdapter;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->redrawNeeded:Z

    .line 130
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMarginHorizontal(I)V
    .locals 1
    .param p1, "marginHorizontal"    # I

    .line 137
    iget v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginHorizontal:I

    if-eq v0, p1, :cond_0

    .line 138
    iput p1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginHorizontal:I

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->redrawNeeded:Z

    .line 141
    :cond_0
    return-void
.end method

.method public setMarginVertical(I)V
    .locals 1
    .param p1, "marginVertical"    # I

    .line 148
    iget v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginVertical:I

    if-eq v0, p1, :cond_0

    .line 149
    iput p1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->marginVertical:I

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->redrawNeeded:Z

    .line 152
    :cond_0
    return-void
.end method

.method public setScaleBarPosition(Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;)V
    .locals 1
    .param p1, "scaleBarPosition"    # Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    .line 159
    iget-object v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    if-eq v0, p1, :cond_0

    .line 160
    iput-object p1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->scaleBarPosition:Lorg/mapsforge/map/scalebar/MapScaleBar$ScaleBarPosition;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->redrawNeeded:Z

    .line 163
    :cond_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 109
    iput-boolean p1, p0, Lorg/mapsforge/map/scalebar/MapScaleBar;->visible:Z

    .line 110
    return-void
.end method
