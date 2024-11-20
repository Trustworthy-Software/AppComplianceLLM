.class public Lorg/mapsforge/map/layer/download/DownloadJob;
.super Lorg/mapsforge/map/layer/queue/Job;
.source "DownloadJob.java"


# instance fields
.field public final tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/map/layer/download/tilesource/TileSource;)V
    .locals 1
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "tileSource"    # Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    .line 26
    invoke-interface {p2}, Lorg/mapsforge/map/layer/download/tilesource/TileSource;->hasAlpha()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/mapsforge/map/layer/queue/Job;-><init>(Lorg/mapsforge/core/model/Tile;Z)V

    .line 28
    iput-object p2, p0, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 33
    if-ne p0, p1, :cond_0

    .line 34
    const/4 v0, 0x1

    return v0

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lorg/mapsforge/map/layer/queue/Job;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 36
    return v1

    .line 37
    :cond_1
    instance-of v0, p1, Lorg/mapsforge/map/layer/download/DownloadJob;

    if-nez v0, :cond_2

    .line 38
    return v1

    .line 40
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/mapsforge/map/layer/download/DownloadJob;

    .line 41
    .local v0, "other":Lorg/mapsforge/map/layer/download/DownloadJob;
    iget-object v1, p0, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    iget-object v2, v0, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 46
    const/16 v0, 0x1f

    .line 47
    .local v0, "prime":I
    invoke-super {p0}, Lorg/mapsforge/map/layer/queue/Job;->hashCode()I

    move-result v1

    .line 48
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/layer/download/DownloadJob;->tileSource:Lorg/mapsforge/map/layer/download/tilesource/TileSource;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 49
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method
