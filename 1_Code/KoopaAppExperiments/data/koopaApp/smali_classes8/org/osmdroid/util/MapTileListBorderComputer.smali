.class public Lorg/osmdroid/util/MapTileListBorderComputer;
.super Ljava/lang/Object;
.source "MapTileListBorderComputer.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileListComputer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final mBorder:I

.field private final mIncludeAll:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "pBorder"    # I
    .param p2, "pIncludeAll"    # Z

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p1, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    .line 19
    iput-boolean p2, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mIncludeAll:Z

    .line 20
    return-void
.end method


# virtual methods
.method public computeFromSource(Lorg/osmdroid/util/MapTileList;Lorg/osmdroid/util/MapTileList;)Lorg/osmdroid/util/MapTileList;
    .locals 17
    .param p1, "pSource"    # Lorg/osmdroid/util/MapTileList;
    .param p2, "pReuse"    # Lorg/osmdroid/util/MapTileList;

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz p2, :cond_0

    move-object/from16 v2, p2

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/osmdroid/util/MapTileList;

    invoke-direct {v2}, Lorg/osmdroid/util/MapTileList;-><init>()V

    .line 33
    .local v2, "out":Lorg/osmdroid/util/MapTileList;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/util/MapTileList;->getSize()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 34
    invoke-virtual {v1, v3}, Lorg/osmdroid/util/MapTileList;->get(I)J

    move-result-wide v4

    .line 35
    .local v4, "sourceIndex":J
    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v6

    .line 36
    .local v6, "zoom":I
    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v7

    .line 37
    .local v7, "sourceX":I
    invoke-static {v4, v5}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v8

    .line 38
    .local v8, "sourceY":I
    const/4 v9, 0x1

    shl-int/2addr v9, v6

    .line 39
    .local v9, "power":I
    iget v10, v0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    neg-int v10, v10

    .local v10, "j":I
    :goto_2
    iget v11, v0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    if-gt v10, v11, :cond_8

    .line 40
    neg-int v11, v11

    .local v11, "k":I
    :goto_3
    iget v12, v0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    if-gt v11, v12, :cond_7

    .line 41
    add-int v12, v7, v10

    .line 42
    .local v12, "destX":I
    add-int v13, v8, v11

    .line 43
    .local v13, "destY":I
    :goto_4
    if-gez v12, :cond_1

    .line 44
    add-int/2addr v12, v9

    goto :goto_4

    .line 46
    :cond_1
    :goto_5
    if-gez v13, :cond_2

    .line 47
    add-int/2addr v13, v9

    goto :goto_5

    .line 49
    :cond_2
    :goto_6
    if-lt v12, v9, :cond_3

    .line 50
    sub-int/2addr v12, v9

    goto :goto_6

    .line 52
    :cond_3
    :goto_7
    if-lt v13, v9, :cond_4

    .line 53
    sub-int/2addr v13, v9

    goto :goto_7

    .line 55
    :cond_4
    invoke-static {v6, v12, v13}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v14

    .line 56
    .local v14, "index":J
    invoke-virtual {v2, v14, v15}, Lorg/osmdroid/util/MapTileList;->contains(J)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 57
    goto :goto_8

    .line 59
    :cond_5
    invoke-virtual {v1, v14, v15}, Lorg/osmdroid/util/MapTileList;->contains(J)Z

    move-result v16

    if-eqz v16, :cond_6

    iget-boolean v1, v0, Lorg/osmdroid/util/MapTileListBorderComputer;->mIncludeAll:Z

    if-nez v1, :cond_6

    .line 60
    goto :goto_8

    .line 62
    :cond_6
    invoke-virtual {v2, v14, v15}, Lorg/osmdroid/util/MapTileList;->put(J)V

    .line 40
    .end local v12    # "destX":I
    .end local v13    # "destY":I
    .end local v14    # "index":J
    :goto_8
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_3

    .line 39
    .end local v11    # "k":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    .line 33
    .end local v4    # "sourceIndex":J
    .end local v6    # "zoom":I
    .end local v7    # "sourceX":I
    .end local v8    # "sourceY":I
    .end local v9    # "power":I
    .end local v10    # "j":I
    :cond_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    .line 66
    .end local v3    # "i":I
    :cond_9
    return-object v2
.end method

.method public getBorder()I
    .locals 1

    .line 23
    iget v0, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mBorder:I

    return v0
.end method

.method public isIncludeAll()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lorg/osmdroid/util/MapTileListBorderComputer;->mIncludeAll:Z

    return v0
.end method
