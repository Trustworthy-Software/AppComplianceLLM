.class public Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "MapBoxTileSource.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "MAPBOX_ACCESS_TOKEN"

.field private static final MAPBOX_MAPID:Ljava/lang/String; = "MAPBOX_MAPID"

.field private static final mapBoxBaseUrl:[Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private mapBoxMapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-string v0, "https://api.mapbox.com/styles/v1/mapbox/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 36
    const-string v1, "mapbox"

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;

    .line 46
    const-string v1, "mapbox"

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 47
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->retrieveAccessToken(Landroid/content/Context;)V

    .line 48
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->retrieveMapBoxMapId(Landroid/content/Context;)V

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "zoomMinLevel"    # I
    .param p3, "zoomMaxLevel"    # I
    .param p4, "tileSizePixels"    # I
    .param p5, "imageFilenameEnding"    # Ljava/lang/String;

    .line 79
    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "zoomMinLevel"    # I
    .param p3, "zoomMaxLevel"    # I
    .param p4, "tileSizePixels"    # I
    .param p5, "imageFilenameEnding"    # Ljava/lang/String;
    .param p6, "mapBoxMapId"    # Ljava/lang/String;
    .param p7, "mapBoxVersionBaseUrl"    # Ljava/lang/String;

    .line 94
    filled-new-array {p7}, [Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "mapboxid"    # Ljava/lang/String;
    .param p2, "accesstoken"    # Ljava/lang/String;

    .line 61
    const-string v1, "mapbox"

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->accessToken:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mName:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMapBoxMapId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    return-object v0
.end method

.method public getTileURLString(J)Ljava/lang/String;
    .locals 3
    .param p1, "pMapTileIndex"    # J

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "url":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->getMapBoxMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "/tiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v1, "?access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "res":Ljava/lang/String;
    return-object v1
.end method

.method public final retrieveAccessToken(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .line 111
    const-string v0, "MAPBOX_ACCESS_TOKEN"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->accessToken:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public final retrieveMapBoxMapId(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .line 103
    const-string v0, "MAPBOX_MAPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessTokeninput"    # Ljava/lang/String;

    .line 146
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->accessToken:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setMapboxMapid(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 115
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mapbox"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mapBoxMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapBoxTileSource;->mName:Ljava/lang/String;

    .line 117
    return-void
.end method
