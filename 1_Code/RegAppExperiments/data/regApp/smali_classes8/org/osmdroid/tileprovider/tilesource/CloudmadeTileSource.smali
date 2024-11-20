.class public Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;
.super Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;
.source "CloudmadeTileSource.java"

# interfaces
.implements Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;",
        "Lorg/osmdroid/tileprovider/tilesource/IStyledTileSource<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mStyle:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pName"    # Ljava/lang/String;
    .param p2, "pZoomMinLevel"    # I
    .param p3, "pZoomMaxLevel"    # I
    .param p4, "pTileSizePixels"    # I
    .param p5, "pImageFilenameEnding"    # Ljava/lang/String;
    .param p6, "pBaseUrl"    # [Ljava/lang/String;

    .line 16
    invoke-direct/range {p0 .. p6}, Lorg/osmdroid/tileprovider/tilesource/OnlineTileSourceBase;-><init>(Ljava/lang/String;IIILjava/lang/String;[Ljava/lang/String;)V

    .line 11
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    .line 18
    return-void
.end method


# virtual methods
.method public getStyle()Ljava/lang/Integer;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    return-object v0
.end method

.method public bridge synthetic getStyle()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->getStyle()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTileURLString(J)Ljava/lang/String;
    .locals 11
    .param p1, "pMapTileIndex"    # J

    .line 31
    invoke-static {}, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->getCloudmadeKey()Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, "key":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "OsmDroid"

    const-string v1, "CloudMade key is not set. You should enter it in the manifest and call CloudmadeUtil.retrieveCloudmadeKey()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_0
    invoke-static {}, Lorg/osmdroid/tileprovider/util/CloudmadeUtil;->getCloudmadeToken()Ljava/lang/String;

    move-result-object v9

    .line 36
    .local v9, "token":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->getBaseUrl()Ljava/lang/String;

    move-result-object v10

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->getTileSizePixels()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getZoom(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 37
    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getX(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1, p2}, Lorg/osmdroid/util/MapTileIndex;->getY(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mImageFilenameEnding:Ljava/lang/String;

    move-object v0, v8

    move-object v7, v9

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 36
    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pathBase()Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 23
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setStyle(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "pStyle"    # Ljava/lang/Integer;

    .line 42
    iput-object p1, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;

    .line 43
    return-void
.end method

.method public bridge synthetic setStyle(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->setStyle(Ljava/lang/Integer;)V

    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 3
    .param p1, "pStyle"    # Ljava/lang/String;

    .line 48
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/tilesource/CloudmadeTileSource;->mStyle:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting integer style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OsmDroid"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    return-void
.end method
