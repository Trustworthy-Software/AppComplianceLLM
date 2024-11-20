.class Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;
.super Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;
.source "MapTileProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/MapTileProviderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomOutTileLooper"
.end annotation


# static fields
.field private static final MAX_ZOOM_OUT_DIFF:I = 0x4


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;


# direct methods
.method private constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V
    .locals 1

    .line 451
    iput-object p1, p0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ScaleTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;Lorg/osmdroid/tileprovider/MapTileProviderBase$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/osmdroid/tileprovider/MapTileProviderBase;
    .param p2, "x1"    # Lorg/osmdroid/tileprovider/MapTileProviderBase$1;

    .line 451
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;-><init>(Lorg/osmdroid/tileprovider/MapTileProviderBase;)V

    return-void
.end method


# virtual methods
.method protected computeTile(JII)V
    .locals 18
    .param p1, "pMapTileIndex"    # J
    .param p3, "pX"    # I
    .param p4, "pY"    # I

    .line 457
    move-object/from16 v0, p0

    iget v1, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 458
    return-void

    .line 462
    :cond_0
    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v1

    iget v2, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int/2addr v1, v2

    .line 463
    .local v1, "xx":I
    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v2

    iget v3, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    shl-int/2addr v2, v3

    .line 464
    .local v2, "yy":I
    iget v3, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDiff:I

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 465
    .local v3, "numTiles":I
    const/4 v4, 0x0

    .line 466
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 467
    .local v5, "canvas":Landroid/graphics/Canvas;
    const/4 v6, 0x0

    .local v6, "x":I
    :goto_0
    if-ge v6, v3, :cond_5

    .line 468
    const/4 v7, 0x0

    .local v7, "y":I
    :goto_1
    if-ge v7, v3, :cond_4

    .line 469
    iget v8, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mOldTileZoomLevel:I

    add-int v9, v1, v6

    add-int v10, v2, v7

    invoke-static {v8, v9, v10}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v8

    .line 470
    .local v8, "oldTile":J
    iget-object v10, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->this$0:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    iget-object v10, v10, Lorg/osmdroid/tileprovider/MapTileProviderBase;->mTileCache:Lorg/osmdroid/tileprovider/MapTileCache;

    invoke-virtual {v10, v8, v9}, Lorg/osmdroid/tileprovider/MapTileCache;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 471
    .local v10, "oldDrawable":Landroid/graphics/drawable/Drawable;
    instance-of v11, v10, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v11, :cond_3

    .line 472
    move-object v11, v10

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 473
    .local v11, "oldBitmap":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_2

    .line 474
    if-nez v4, :cond_1

    .line 475
    iget v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize:I

    invoke-static {v12}, Lorg/osmdroid/tileprovider/modules/MapTileApproximater;->getTileBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 476
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v5, v12

    .line 477
    invoke-static {}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->access$300()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 479
    :cond_1
    iget-object v12, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDestRect:Landroid/graphics/Rect;

    iget v13, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v13, v6

    iget v14, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v14, v7

    add-int/lit8 v15, v6, 0x1

    move/from16 v16, v1

    .end local v1    # "xx":I
    .local v16, "xx":I
    iget v1, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v15, v1

    add-int/lit8 v1, v7, 0x1

    move/from16 v17, v2

    .end local v2    # "yy":I
    .local v17, "yy":I
    iget v2, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mTileSize_2:I

    mul-int/2addr v1, v2

    invoke-virtual {v12, v13, v14, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 482
    iget-object v1, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mDestRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v5, v11, v2, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 473
    .end local v16    # "xx":I
    .end local v17    # "yy":I
    .restart local v1    # "xx":I
    .restart local v2    # "yy":I
    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    .end local v1    # "xx":I
    .end local v2    # "yy":I
    .restart local v16    # "xx":I
    .restart local v17    # "yy":I
    goto :goto_2

    .line 471
    .end local v11    # "oldBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "xx":I
    .end local v17    # "yy":I
    .restart local v1    # "xx":I
    .restart local v2    # "yy":I
    :cond_3
    move/from16 v16, v1

    move/from16 v17, v2

    .line 468
    .end local v1    # "xx":I
    .end local v2    # "yy":I
    .end local v8    # "oldTile":J
    .end local v10    # "oldDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v16    # "xx":I
    .restart local v17    # "yy":I
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    goto :goto_1

    .end local v16    # "xx":I
    .end local v17    # "yy":I
    .restart local v1    # "xx":I
    .restart local v2    # "yy":I
    :cond_4
    move/from16 v16, v1

    move/from16 v17, v2

    .line 467
    .end local v1    # "xx":I
    .end local v2    # "yy":I
    .end local v7    # "y":I
    .restart local v16    # "xx":I
    .restart local v17    # "yy":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v16    # "xx":I
    .end local v17    # "yy":I
    .restart local v1    # "xx":I
    .restart local v2    # "yy":I
    :cond_5
    move/from16 v16, v1

    move/from16 v17, v2

    .line 488
    .end local v1    # "xx":I
    .end local v2    # "yy":I
    .end local v6    # "x":I
    .restart local v16    # "xx":I
    .restart local v17    # "yy":I
    if-eqz v4, :cond_6

    .line 489
    iget-object v1, v0, Lorg/osmdroid/tileprovider/MapTileProviderBase$ZoomOutTileLooper;->mNewTiles:Ljava/util/HashMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    :cond_6
    return-void
.end method
