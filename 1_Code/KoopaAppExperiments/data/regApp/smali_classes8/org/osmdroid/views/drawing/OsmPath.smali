.class public Lorg/osmdroid/views/drawing/OsmPath;
.super Landroid/graphics/Path;
.source "OsmPath.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;


# instance fields
.field private mLastZoomLevel:D

.field protected final mReferencePoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/osmdroid/util/GeoPoint;-><init>(II)V

    sput-object v0, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    .line 27
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:D

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Path;

    .line 34
    invoke-direct {p0, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    .line 27
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:D

    .line 35
    return-void
.end method


# virtual methods
.method public onDrawCycle(Lorg/osmdroid/views/Projection;)V
    .locals 6
    .param p1, "proj"    # Lorg/osmdroid/views/Projection;

    .line 41
    iget-wide v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:D

    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 43
    invoke-virtual {p1}, Lorg/osmdroid/views/Projection;->getZoomLevel()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mLastZoomLevel:D

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 46
    .local v0, "x":I
    iget-object v1, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 47
    .local v1, "y":I
    sget-object v2, Lorg/osmdroid/views/drawing/OsmPath;->sReferenceGeoPoint:Lorg/osmdroid/util/GeoPoint;

    iget-object v3, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    invoke-virtual {p1, v2, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 48
    iget-object v2, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    .line 49
    .local v2, "deltaX":I
    iget-object v3, p0, Lorg/osmdroid/views/drawing/OsmPath;->mReferencePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    .line 51
    .local v3, "deltaY":I
    int-to-float v4, v2

    int-to-float v5, v3

    invoke-virtual {p0, v4, v5}, Lorg/osmdroid/views/drawing/OsmPath;->offset(FF)V

    .line 52
    return-void
.end method
