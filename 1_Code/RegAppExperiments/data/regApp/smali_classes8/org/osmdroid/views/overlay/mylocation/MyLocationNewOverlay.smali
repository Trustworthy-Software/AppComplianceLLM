.class public Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "MyLocationNewOverlay.java"

# interfaces
.implements Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;
.implements Lorg/osmdroid/views/overlay/IOverlayMenuProvider;
.implements Lorg/osmdroid/views/overlay/Overlay$Snappable;


# static fields
.field public static final MENU_MY_LOCATION:I


# instance fields
.field protected enableAutoStop:Z

.field protected mCirclePaint:Landroid/graphics/Paint;

.field protected mDirectionArrowBitmap:Landroid/graphics/Bitmap;

.field protected mDirectionArrowCenterX:F

.field protected mDirectionArrowCenterY:F

.field protected mDrawAccuracyEnabled:Z

.field private final mDrawPixel:Landroid/graphics/Point;

.field private final mGeoPoint:Lorg/osmdroid/util/GeoPoint;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerToken:Ljava/lang/Object;

.field protected mIsFollowing:Z

.field private mIsLocationEnabled:Z

.field private mLocation:Landroid/location/Location;

.field private mMapController:Lorg/osmdroid/api/IMapController;

.field protected mMapView:Lorg/osmdroid/views/MapView;

.field public mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

.field private mOptionsMenuEnabled:Z

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPersonBitmap:Landroid/graphics/Bitmap;

.field protected final mPersonHotspot:Landroid/graphics/PointF;

.field private final mRunOnFirstFix:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSnapPixel:Landroid/graphics/Point;

