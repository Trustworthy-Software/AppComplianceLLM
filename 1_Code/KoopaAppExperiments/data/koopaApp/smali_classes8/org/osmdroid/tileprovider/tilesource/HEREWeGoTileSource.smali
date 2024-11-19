.class public Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "HEREWeGoTileSource.java"


# static fields
.field private static final APPCODE:Ljava/lang/String; = "HEREWEGO_APPCODE"

.field private static final COPYRIGHT:Ljava/lang/String; = "\u00a9 1987 - 2019 HERE. All rights reserved."

.field private static final HEREWEGO_APPID:Ljava/lang/String; = "HEREWEGO_APPID"

.field private static final HEREWEGO_DOMAIN_OVERRIDE:Ljava/lang/String; = "HEREWEGO_OVERRIDE"

.field private static final HEREWEGO_MAPID:Ljava/lang/String; = "HEREWEGO_MAPID"

.field private static final mapBoxBaseUrl:[Ljava/lang/String;


# instance fields
.field private appCode:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private domainOverride:Ljava/lang/String;

.field private herewegoMapId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    const-string v0, "http://3.{domain}/maptile/2.1/maptile/newest/"

    const-string v1, "http://4.{domain}/maptile/2.1/maptile/newest/"

    const-string v2, "http://1.{domain}/maptile/2.1/maptile/newest/"

    const-string v3, "http://2.{domain}/maptile/2.1/maptile/newest/"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 48
    const-string v1, "herewego"

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "\u00a9 1987 - 2019 HERE. All rights reserved."

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "hybrid.day"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    .line 42
    const-string v0, "aerial.maps.cit.api.here.com"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .line 58
    const-string v1, "herewego"

    const/4 v2, 0x1

    const/16 v3, 0x14

    const/16 v4, 0x100

    const-string v5, ".png"

    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "\u00a9 1987 - 2019 HERE. All rights reserved."

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "hybrid.day"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    .line 42
    const-string v0, "aerial.maps.cit.api.here.com"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->retrieveAppId(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->retrieveMapBoxMapId(Landroid/content/Context;)V

    .line 61
    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->retrieveAppCode(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->retrieveDomainOverride(Landroid/content/Context;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "herewego"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mName:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "zoomMinLevel"    # I
    .param p3, "zoomMaxLevel"    # I
    .param p4, "tileSizePixels"    # I
    .param p5, "imageFilenameEnding"    # Ljava/lang/String;

    .line 100
    sget-object v6, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v7, "\u00a9 1987 - 2019 HERE. All rights reserved."

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "hybrid.day"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    .line 42
    const-string v0, "aerial.maps.cit.api.here.com"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "zoomMinLevel"    # I
    .param p3, "zoomMaxLevel"    # I
    .param p4, "tileSizePixels"    # I
    .param p5, "imageFilenameEnding"    # Ljava/lang/String;
    .param p6, "mapBoxMapId"    # Ljava/lang/String;
    .param p7, "mapBoxVersionBaseUrl"    # Ljava/lang/String;

    .line 115
    filled-new-array {p7}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u00a9 1987 - 2017 HERE. All rights reserved."

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "hybrid.day"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    .line 42
    const-string v0, "aerial.maps.cit.api.here.com"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "herewegoMapId"    # Ljava/lang/String;
    .param p2, "accesstoken"    # Ljava/lang/String;
    .param p3, "appCode"    # Ljava/lang/String;

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "herewego"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0x14

    const/16 v5, 0x100

    const-string v6, ".png"

    sget-object v7, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mapBoxBaseUrl:[Ljava/lang/String;

    const-string v8, "\u00a9 1987 - 2019 HERE. All rights reserved."

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v0, "hybrid.day"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    .line 42
    const-string v0, "aerial.maps.cit.api.here.com"

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    .line 84
    iput-object p2, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    .line 86
    iput-object p3, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private retrieveDomainOverride(Landroid/content/Context;)V
    .locals 2
    .param p1, "aContext"    # Landroid/content/Context;

    .line 68
    const-string v0, "HEREWEGO_OVERRIDE"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "temp":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public getAppCode()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getHerewegoMapId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    return-object v0
.end method

.method public getTileURLString(J)Ljava/lang/String;
    .locals 4
    .param p1, "pMapTileIndex"    # J

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "{domain}"

    iget-object v3, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, "url":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getHerewegoMapId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getTileSizePixels()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/png8?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "&app_code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->getAppCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, "&lg=pt-BR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "res":Ljava/lang/String;
    return-object v1
.end method

.method public final retrieveAppCode(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .line 121
    const-string v0, "HEREWEGO_APPCODE"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public final retrieveAppId(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .line 137
    const-string v0, "HEREWEGO_APPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public final retrieveMapBoxMapId(Landroid/content/Context;)V
    .locals 1
    .param p1, "aContext"    # Landroid/content/Context;

    .line 129
    const-string v0, "HEREWEGO_MAPID"

    invoke-static {p1, v0}, Lorg/osmdroid/tileprovider/util/ManifestUtil;->retrieveKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setAppCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "appCode"    # Ljava/lang/String;

    .line 182
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appCode:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessTokeninput"    # Ljava/lang/String;

    .line 174
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->appId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setDomainOverride(Ljava/lang/String;)V
    .locals 0
    .param p1, "hostname"    # Ljava/lang/String;

    .line 74
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->domainOverride:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setHereWeGoMapid(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "herewego"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->herewegoMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/HEREWeGoTileSource;->mName:Ljava/lang/String;

    .line 143
    return-void
.end method
