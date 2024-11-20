.class public Lorg/osmdroid/util/MapTileAreaBorderComputer;
.super Ljava/lang/Object;
.source "MapTileAreaBorderComputer.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileAreaComputer;


# instance fields
.field private final mBorder:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "pBorder"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lorg/osmdroid/util/MapTileAreaBorderComputer;->mBorder:I

    .line 16
    return-void
.end method


# virtual methods
.method public computeFromSource(Lorg/osmdroid/util/MapTileArea;Lorg/osmdroid/util/MapTileArea;)Lorg/osmdroid/util/MapTileArea;
    .locals 10
    .param p1, "pSource"    # Lorg/osmdroid/util/MapTileArea;
    .param p2, "pReuse"    # Lorg/osmdroid/util/MapTileArea;

    .line 24
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/osmdroid/util/MapTileArea;

    invoke-direct {v0}, Lorg/osmdroid/util/MapTileArea;-><init>()V

    .line 25
    .local v0, "out":Lorg/osmdroid/util/MapTileArea;
    :goto_0
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 26
    invoke-virtual {v0}, Lorg/osmdroid/util/MapTileArea;->reset()Lorg/osmdroid/util/MapTileArea;

    .line 27
    return-object v0

    .line 29
    :cond_1
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getLeft()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaBorderComputer;->mBorder:I

    sub-int v7, v1, v2

    .line 30
    .local v7, "left":I
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getTop()I

    move-result v1

    iget v2, p0, Lorg/osmdroid/util/MapTileAreaBorderComputer;->mBorder:I

    sub-int v8, v1, v2

    .line 31
    .local v8, "top":I
    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v9, v2, -0x1

    .line 32
    .local v9, "additional":I
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getZoom()I

    move-result v2

    .line 34
    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getWidth()I

    move-result v1

    add-int/2addr v1, v7

    add-int v5, v1, v9

    invoke-virtual {p1}, Lorg/osmdroid/util/MapTileArea;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    add-int v6, v1, v9

    .line 32
    move-object v1, v0

    move v3, v7

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/MapTileArea;->set(IIIII)Lorg/osmdroid/util/MapTileArea;

    .line 35
    return-object v0
.end method

.method public getBorder()I
    .locals 1

    .line 19
    iget v0, p0, Lorg/osmdroid/util/MapTileAreaBorderComputer;->mBorder:I

    return v0
.end method
