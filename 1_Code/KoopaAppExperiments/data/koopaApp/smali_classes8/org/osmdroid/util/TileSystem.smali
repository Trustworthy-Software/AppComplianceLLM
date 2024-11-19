.class public abstract Lorg/osmdroid/util/TileSystem;
.super Ljava/lang/Object;
.source "TileSystem.java"


# static fields
.field public static final EarthRadius:D = 6378137.0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MaxLatitude:D = 85.05112877980659
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MaxLongitude:D = 180.0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MinLatitude:D = -85.05112877980659
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MinLongitude:D = -180.0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static mMaxZoomLevel:I = 0x0

.field private static mTileSize:I = 0x0

.field public static final primaryKeyMaxZoomLevel:I = 0x1d

.field public static final projectionZoomLevel:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const/16 v0, 0x100

    sput v0, Lorg/osmdroid/util/TileSystem;->mTileSize:I

    .line 75
    const/16 v0, 0x1d

    sput v0, Lorg/osmdroid/util/TileSystem;->mMaxZoomLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Clip(DDD)D
    .locals 2
    .param p0, "n"    # D
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D

    .line 292
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static Clip(JJJ)J
    .locals 2
    .param p0, "n"    # J
    .param p2, "minValue"    # J
    .param p4, "maxValue"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 561
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ClipToLong(DDZ)J
    .locals 6
    .param p0, "pValue"    # D
    .param p2, "pMax"    # D
    .param p4, "pWrapEnabled"    # Z

    .line 545
    invoke-static {p0, p1}, Lorg/osmdroid/util/MyMath;->floorToLong(D)J

    move-result-wide v0

    .line 546
    .local v0, "longValue":J
    if-nez p4, :cond_0

    .line 547
    return-wide v0

    .line 549
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 550
    return-wide v2

    .line 552
    :cond_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v2, p2, v2

    invoke-static {v2, v3}, Lorg/osmdroid/util/MyMath;->floorToLong(D)J

    move-result-wide v2

    .line 553
    .local v2, "longMax":J
    long-to-double v4, v0

    cmpl-double v4, v4, p2

    if-ltz v4, :cond_2

    move-wide v4, v2

    goto :goto_0

    :cond_2
    move-wide v4, v0

    :goto_0
    return-wide v4
.end method