.field private wasEnabledOnPause:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    invoke-static {}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->getSafeMenuId()I

    move-result v0

    sput v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 93
    new-instance v0, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;

    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/osmdroid/views/overlay/mylocation/GpsMyLocationProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;-><init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;Lorg/osmdroid/views/MapView;)V
    .locals 5
    .param p1, "myLocationProvider"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 97
    invoke-direct {p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    .line 70
    new-instance v1, Lorg/osmdroid/util/GeoPoint;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    .line 71
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    .line 72
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    .line 73
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    .line 85
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    .line 87
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->wasEnabledOnPause:Z

    .line 99
    iput-object p2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 100
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getController()Lorg/osmdroid/api/IMapController;

    move-result-object v1

    iput-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    .line 101
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v3, 0x64

    const/16 v4, 0xff

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 102
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 103
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 106
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->person:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setPersonIcon(Landroid/graphics/Bitmap;)V

    .line 107
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lorg/osmdroid/library/R$drawable;->round_navigation_white_48:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionIcon(Landroid/graphics/Bitmap;)V

    .line 110
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    .line 111
    const/high16 v0, 0x3f500000    # 0.8125f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p0, v1, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setPersonAnchor(FF)V

    .line 112
    invoke-virtual {p0, v1, v1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionAnchor(FF)V

    .line 114
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    .line 115
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 116
    return-void
.end method

.method static synthetic access$000(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;

    .line 36
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public disableFollowLocation()V
    .locals 2

    .line 413
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->stopAnimation(Z)V

    .line 415
    :cond_0
    iput-boolean v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    .line 416
    return-void
.end method

.method public disableMyLocation()V
    .locals 1

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    .line 499
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->stopLocationProvider()V

    .line 502
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 505
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 270
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {p0, p1, p2, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;Landroid/location/Location;)V

    .line 273
    :cond_0
    return-void
.end method

.method protected drawMyLocation(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;Landroid/location/Location;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "pj"    # Lorg/osmdroid/views/Projection;
    .param p3, "lastFix"    # Landroid/location/Location;

    .line 223
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    invoke-virtual {p2, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 225
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 227
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 228
    invoke-virtual {p2}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v3

    .line 227
    invoke-static {v1, v2, v3, v4}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide v1

    double-to-float v1, v1

    div-float/2addr v0, v1

    .line 230
    .local v0, "radius":F
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 234
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 235
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 239
    .end local v0    # "radius":F
    :cond_0
    invoke-virtual {p3}, Landroid/location/Location;->hasBearing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 243
    invoke-virtual {p3}, Landroid/location/Location;->getBearing()F

    move-result v0

    .line 244
    .local v0, "mapRotation":F
    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    .line 245
    sub-float/2addr v0, v1

    .line 246
    :cond_1
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 248
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterX:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterY:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 252
    .end local v0    # "mapRotation":F
    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 255
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 258
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 262
    :goto_0
    return-void
.end method

.method public enableFollowLocation()V
    .locals 1

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    .line 396
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    .line 398
    .local v0, "location":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    .line 404
    .end local v0    # "location":Landroid/location/Location;
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 407
    :cond_1
    return-void
.end method

.method public enableMyLocation()Z
    .locals 1

    .line 490
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-virtual {p0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)Z

    move-result v0

    return v0
.end method

.method public enableMyLocation(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)Z
    .locals 2
    .param p1, "myLocationProvider"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .line 461
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V

    .line 463
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v0, p0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->startLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationConsumer;)Z

    move-result v0

    .line 464
    .local v0, "success":Z
    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    .line 467
    if-eqz v0, :cond_0

    .line 468
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v1

    .line 469
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setLocation(Landroid/location/Location;)V

    .line 475
    .end local v1    # "location":Landroid/location/Location;
    :cond_0
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v1, :cond_1

    .line 476
    invoke-virtual {v1}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 479
    :cond_1
    return v0
.end method

.method public getEnableAutoStop()Z
    .locals 1

    .line 299
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    return v0
.end method

.method public getLastFix()Landroid/location/Location;
    .locals 1

    .line 385
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public getMyLocation()Lorg/osmdroid/util/GeoPoint;
    .locals 2

    .line 377
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_0
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-direct {v0, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(Landroid/location/Location;)V

    return-object v0
.end method

.method public getMyLocationProvider()Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    return-object v0
.end method

.method public isDrawAccuracyEnabled()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    return v0
.end method

.method public isFollowLocationEnabled()Z
    .locals 1

    .line 425
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    return v0
.end method

.method public isMyLocationEnabled()Z
    .locals 1

    .line 521
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsLocationEnabled:Z

    return v0
.end method

.method public isOptionsMenuEnabled()Z
    .locals 1

    .line 327
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 333
    sget v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    add-int/2addr v0, p2

    .line 334
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$string;->my_location:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 333
    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 337
    invoke-virtual {p3}, Lorg/osmdroid/views/MapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lorg/osmdroid/library/R$drawable;->ic_menu_mylocation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 336
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    .line 339
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 341
    return v1
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 153
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    .line 161
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    .line 162
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    .line 163
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mCirclePaint:Landroid/graphics/Paint;

    .line 166
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    .line 167
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    .line 168
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    .line 169
    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v1, :cond_0

    .line 170
    invoke-interface {v1}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->destroy()V

    .line 172
    :cond_0
    iput-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .line 173
    invoke-super {p0, p1}, Lorg/osmdroid/views/overlay/Overlay;->onDetach(Lorg/osmdroid/views/MapView;)V

    .line 174
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "source"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .line 431
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 433
    new-instance v1, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;

    invoke-direct {v1, p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay$1;-><init>(Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;Landroid/location/Location;)V

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 447
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pItem"    # Landroid/view/MenuItem;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 354
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sub-int/2addr v0, p2

    .line 355
    .local v0, "menuId":I
    sget v1, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    if-ne v0, v1, :cond_1

    .line 356
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableFollowLocation()V

    .line 358
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    goto :goto_0

    .line 360
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableFollowLocation()V

    .line 361
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    .line 363
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 365
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onPause()V
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->wasEnabledOnPause:Z

    .line 147
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableMyLocation()V

    .line 148
    invoke-super {p0}, Lorg/osmdroid/views/overlay/Overlay;->onPause()V

    .line 149
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;ILorg/osmdroid/views/MapView;)Z
    .locals 2
    .param p1, "pMenu"    # Landroid/view/Menu;
    .param p2, "pMenuIdOffset"    # I
    .param p3, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 347
    sget v0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->MENU_MY_LOCATION:I

    add-int/2addr v0, p2

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 348
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 139
    invoke-super {p0}, Lorg/osmdroid/views/overlay/Overlay;->onResume()V

    .line 140
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->wasEnabledOnPause:Z

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableFollowLocation()V

    .line 142
    :cond_0
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableMyLocation()Z

    .line 143
    return-void
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lorg/osmdroid/api/IMapView;)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "snapPoint"    # Landroid/graphics/Point;
    .param p4, "mapView"    # Lorg/osmdroid/api/IMapView;

    .line 278
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    .line 280
    .local v0, "pj":Lorg/osmdroid/views/Projection;
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    invoke-virtual {v0, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 281
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 282
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 283
    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int v2, p1, v2

    int-to-double v2, v2

    .line 284
    .local v2, "xDiff":D
    iget-object v4, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mSnapPixel:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v4, p2, v4

    int-to-double v4, v4

    .line 285
    .local v4, "yDiff":D
    mul-double v6, v2, v2

    mul-double v8, v4, v4

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4050000000000000L    # 64.0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_0

    const/4 v1, 0x1

    .line 286
    .local v1, "snap":Z
    :cond_0
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v6

    invoke-interface {v6}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "snap="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "OsmDroid"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    return v1

    .line 291
    .end local v0    # "pj":Lorg/osmdroid/views/Projection;
    .end local v1    # "snap":Z
    .end local v2    # "xDiff":D
    .end local v4    # "yDiff":D
    :cond_2
    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 307
    .local v0, "isSingleFingerDrag":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    if-eqz v1, :cond_1

    .line 308
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->disableFollowLocation()V

    goto :goto_1

    .line 309
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isFollowLocationEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    return v2

    .line 313
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/osmdroid/views/overlay/Overlay;->onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z

    move-result v1

    return v1
.end method

.method public runOnFirstFix(Ljava/lang/Runnable;)Z
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 530
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 531
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 532
    .local v0, "t":Ljava/lang/Thread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#runOnFirstFix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 534
    const/4 v1, 0x1

    return v1

    .line 536
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mRunOnFirstFix:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public setDirectionAnchor(FF)V
    .locals 1
    .param p1, "pHorizontal"    # F
    .param p2, "pVertical"    # F

    .line 564
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterX:F

    .line 565
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iput v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowCenterY:F

    .line 566
    return-void
.end method

.method public setDirectionArrow(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "personBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "directionArrowBitmap"    # Landroid/graphics/Bitmap;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 125
    invoke-virtual {p0, p1}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setPersonIcon(Landroid/graphics/Bitmap;)V

    .line 126
    invoke-virtual {p0, p2}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionIcon(Landroid/graphics/Bitmap;)V

    .line 127
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0, v0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->setDirectionAnchor(FF)V

    .line 128
    return-void
.end method

.method public setDirectionIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "pDirectionArrowBitmap"    # Landroid/graphics/Bitmap;

    .line 134
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDirectionArrowBitmap:Landroid/graphics/Bitmap;

    .line 135
    return-void
.end method

.method public setDrawAccuracyEnabled(Z)V
    .locals 0
    .param p1, "drawAccuracyEnabled"    # Z

    .line 187
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mDrawAccuracyEnabled:Z

    .line 188
    return-void
.end method

.method public setEnableAutoStop(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 296
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->enableAutoStop:Z

    .line 297
    return-void
.end method

.method protected setLocation(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .line 450
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    .line 451
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;->setCoords(DD)V

    .line 452
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mIsFollowing:Z

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapController:Lorg/osmdroid/api/IMapController;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mGeoPoint:Lorg/osmdroid/util/GeoPoint;

    invoke-interface {v0, v1}, Lorg/osmdroid/api/IMapController;->animateTo(Lorg/osmdroid/api/IGeoPoint;)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMapView:Lorg/osmdroid/views/MapView;

    if-eqz v0, :cond_1

    .line 455
    invoke-virtual {v0}, Lorg/osmdroid/views/MapView;->postInvalidate()V

    .line 457
    :cond_1
    :goto_0
    return-void
.end method

.method protected setMyLocationProvider(Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;)V
    .locals 2
    .param p1, "myLocationProvider"    # Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .line 204
    if-eqz p1, :cond_1

    .line 208
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->isMyLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->stopLocationProvider()V

    .line 211
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    .line 212
    return-void

    .line 205
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must pass an IMyLocationProvider to setMyLocationProvider()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOptionsMenuEnabled(Z)V
    .locals 0
    .param p1, "pOptionsMenuEnabled"    # Z

    .line 322
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mOptionsMenuEnabled:Z

    .line 323
    return-void
.end method

.method public setPersonAnchor(FF)V
    .locals 3
    .param p1, "pHorizontal"    # F
    .param p2, "pVertical"    # F

    .line 555
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget-object v2, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 556
    return-void
.end method

.method public setPersonHotspot(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonHotspot:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 220
    return-void
.end method

.method public setPersonIcon(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .line 546
    iput-object p1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mPersonBitmap:Landroid/graphics/Bitmap;

    .line 547
    return-void
.end method

.method protected stopLocationProvider()V
    .locals 2

    .line 508
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mMyLocationProvider:Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;

    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0}, Lorg/osmdroid/views/overlay/mylocation/IMyLocationProvider;->stopLocationProvider()V

    .line 511
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/osmdroid/views/overlay/mylocation/MyLocationNewOverlay;->mHandlerToken:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 513
    :cond_1
    return-void
.end method
