.class public Lorg/osmdroid/util/MapTileListZoomComputer;
.super Ljava/lang/Object;
.source "MapTileListZoomComputer.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileListComputer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mZoomDelta:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "pZoomDelta"    # I

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lorg/osmdroid/util/MapTileListZoomComputer;->mZoomDelta:I

    .line 18
    return-void
.end method


# virtual methods
.method public computeFromSource(Lorg/osmdroid/util/MapTileList;Lorg/osmdroid/util/MapTileList;)Lorg/osmdroid/util/MapTileList;
    .locals 18
    .param p1, "pSource"    # Lorg/osmdroid/util/MapTileList;
    .param p2, "pReuse"    # Lorg/osmdroid/util/MapTileList;

    .line 26
    move-object/from16 v0, p0

    if-eqz p2, :cond_0

    move-object/from16 v1, p2

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/osmdroid/util/MapTileList;

    invoke-direct {v1}, Lorg/osmdroid/util/MapTileList;-><init>()V

    .line 27
    .local v1, "out":Lorg/osmdroid/util/MapTileList;
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/MapTileList;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 28
    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Lorg/osmdroid/util/MapTileList;->get(I)J

    move-result-wide v4

    .line 29
    .local v4, "sourceIndex":J
    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v6

    .line 30
    .local v6, "sourceZoom":I
    iget v7, v0, Lorg/osmdroid/util/MapTileListZoomComputer;->mZoomDelta:I

    add-int/2addr v7, v6

    .line 31
    .local v7, "destZoom":I
    if-ltz v7, :cond_5

    sget v8, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    if-le v7, v8, :cond_1

    .line 32
    goto :goto_4

    .line 34
    :cond_1
    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v8

    .line 35
    .local v8, "sourceX":I
    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v9

    .line 36
    .local v9, "sourceY":I
    iget v10, v0, Lorg/osmdroid/util/MapTileListZoomComputer;->mZoomDelta:I

    if-gtz v10, :cond_2

    .line 37
    neg-int v11, v10

    shr-int v11, v8, v11

    neg-int v10, v10

    shr-int v10, v9, v10

    invoke-static {v7, v11, v10}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lorg/osmdroid/util/MapTileList;->put(J)V

    .line 38
    goto :goto_4

    .line 40
    :cond_2
    const/4 v11, 0x1

    shl-int/2addr v11, v10

    .line 41
    .local v11, "power":I
    shl-int v12, v8, v10

    .line 42
    .local v12, "destX":I
    shl-int v10, v9, v10

    .line 43
    .local v10, "destY":I
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    if-ge v13, v11, :cond_4

    .line 44
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_3
    if-ge v14, v11, :cond_3

    .line 45
    add-int v15, v12, v13

    add-int v0, v10, v14

    move-wide/from16 v16, v4

    .end local v4    # "sourceIndex":J
    .local v16, "sourceIndex":J
    invoke-static {v7, v15, v0}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lorg/osmdroid/util/MapTileList;->put(J)V

    .line 44
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v4, v16

    goto :goto_3

    .end local v16    # "sourceIndex":J
    .restart local v4    # "sourceIndex":J
    :cond_3
    move-wide/from16 v16, v4

    .line 43
    .end local v4    # "sourceIndex":J
    .end local v14    # "k":I
    .restart local v16    # "sourceIndex":J
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    goto :goto_2

    .end local v16    # "sourceIndex":J
    .restart local v4    # "sourceIndex":J
    :cond_4
    move-wide/from16 v16, v4

    .end local v4    # "sourceIndex":J
    .restart local v16    # "sourceIndex":J
    goto :goto_4

    .line 31
    .end local v8    # "sourceX":I
    .end local v9    # "sourceY":I
    .end local v10    # "destY":I
    .end local v11    # "power":I
    .end local v12    # "destX":I
    .end local v13    # "j":I
    .end local v16    # "sourceIndex":J
    .restart local v4    # "sourceIndex":J
    :cond_5
    move-wide/from16 v16, v4

    .line 27
    .end local v4    # "sourceIndex":J
    .end local v6    # "sourceZoom":I
    .end local v7    # "destZoom":I
    :goto_4
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    .line 49
    .end local v2    # "i":I
    :cond_6
    return-object v1
.end method

.method public getZoomDelta()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/osmdroid/util/MapTileListZoomComputer;->mZoomDelta:I

    return v0
.end method
