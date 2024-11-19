.class public Lorg/mapsforge/map/layer/download/tilesource/OpenStreetMapMapnik;
.super Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;
.source "OpenStreetMapMapnik.java"


# static fields
.field public static final INSTANCE:Lorg/mapsforge/map/layer/download/tilesource/OpenStreetMapMapnik;

.field private static final PARALLEL_REQUESTS_LIMIT:I = 0x8

.field private static final PROTOCOL:Ljava/lang/String; = "https"

.field private static final ZOOM_LEVEL_MAX:I = 0x12

.field private static final ZOOM_LEVEL_MIN:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lorg/mapsforge/map/layer/download/tilesource/OpenStreetMapMapnik;

    const-string v1, "b.tile.openstreetmap.org"

    const-string v2, "c.tile.openstreetmap.org"

    const-string v3, "a.tile.openstreetmap.org"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1bb

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/layer/download/tilesource/OpenStreetMapMapnik;-><init>([Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/map/layer/download/tilesource/OpenStreetMapMapnik;->INSTANCE:Lorg/mapsforge/map/layer/download/tilesource/OpenStreetMapMapnik;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 2
    .param p1, "hostNames"    # [Ljava/lang/String;
    .param p2, "port"    # I

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/layer/download/tilesource/AbstractTileSource;-><init>([Ljava/lang/String;I)V

    .line 44
    const-wide/32 v0, 0x7e53d8

    iput-wide v0, p0, Lorg/mapsforge/map/layer/download/tilesource/OpenStreetMapMapnik;->defaultTimeToLive:J

    .line 45
    return-void
.end method


# virtual methods
.method public getParallelRequestsLimit()I
    .locals 1

    .line 49
    const/16 v0, 0x8

    return v0
.end method

.method public getTileUrl(Lorg/mapsforge/core/model/Tile;)Ljava/net/URL;
    .locals 6
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lorg/mapsforge/map/layer/download/tilesource/OpenStreetMapMapnik;->getHostName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lorg/mapsforge/map/layer/download/tilesource/OpenStreetMapMapnik;->port:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-direct {v0, v4, v1, v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public getZoomLevelMax()B
    .locals 1

    .line 60
    const/16 v0, 0x12

    return v0
.end method

.method public getZoomLevelMin()B
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public hasAlpha()Z
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method
