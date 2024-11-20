.class public Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "MapQuestTileSource.java"


# static fields
.field private static final ACCESS_TOKEN:Ljava/lang/String; = "MAPQUEST_ACCESS_TOKEN"

.field private static final MAPBOX_MAPID:Ljava/lang/String; = "MAPQUEST_MAPID"

.field private static final mapBoxBaseUrl:[Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private mapBoxMapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "http://api.tiles.mapbox.com/v4/"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .line 37
    const-string v1, "MapQuest"

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "MapQuest"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "mapquest.streets-mb"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->retrieveAccessToken(Landroid/content/Context;)V

    .line 39
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->retrieveMapBoxMapId(Landroid/content/Context;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapQuest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mName:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "zoomMinLevel"    # I
    .param p3, "zoomMaxLevel"    # I
    .param p4, "tileSizePixels"    # I
    .param p5, "imageFilenameEnding"    # Ljava/lang/String;

    .line 67
    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "MapQuest"

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "mapquest.streets-mb"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "zoomMinLevel"    # I
    .param p3, "zoomMaxLevel"    # I
    .param p4, "tileSizePixels"    # I
    .param p5, "imageFilenameEnding"    # Ljava/lang/String;
    .param p6, "mapBoxMapId"    # Ljava/lang/String;
    .param p7, "mapBoxVersionBaseUrl"    # Ljava/lang/String;

    .line 82
    move-object v8, p0

    move-object/from16 v9, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array/range {p7 .. p7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "MapQuest"

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "mapquest.streets-mb"

    iput-object v0, v8, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 84
    iput-object v9, v8, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "mapboxid"    # Ljava/lang/String;
    .param p2, "accesstoken"    # Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapQuest"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x13

    const/16 v5, 0x100

    const-string v6, ".png"

    sget-object v7, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v8, "MapQuest"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string v0, "mapquest.streets-mb"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->accessToken:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getMapBoxMapId()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    return-object v0
.end method

.method public getTileURLString(J)Ljava/lang/String;
    .locals 3
    .param p1, "pMapTileIndex"    # J

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, "url":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->getMapBoxMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "?access_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, "res":Ljava/lang/String;
    return-object v1
.end method

.method public final retrieveAccessToken(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .line 103
    const-string v0, "MAPQUEST_ACCESS_TOKEN"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->accessToken:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public final retrieveMapBoxMapId(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .line 93
    const-string v0, "MAPQUEST_MAPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 95
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 96
    :cond_0
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessTokeninput"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->accessToken:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setMapboxMapid(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/MapQuestTileSource;->mapBoxMapId:Ljava/lang/String;

    .line 108
    return-void
.end method