.method public static GroundResolution(DD)D
    .locals 8
    .param p0, "latitude"    # D
    .param p2, "zoomLevel"    # D

    .line 137
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    invoke-static {p2, p3}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/osmdroid/util/TileSystem;->GroundResolutionMapSize(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static GroundResolution(DI)D
    .locals 2
    .param p0, "latitude"    # D
    .param p2, "levelOfDetail"    # I

    .line 130
    int-to-double v0, p2

    invoke-static {p0, p1, v0, v1}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static GroundResolutionMapSize(DD)D
    .locals 6
    .param p0, "latitude"    # D
    .param p2, "mapSize"    # D

    .line 146
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide p0

    .line 147
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double v2, p0, v0

    const-wide v4, 0x4066800000000000L    # 180.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-double/2addr v2, v0

    const-wide v0, 0x415854a640000000L    # 6378137.0

    mul-double/2addr v2, v0

    div-double/2addr v2, p2

    return-wide v2
.end method

.method public static MapScale(DII)D
    .locals 4
    .param p0, "latitude"    # D
    .param p2, "levelOfDetail"    # I
    .param p3, "screenDpi"    # I

    .line 152
    invoke-static {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->GroundResolution(DI)D

    move-result-wide v0

    int-to-double v2, p3

    mul-double/2addr v0, v2

    const-wide v2, 0x3f9a027525460aa6L    # 0.0254

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static MapSize(D)D
    .locals 4
    .param p0, "pZoomLevel"    # D

    .line 119
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v0

    int-to-double v0, v0

    invoke-static {p0, p1}, Lorg/osmdroid/util/TileSystem;->getFactor(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static MapSize(I)I
    .locals 2
    .param p0, "levelOfDetail"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    int-to-double v0, p0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public static QuadKeyToTileXY(Ljava/lang/String;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 9
    .param p0, "quadKey"    # Ljava/lang/String;
    .param p1, "reuse"    # Landroid/graphics/Point;

    .line 374
    if-nez p1, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 375
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    const-string v1, "Invalid QuadKey: "

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 378
    const/4 v2, 0x0

    .line 379
    .local v2, "tileX":I
    const/4 v3, 0x0

    .line 380
    .local v3, "tileY":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 381
    .local v4, "zoom":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 382
    const/4 v6, 0x1

    shl-int v7, v6, v5

    .line 383
    .local v7, "value":I
    sub-int v8, v4, v5

    sub-int/2addr v8, v6

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 397
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 393
    :pswitch_0
    add-int/2addr v2, v7

    .line 394
    add-int/2addr v3, v7

    .line 395
    goto :goto_2

    .line 390
    :pswitch_1
    add-int/2addr v3, v7

    .line 391
    goto :goto_2

    .line 387
    :pswitch_2
    add-int/2addr v2, v7

    .line 388
    goto :goto_2

    .line 385
    :pswitch_3
    nop

    .line 381
    .end local v7    # "value":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 400
    .end local v5    # "i":I
    :cond_1
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 401
    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 402
    return-object v0

    .line 376
    .end local v2    # "tileX":I
    .end local v3    # "tileY":I
    .end local v4    # "zoom":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static TileXYToQuadKey(III)Ljava/lang/String;
    .locals 6
    .param p0, "tileX"    # I
    .param p1, "tileY"    # I
    .param p2, "levelOfDetail"    # I

    .line 353
    new-array v0, p2, [C

    .line 354
    .local v0, "quadKey":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 355
    const/16 v2, 0x30

    .line 356
    .local v2, "digit":C
    const/4 v3, 0x1

    shl-int v4, v3, v1

    .line 357
    .local v4, "mask":I
    and-int v5, p0, v4

    if-eqz v5, :cond_0

    .line 358
    add-int/lit8 v5, v2, 0x1

    int-to-char v2, v5

    .line 360
    :cond_0
    and-int v5, p1, v4

    if-eqz v5, :cond_1

    .line 361
    add-int/lit8 v5, v2, 0x1

    int-to-char v2, v5

    .line 362
    add-int/lit8 v5, v2, 0x1

    int-to-char v2, v5

    .line 364
    :cond_1
    sub-int v5, p2, v1

    sub-int/2addr v5, v3

    aput-char v2, v0, v5

    .line 354
    .end local v2    # "digit":C
    .end local v4    # "mask":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "i":I
    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private clipTile(II)I
    .locals 2
    .param p1, "pTile"    # I
    .param p2, "pZoom"    # I

    .line 756
    if-gez p1, :cond_0

    .line 757
    const/4 v0, 0x0

    return v0

    .line 759
    :cond_0
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    .line 760
    .local v0, "max":I
    if-lt p1, v0, :cond_1

    .line 761
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 763
    :cond_1
    return p1
.end method

.method public static getFactor(D)D
    .locals 2
    .param p0, "pZoomLevel"    # D

    .line 126
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getInputTileZoomLevel(D)I
    .locals 1
    .param p0, "pZoomLevel"    # D

    .line 107
    invoke-static {p0, p1}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v0

    return v0
.end method

.method public static getMaximumZoomLevel()I
    .locals 1

    .line 93
    sget v0, Lorg/osmdroid/util/TileSystem;->mMaxZoomLevel:I

    return v0
.end method

.method public static getMercatorFromTile(ID)J
    .locals 2
    .param p0, "pTile"    # I
    .param p1, "pTileSize"    # D

    .line 651
    int-to-double v0, p0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTileFromMercator(JD)I
    .locals 2
    .param p0, "pMercator"    # J
    .param p2, "pTileSize"    # D

    .line 632
    long-to-double v0, p0

    div-double/2addr v0, p2

    invoke-static {v0, v1}, Lorg/osmdroid/util/MyMath;->floorToInt(D)I

    move-result v0

    return v0
.end method

.method public static getTileFromMercator(Lorg/osmdroid/util/RectL;DLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p0, "pMercatorRect"    # Lorg/osmdroid/util/RectL;
    .param p1, "pTileSize"    # D
    .param p3, "pReuse"    # Landroid/graphics/Rect;

    .line 639
    if-nez p3, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 640
    .local v0, "out":Landroid/graphics/Rect;
    :goto_0
    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->left:J

    invoke-static {v1, v2, p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 641
    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->top:J

    invoke-static {v1, v2, p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 642
    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->right:J

    invoke-static {v1, v2, p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 643
    iget-wide v1, p0, Lorg/osmdroid/util/RectL;->bottom:J

    invoke-static {v1, v2, p1, p2}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 644
    return-object v0
.end method

.method public static getTileSize(D)D
    .locals 2
    .param p0, "pZoomLevel"    # D

    .line 100
    invoke-static {p0, p1}, Lorg/osmdroid/util/TileSystem;->getInputTileZoomLevel(D)I

    move-result v0

    int-to-double v0, v0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getTileSize()I
    .locals 1

    .line 85
    sget v0, Lorg/osmdroid/util/TileSystem;->mTileSize:I

    return v0
.end method

.method public static setTileSize(I)V
    .locals 4
    .param p0, "tileSize"    # I

    .line 78
    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 79
    .local v0, "pow2":I
    rsub-int/lit8 v1, v0, 0x3f

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x1d

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lorg/osmdroid/util/TileSystem;->mMaxZoomLevel:I

    .line 81
    sput p0, Lorg/osmdroid/util/TileSystem;->mTileSize:I

    .line 82
    return-void
.end method

.method public static truncateToInt(J)I
    .locals 4
    .param p0, "value"    # J

    .line 574
    const-wide/32 v0, 0x7fffffff

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static wrap(DDDD)D
    .locals 4
    .param p0, "n"    # D
    .param p2, "minValue"    # D
    .param p4, "maxValue"    # D
    .param p6, "interval"    # D

    .line 467
    cmpl-double v0, p2, p4

    if-gtz v0, :cond_3

    .line 471
    sub-double v0, p4, p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    cmpl-double v0, p6, v0

    if-gtz v0, :cond_2

    .line 476
    :goto_0
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    .line 477
    add-double/2addr p0, p6

    goto :goto_0

    .line 479
    :cond_0
    :goto_1
    cmpl-double v0, p0, p4

    if-lez v0, :cond_1

    .line 480
    sub-double/2addr p0, p6

    goto :goto_1

    .line 482
    :cond_1
    return-wide p0

    .line 472
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval must be equal or smaller than maxValue-minValue: min: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " max:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " int:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6, p7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 468
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minValue must be smaller than maxValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public LatLongToPixelXY(DDILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "levelOfDetail"    # I
    .param p6, "reuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    if-nez p6, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p6

    .line 159
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-static {p5}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v1

    .line 160
    .local v1, "size":I
    int-to-double v5, v1

    const/4 v7, 0x1

    move-object v2, p0

    move-wide v3, p3

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 161
    int-to-double v6, v1

    const/4 v8, 0x1

    move-object v3, p0

    move-wide v4, p1

    invoke-virtual/range {v3 .. v8}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 162
    return-object v0
.end method

.method public LatLongToPixelXY(DDDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 16
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "zoomLevel"    # D
    .param p7, "reuse"    # Lorg/osmdroid/util/PointL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 172
    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v6, 0x4066800000000000L    # 180.0

    .line 173
    move-wide/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v9

    const-wide v2, -0x3f99800000000000L    # -180.0

    const-wide v4, 0x4066800000000000L    # 180.0

    const-wide v6, 0x4076800000000000L    # 360.0

    .line 174
    move-wide/from16 v0, p3

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v11

    .line 175
    invoke-static/range {p5 .. p6}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v13

    .line 172
    move-object/from16 v8, p0

    move-object/from16 v15, p7

    invoke-virtual/range {v8 .. v15}, Lorg/osmdroid/util/TileSystem;->LatLongToPixelXYMapSize(DDDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public LatLongToPixelXYMapSize(DDDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 9
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "mapSize"    # D
    .param p7, "reuse"    # Lorg/osmdroid/util/PointL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    const/4 v8, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/util/TileSystem;->getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;

    move-result-object v0

    return-object v0
.end method

.method public PixelXYToLatLong(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "zoomLevel"    # D
    .param p5, "reuse"    # Lorg/osmdroid/util/GeoPoint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    int-to-long v1, p1

    int-to-long v3, p2

    invoke-static {p3, p4}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v5

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v7, p5

    invoke-virtual/range {v0 .. v9}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public PixelXYToLatLong(IIILorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "levelOfDetail"    # I
    .param p4, "reuse"    # Lorg/osmdroid/util/GeoPoint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    int-to-long v1, p1

    int-to-long v3, p2

    invoke-static {p3}, Lorg/osmdroid/util/TileSystem;->MapSize(I)I

    move-result v0

    int-to-double v5, v0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v7, p4

    invoke-virtual/range {v0 .. v9}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public PixelXYToLatLongMapSize(IIDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "mapSize"    # D
    .param p5, "reuse"    # Lorg/osmdroid/util/GeoPoint;
    .param p6, "horizontalWrapEnabled"    # Z
    .param p7, "verticalWrapEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    move v0, p1

    int-to-long v2, v0

    move v11, p2

    int-to-long v4, v11

    move-object v1, p0

    move-wide v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lorg/osmdroid/util/TileSystem;->getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;

    move-result-object v1

    return-object v1
.end method

.method public PixelXYToLatLongMapSizeWithoutWrap(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 13
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "mapSize"    # D
    .param p5, "reuse"    # Lorg/osmdroid/util/GeoPoint;

    .line 278
    if-nez p5, :cond_0

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p5

    .line 279
    .local v0, "out":Lorg/osmdroid/util/GeoPoint;
    :goto_0
    move v1, p1

    int-to-double v2, v1

    div-double v2, v2, p3

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v2, v4

    .line 280
    .local v2, "x":D
    move v6, p2

    int-to-double v7, v6

    div-double v7, v7, p3

    sub-double/2addr v4, v7

    .line 281
    .local v4, "y":D
    neg-double v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double/2addr v7, v9

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    const-wide v11, 0x4076800000000000L    # 360.0

    mul-double/2addr v7, v11

    div-double/2addr v7, v9

    const-wide v9, 0x4056800000000000L    # 90.0

    sub-double/2addr v9, v7

    .line 282
    .local v9, "latitude":D
    mul-double/2addr v11, v2

    .line 283
    .local v11, "longitude":D
    invoke-virtual {v0, v9, v10}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 284
    invoke-virtual {v0, v11, v12}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 285
    return-object v0
.end method

.method public PixelXYToLatLongWithoutWrap(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;
    .locals 8
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "zoomLevel"    # D
    .param p5, "reuse"    # Lorg/osmdroid/util/GeoPoint;

    .line 213
    invoke-static {p3, p4}, Lorg/osmdroid/util/TileSystem;->MapSize(D)D

    move-result-wide v6

    .line 214
    .local v6, "mapSize":D
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, v6

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->PixelXYToLatLongMapSizeWithoutWrap(IIDLorg/osmdroid/util/GeoPoint;)Lorg/osmdroid/util/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public PixelXYToTileXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3
    .param p1, "pPixelX"    # I
    .param p2, "pPixelY"    # I
    .param p3, "pTileSize"    # D
    .param p5, "pReuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    if-nez p5, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p5

    .line 307
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    int-to-long v1, p1

    invoke-static {v1, v2, p3, p4}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 308
    int-to-long v1, p2

    invoke-static {v1, v2, p3, p4}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 309
    return-object v0
.end method

.method public PixelXYToTileXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 7
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 297
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v0

    int-to-double v4, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/TileSystem;->PixelXYToTileXY(IIDLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public PixelXYToTileXY(Landroid/graphics/Rect;DLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "pTileSize"    # D
    .param p4, "pReuse"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    if-nez p4, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 319
    .local v0, "out":Landroid/graphics/Rect;
    :goto_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 320
    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 321
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 322
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-long v1, v1

    invoke-static {v1, v2, p2, p3}, Lorg/osmdroid/util/TileSystem;->getTileFromMercator(JD)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 323
    return-object v0
.end method

.method public TileXYToPixelXY(IILandroid/graphics/Point;)Landroid/graphics/Point;
    .locals 4
    .param p1, "tileX"    # I
    .param p2, "tileY"    # I
    .param p3, "reuse"    # Landroid/graphics/Point;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 328
    if-nez p3, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p3

    .line 329
    .local v0, "out":Landroid/graphics/Point;
    :goto_0
    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v1

    .line 330
    .local v1, "size":I
    int-to-double v2, v1

    invoke-static {p1, v2, v3}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 331
    int-to-double v2, v1

    invoke-static {p2, v2, v3}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/osmdroid/util/TileSystem;->truncateToInt(J)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 332
    return-object v0
.end method

.method public TileXYToPixelXY(IIDLorg/osmdroid/util/PointL;)Lorg/osmdroid/util/PointL;
    .locals 3
    .param p1, "pTileX"    # I
    .param p2, "pTileY"    # I
    .param p3, "pTileSize"    # D
    .param p5, "pReuse"    # Lorg/osmdroid/util/PointL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    if-nez p5, :cond_0

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p5

    .line 342
    .local v0, "out":Lorg/osmdroid/util/PointL;
    :goto_0
    invoke-static {p1, p3, p4}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    .line 343
    invoke-static {p2, p3, p4}, Lorg/osmdroid/util/TileSystem;->getMercatorFromTile(ID)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->y:J

    .line 344
    return-object v0
.end method

.method public cleanLatitude(D)D
    .locals 6
    .param p1, "pLatitude"    # D

    .line 693
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v4

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public cleanLongitude(D)D
    .locals 8
    .param p1, "pLongitude"    # D

    .line 678
    move-wide v0, p1

    .line 680
    .local v0, "result":D
    :goto_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, v0, v2

    const-wide v3, 0x4076800000000000L    # 360.0

    if-gez v2, :cond_0

    .line 681
    add-double/2addr v0, v3

    goto :goto_0

    .line 683
    :cond_0
    :goto_1
    const-wide v5, 0x4066800000000000L    # 180.0

    cmpl-double v2, v0, v5

    if-lez v2, :cond_1

    .line 684
    sub-double/2addr v0, v3

    goto :goto_1

    .line 686
    :cond_1
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v6

    move-wide v2, v0

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v2

    return-wide v2
.end method

.method public getBoundingBoxZoom(Lorg/osmdroid/util/BoundingBox;II)D
    .locals 8
    .param p1, "pBoundingBox"    # Lorg/osmdroid/util/BoundingBox;
    .param p2, "pScreenWidth"    # I
    .param p3, "pScreenHeight"    # I

    .line 411
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v1

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v3

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getLongitudeZoom(DDI)D

    move-result-wide v0

    .line 412
    .local v0, "longitudeZoom":D
    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v3

    invoke-virtual {p1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v5

    move-object v2, p0

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->getLatitudeZoom(DDI)D

    move-result-wide v2

    .line 413
    .local v2, "latitudeZoom":D
    const-wide/16 v4, 0x1

    cmpl-double v6, v0, v4

    if-nez v6, :cond_0

    .line 414
    return-wide v2

    .line 416
    :cond_0
    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    .line 417
    return-wide v0

    .line 419
    :cond_1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    return-wide v4
.end method

.method public getCleanMercator(JDZ)J
    .locals 8
    .param p1, "pMercator"    # J
    .param p3, "pMercatorMapSize"    # D
    .param p5, "wrapEnabled"    # Z

    .line 538
    long-to-double v0, p1

    if-eqz p5, :cond_0

    const-wide/16 v2, 0x0

    move-wide v4, p3

    move-wide v6, p3

    invoke-static/range {v0 .. v7}, Lorg/osmdroid/util/TileSystem;->wrap(DDDD)D

    move-result-wide v0

    :cond_0
    invoke-static {v0, v1, p3, p4, p5}, Lorg/osmdroid/util/TileSystem;->ClipToLong(DDZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoFromMercator(JJDLorg/osmdroid/util/GeoPoint;ZZ)Lorg/osmdroid/util/GeoPoint;
    .locals 9
    .param p1, "pMercatorX"    # J
    .param p3, "pMercatorY"    # J
    .param p5, "pMapSize"    # D
    .param p7, "pReuse"    # Lorg/osmdroid/util/GeoPoint;
    .param p8, "horizontalWrapEnabled"    # Z
    .param p9, "verticalWrapEnabled"    # Z

    .line 591
    move-object v6, p0

    if-nez p7, :cond_0

    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p7

    :goto_0
    move-object v7, v0

    .line 592
    .local v7, "out":Lorg/osmdroid/util/GeoPoint;
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getXY01FromMercator(JDZ)D

    move-result-wide v0

    move/from16 v8, p9

    invoke-virtual {p0, v0, v1, v8}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromY01(DZ)D

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lorg/osmdroid/util/GeoPoint;->setLatitude(D)V

    .line 593
    move-object v0, p0

    move-wide v1, p1

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getXY01FromMercator(JDZ)D

    move-result-wide v0

    move/from16 v2, p8

    invoke-virtual {p0, v0, v1, v2}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromX01(DZ)D

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Lorg/osmdroid/util/GeoPoint;->setLongitude(D)V

    .line 594
    return-object v7
.end method

.method public getLatitudeFromTileY(II)D
    .locals 4
    .param p1, "pY"    # I
    .param p2, "pZoom"    # I

    .line 742
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->clipTile(II)I

    move-result v0

    int-to-double v0, v0

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromY01(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getLatitudeFromY01(D)D
.end method

.method public getLatitudeFromY01(DZ)D
    .locals 8
    .param p1, "pY01"    # D
    .param p3, "wrapEnabled"    # Z

    .line 514
    if-eqz p3, :cond_0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/util/TileSystem;->getLatitudeFromY01(D)D

    move-result-wide v0

    .line 515
    .local v0, "latitude":D
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v6

    move-wide v2, v0

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    return-wide v2
.end method

.method public getLatitudeZoom(DDI)D
    .locals 16
    .param p1, "pNorth"    # D
    .param p3, "pSouth"    # D
    .param p5, "pScreenHeight"    # I

    .line 446
    move-object/from16 v0, p0

    const/4 v1, 0x1

    move-wide/from16 v2, p1

    invoke-virtual {v0, v2, v3, v1}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(DZ)D

    move-result-wide v4

    .line 447
    .local v4, "y01North":D
    move-wide/from16 v6, p3

    invoke-virtual {v0, v6, v7, v1}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(DZ)D

    move-result-wide v8

    .line 448
    .local v8, "y01South":D
    sub-double v10, v8, v4

    .line 449
    .local v10, "span":D
    const-wide/16 v12, 0x0

    cmpg-double v1, v10, v12

    if-gtz v1, :cond_0

    .line 450
    const-wide/16 v12, 0x1

    return-wide v12

    .line 452
    :cond_0
    move/from16 v1, p5

    int-to-double v12, v1

    div-double/2addr v12, v10

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v14

    int-to-double v14, v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    return-wide v12
.end method

.method public getLongitudeFromTileX(II)D
    .locals 4
    .param p1, "pX"    # I
    .param p2, "pZoom"    # I

    .line 749
    invoke-direct {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->clipTile(II)I

    move-result v0

    int-to-double v0, v0

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromX01(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getLongitudeFromX01(D)D
.end method

.method public getLongitudeFromX01(DZ)D
    .locals 8
    .param p1, "pX01"    # D
    .param p3, "wrapEnabled"    # Z

    .line 528
    if-eqz p3, :cond_0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lorg/osmdroid/util/TileSystem;->getLongitudeFromX01(D)D

    move-result-wide v0

    .line 529
    .local v0, "longitude":D
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v6

    move-wide v2, v0

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, v0

    :goto_1
    return-wide v2
.end method

.method public getLongitudeZoom(DDI)D
    .locals 16
    .param p1, "pEast"    # D
    .param p3, "pWest"    # D
    .param p5, "pScreenWidth"    # I

    .line 428
    move-object/from16 v0, p0

    const/4 v1, 0x1

    move-wide/from16 v2, p3

    invoke-virtual {v0, v2, v3, v1}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(DZ)D

    move-result-wide v4

    .line 429
    .local v4, "x01West":D
    move-wide/from16 v6, p1

    invoke-virtual {v0, v6, v7, v1}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(DZ)D

    move-result-wide v8

    .line 430
    .local v8, "x01East":D
    sub-double v10, v8, v4

    .line 431
    .local v10, "span":D
    const-wide/16 v12, 0x0

    cmpg-double v1, v10, v12

    if-gez v1, :cond_0

    .line 432
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    add-double/2addr v10, v14

    .line 434
    :cond_0
    cmpl-double v1, v10, v12

    if-nez v1, :cond_1

    .line 435
    const-wide/16 v12, 0x1

    return-wide v12

    .line 437
    :cond_1
    move/from16 v1, p5

    int-to-double v12, v1

    div-double/2addr v12, v10

    invoke-static {}, Lorg/osmdroid/util/TileSystem;->getTileSize()I

    move-result v14

    int-to-double v14, v14

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    return-wide v12
.end method

.method public abstract getMaxLatitude()D
.end method

.method public abstract getMaxLongitude()D
.end method

.method public getMercatorFromGeo(DDDLorg/osmdroid/util/PointL;Z)Lorg/osmdroid/util/PointL;
    .locals 7
    .param p1, "pLatitude"    # D
    .param p3, "pLongitude"    # D
    .param p5, "pMapSize"    # D
    .param p7, "pReuse"    # Lorg/osmdroid/util/PointL;
    .param p8, "wrapEnabled"    # Z

    .line 581
    if-nez p7, :cond_0

    new-instance v0, Lorg/osmdroid/util/PointL;

    invoke-direct {v0}, Lorg/osmdroid/util/PointL;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p7

    .line 582
    .local v0, "out":Lorg/osmdroid/util/PointL;
    :goto_0
    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    move v6, p8

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/TileSystem;->getMercatorXFromLongitude(DDZ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->x:J

    .line 583
    move-object v1, p0

    move-wide v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/TileSystem;->getMercatorYFromLatitude(DDZ)J

    move-result-wide v1

    iput-wide v1, v0, Lorg/osmdroid/util/PointL;->y:J

    .line 584
    return-object v0
.end method

.method public getMercatorFromXY01(DDZ)J
    .locals 2
    .param p1, "pXY01"    # D
    .param p3, "pMapSize"    # D
    .param p5, "wrapEnabled"    # Z

    .line 503
    mul-double v0, p1, p3

    invoke-static {v0, v1, p3, p4, p5}, Lorg/osmdroid/util/TileSystem;->ClipToLong(DDZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMercatorXFromLongitude(DDZ)J
    .locals 6
    .param p1, "pLongitude"    # D
    .param p3, "pMapSize"    # D
    .param p5, "wrapEnabled"    # Z

    .line 496
    invoke-virtual {p0, p1, p2, p5}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(DZ)D

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorFromXY01(DDZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMercatorYFromLatitude(DDZ)J
    .locals 6
    .param p1, "pLatitude"    # D
    .param p3, "pMapSize"    # D
    .param p5, "wrapEnabled"    # Z

    .line 489
    invoke-virtual {p0, p1, p2, p5}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(DZ)D

    move-result-wide v1

    move-object v0, p0

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->getMercatorFromXY01(DDZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getMinLatitude()D
.end method

.method public abstract getMinLongitude()D
.end method

.method public getRandomLatitude(D)D
    .locals 2
    .param p1, "pRandom01"    # D

    .line 625
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/osmdroid/util/TileSystem;->getRandomLatitude(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRandomLatitude(DD)D
    .locals 2
    .param p1, "pRandom01"    # D
    .param p3, "pMinLatitude"    # D

    .line 617
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v0

    sub-double/2addr v0, p3

    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    return-wide v0
.end method

.method public getRandomLongitude(D)D
    .locals 4
    .param p1, "pRandom01"    # D

    .line 609
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v2

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getTileXFromLongitude(DI)I
    .locals 4
    .param p1, "pLongitude"    # D
    .param p3, "pZoom"    # I

    .line 728
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(D)D

    move-result-wide v0

    const/4 v2, 0x1

    shl-int/2addr v2, p3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, v0, p3}, Lorg/osmdroid/util/TileSystem;->clipTile(II)I

    move-result v0

    return v0
.end method

.method public getTileYFromLatitude(DI)I
    .locals 4
    .param p1, "pLatitude"    # D
    .param p3, "pZoom"    # I

    .line 735
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(D)D

    move-result-wide v0

    const/4 v2, 0x1

    shl-int/2addr v2, p3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, v0, p3}, Lorg/osmdroid/util/TileSystem;->clipTile(II)I

    move-result v0

    return v0
.end method

.method public abstract getX01FromLongitude(D)D
.end method

.method public getX01FromLongitude(DZ)D
    .locals 8
    .param p1, "longitude"    # D
    .param p3, "wrapEnabled"    # Z

    .line 227
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v4

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    move-wide p1, v0

    .line 228
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getX01FromLongitude(D)D

    move-result-wide v6

    .line 229
    .local v6, "result":D
    if-eqz p3, :cond_1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v6

    :goto_1
    return-wide v0
.end method

.method public getXY01FromMercator(JDZ)D
    .locals 8
    .param p1, "pMercator"    # J
    .param p3, "pMapSize"    # D
    .param p5, "wrapEnabled"    # Z

    .line 601
    long-to-double v0, p1

    if-eqz p5, :cond_0

    div-double v2, v0, p3

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    div-double/2addr v0, p3

    :goto_0
    return-wide v0
.end method

.method public abstract getY01FromLatitude(D)D
.end method

.method public getY01FromLatitude(DZ)D
    .locals 8
    .param p1, "latitude"    # D
    .param p3, "wrapEnabled"    # Z

    .line 239
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v4

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    move-wide p1, v0

    .line 240
    invoke-virtual {p0, p1, p2}, Lorg/osmdroid/util/TileSystem;->getY01FromLatitude(D)D

    move-result-wide v6

    .line 241
    .local v6, "result":D
    if-eqz p3, :cond_1

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-wide v0, v6

    invoke-static/range {v0 .. v5}, Lorg/osmdroid/util/TileSystem;->Clip(DDD)D

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v6

    :goto_1
    return-wide v0
.end method

.method public isValidLatitude(D)Z
    .locals 2
    .param p1, "pLatitude"    # D

    .line 707
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidLongitude(D)Z
    .locals 2
    .param p1, "pLongitude"    # D

    .line 700
    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toStringLatitudeSpan()Ljava/lang/String;
    .locals 3

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringLongitudeSpan()Ljava/lang/String;
    .locals 3

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
