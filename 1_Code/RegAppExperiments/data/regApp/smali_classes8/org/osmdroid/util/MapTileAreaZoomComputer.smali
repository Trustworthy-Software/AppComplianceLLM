.class public Lorg/osmdroid/util/MapTileAreaZoomComputer;
.super Ljava/lang/Object;
.source "MapTileAreaZoomComputer.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileAreaComputer;


# instance fields
.field private final mZoomDelta:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "pZoomDelta"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    .line 16
    return-void
.end method


# virtual methods
.method public computeFromSource(Lorg/osmdroid/util/MapTileArea;Lorg/osmdroid/util/MapTileArea;)Lorg/osmdroid/util/MapTileArea;
    .locals 9
    .param p1, "pSource"    # Lorg/osmdroid/util/MapTileArea;
    .param p2, "pReuse"    # Lorg/osmdroid/util/MapTileArea;

    .line 20
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {v0}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    .line 21
    .local v0, "out":Lorg/osmdroid/util/MapTileArea;
    :goto_0
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 22
    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    .line 23
    return-object v0

    .line 25
    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getZoom()I

    move-result v7

    .line 26
    .local v7, "sourceZoom":I
    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    add-int v8, v7, v1

    .line 27
    .local v8, "destZoom":I
    if-ltz v8, :cond_4

    sget v1, Lorg/osmdroid/util/MapTileIndex;->mMaxZoomLevel:I

    if-le v8, v1, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    iget v1, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    if-gtz v1, :cond_3

    .line 32
    nop

    .line 33
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getLeft()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v2, v2

    shr-int v3, v1, v2

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v2, v2

    shr-int v4, v1, v2

    .line 34
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getRight()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v2, v2

    shr-int v5, v1, v2

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getBottom()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    neg-int v2, v2

    shr-int v6, v1, v2

    .line 32
    move-object v1, v0

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    .line 35
    return-object v0

    .line 37
    :cond_3
    nop

    .line 38
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getLeft()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int v3, v1, v2

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int v4, v1, v2

    .line 39
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getRight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int/2addr v1, v2

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getBottom()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaZoomComputer;->mZoomDelta:I

    shl-int/2addr v1, v2

    add-int/lit8 v6, v1, -0x1

    .line 37
    move-object v1, v0

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    .line 41
    return-object v0

    .line 28
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    .line 29
    return-object v0
.end method
