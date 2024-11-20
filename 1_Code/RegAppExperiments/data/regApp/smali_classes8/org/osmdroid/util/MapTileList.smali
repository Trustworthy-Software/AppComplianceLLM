.class public Lorg/osmdroid/util/MapTileList;
.super Ljava/lang/Object;
.source "MapTileList.java"

# interfaces
.implements Lorg/osmdroid/util/MapTileContainer;


# instance fields
.field private mSize:I

.field private mTileIndices:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    .line 17
    return-void
.end method

.method public contains(J)Z
    .locals 5
    .param p1, "pTileIndex"    # J

    .line 75
    iget-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 76
    return v1

    .line 78
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    if-ge v0, v2, :cond_2

    .line 79
    iget-object v2, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-nez v2, :cond_1

    .line 80
    const/4 v1, 0x1

    return v1

    .line 78
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public ensureCapacity(I)V
    .locals 4
    .param p1, "pCapacity"    # I

    .line 58
    if-nez p1, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lt v0, p1, :cond_1

    .line 62
    return-void

    .line 64
    :cond_1
    monitor-enter p0

    .line 65
    :try_start_0
    new-array v0, p1, [J

    .line 66
    .local v0, "tmp":[J
    iget-object v1, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    if-eqz v1, :cond_2

    .line 67
    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    :cond_2
    iput-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    .line 70
    .end local v0    # "tmp":[J
    monitor-exit p0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(I)J
    .locals 3
    .param p1, "pIndex"    # I

    .line 24
    iget-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getSize()I
    .locals 1

    .line 20
    iget v0, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    return v0
.end method

.method public put(I)V
    .locals 7
    .param p1, "pZoom"    # I

    .line 53
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    .line 54
    .local v0, "max":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v5, v0, -0x1

    add-int/lit8 v6, v0, -0x1

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/osmdroid/util/MapTileList;->put(IIIII)V

    .line 55
    return-void
.end method

.method public put(IIIII)V
    .locals 9
    .param p1, "pZoom"    # I
    .param p2, "pLeft"    # I
    .param p3, "pTop"    # I
    .param p4, "pRight"    # I
    .param p5, "pBottom"    # I

    .line 36
    const/4 v0, 0x1

    shl-int v1, v0, p1

    .line 37
    .local v1, "max":I
    sub-int v2, p4, p2

    add-int/2addr v2, v0

    const/4 v3, 0x0

    if-ge p4, p2, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    add-int/2addr v2, v4

    .line 38
    .local v2, "spanX":I
    sub-int v4, p5, p3

    add-int/2addr v4, v0

    if-ge p5, p3, :cond_1

    move v3, v1

    :cond_1
    add-int/2addr v4, v3

    .line 39
    .local v4, "spanY":I
    invoke-virtual {p0}, Lorg/osmdroid/util/MapTileList;->getSize()I

    move-result v0

    mul-int v3, v2, v4

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/osmdroid/util/MapTileList;->ensureCapacity(I)V

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 41
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 42
    add-int v5, p2, v0

    rem-int/2addr v5, v1

    .line 43
    .local v5, "x":I
    add-int v6, p3, v3

    rem-int/2addr v6, v1

    .line 44
    .local v6, "y":I
    invoke-static {p1, v5, v6}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Lorg/osmdroid/util/MapTileList;->put(J)V

    .line 41
    .end local v5    # "x":I
    .end local v6    # "y":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 40
    .end local v3    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 47
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public put(J)V
    .locals 3
    .param p1, "pTileIndex"    # J

    .line 28
    iget v0, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/osmdroid/util/MapTileList;->ensureCapacity(I)V

    .line 29
    iget-object v0, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    iget v1, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    aput-wide p1, v0, v1

    .line 30
    return-void
.end method

.method public toArray()[J
    .locals 4

    .line 90
    iget v0, p0, Lorg/osmdroid/util/MapTileList;->mSize:I

    new-array v1, v0, [J

    .line 91
    .local v1, "result":[J
    iget-object v2, p0, Lorg/osmdroid/util/MapTileList;->mTileIndices:[J

    if-eqz v2, :cond_0

    .line 92
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    :cond_0
    return-object v1
.end method
