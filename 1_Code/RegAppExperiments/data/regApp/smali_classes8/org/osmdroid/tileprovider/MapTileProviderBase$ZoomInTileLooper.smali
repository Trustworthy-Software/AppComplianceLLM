.class Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomInTileLooper"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method private constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    .line 431
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "x1"    # Lorg/osmdroid/tileprovider/MapTileProviderBase$1;

    .line 431
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method


# virtual methods
.method public computeTile(JII)V
    .locals 6
    .param p1, "pMapTileIndex"    # J
    .param p3, "pX"    # I
    .param p4, "pY"    # I

    .line 437
    iget v0, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mOldTileZoomLevel:I

    .line 438
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v1

    iget v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shr-int/2addr v1, v2

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v2

    iget v3, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    shr-int/2addr v2, v3

    .line 437
    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v0

    .line 439
    .local v0, "oldTile":J
    iget-object v2, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v2, v2, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v2, v0, v1}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 441
    .local v2, "oldDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v3, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 442
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    iget v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mDiff:I

    invoke-static {v3, p1, p2, v4}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->approximateTileFromLowerZoom(Landroid/graphics/drawable/BitmapDrawable;JI)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 444
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 445
    iget-object v4, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomInTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .end local v3    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method
