.class public abstract Lorg/mapsforge/map/datastore/MapDataStore;
.super Ljava/lang/Object;
.source "MapDataStore.java"


# instance fields
.field protected preferredLanguage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/mapsforge/map/datastore/MapDataStore;-><init>(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/mapsforge/map/datastore/MapDataStore;->preferredLanguage:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "language"    # Ljava/lang/String;

    .line 39
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 43
    :cond_0
    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "langNames":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 48
    :cond_1
    const/4 v2, 0x0

    .line 49
    .local v2, "fallback":Ljava/lang/String;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 50
    aget-object v4, v0, v3

    const-string v5, "\u0008"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 51
    .local v4, "langName":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    .line 52
    goto :goto_1

    .line 56
    :cond_2
    aget-object v5, v4, v1

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 57
    aget-object v1, v4, v6

    return-object v1

    .line 61
    :cond_3
    if-nez v2, :cond_5

    aget-object v5, v4, v1

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 62
    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aget-object v7, v4, v1

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 63
    aget-object v2, v4, v6

    .line 49
    .end local v4    # "langName":[Ljava/lang/String;
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    .end local v3    # "i":I
    :cond_6
    if-eqz v2, :cond_7

    move-object v1, v2

    goto :goto_2

    :cond_7
    aget-object v1, v0, v1

    :goto_2
    return-object v1

    .line 45
    .end local v2    # "fallback":Ljava/lang/String;
    :cond_8
    :goto_3
    aget-object v1, v0, v1

    return-object v1

    .line 40
    .end local v0    # "langNames":[Ljava/lang/String;
    :cond_9
    :goto_4
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public abstract boundingBox()Lorg/mapsforge/core/model/BoundingBox;
.end method

.method public abstract close()V
.end method

.method protected extractLocalized(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MapDataStore;->preferredLanguage:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/mapsforge/map/datastore/MapDataStore;->extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getDataTimestamp(Lorg/mapsforge/core/model/Tile;)J
.end method

.method public readLabels(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 1
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;

    .line 129
    invoke-virtual {p0, p1}, Lorg/mapsforge/map/datastore/MapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v0

    return-object v0
.end method

.method public readLabels(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 143
    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-le v0, v1, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "upperLeft tile must be above and left of lowerRight tile"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 146
    :cond_1
    new-instance v0, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v0}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    .line 147
    .local v0, "result":Lorg/mapsforge/map/datastore/MapReadResult;
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    .local v1, "x":I
    :goto_0
    iget v2, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-gt v1, v2, :cond_3

    .line 148
    iget v2, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    .local v2, "y":I
    :goto_1
    iget v3, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-gt v2, v3, :cond_2

    .line 149
    new-instance v3, Lorg/mapsforge/core/model/Tile;

    iget-byte v4, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v5, p1, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    .line 150
    .local v3, "current":Lorg/mapsforge/core/model/Tile;
    invoke-virtual {p0, v3}, Lorg/mapsforge/map/datastore/MapDataStore;->readLabels(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V

    .line 148
    .end local v3    # "current":Lorg/mapsforge/core/model/Tile;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 147
    .end local v2    # "y":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "x":I
    :cond_3
    return-object v0
.end method

.method public abstract readMapData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
.end method

.method public readMapData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 175
    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-le v0, v1, :cond_1

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "upperLeft tile must be above and left of lowerRight tile"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    :cond_1
    new-instance v0, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v0}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    .line 179
    .local v0, "result":Lorg/mapsforge/map/datastore/MapReadResult;
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    .local v1, "x":I
    :goto_0
    iget v2, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-gt v1, v2, :cond_3

    .line 180
    iget v2, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    .local v2, "y":I
    :goto_1
    iget v3, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-gt v2, v3, :cond_2

    .line 181
    new-instance v3, Lorg/mapsforge/core/model/Tile;

    iget-byte v4, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v5, p1, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    .line 182
    .local v3, "current":Lorg/mapsforge/core/model/Tile;
    invoke-virtual {p0, v3}, Lorg/mapsforge/map/datastore/MapDataStore;->readMapData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V

    .line 180
    .end local v3    # "current":Lorg/mapsforge/core/model/Tile;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v2    # "y":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .end local v1    # "x":I
    :cond_3
    return-object v0
.end method

.method public abstract readPoiData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
.end method

.method public readPoiData(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;
    .locals 6
    .param p1, "upperLeft"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "lowerRight"    # Lorg/mapsforge/core/model/Tile;

    .line 207
    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    iget v1, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-le v0, v1, :cond_1

    .line 208
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "upperLeft tile must be above and left of lowerRight tile"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    :cond_1
    new-instance v0, Lorg/mapsforge/map/datastore/MapReadResult;

    invoke-direct {v0}, Lorg/mapsforge/map/datastore/MapReadResult;-><init>()V

    .line 211
    .local v0, "result":Lorg/mapsforge/map/datastore/MapReadResult;
    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    .local v1, "x":I
    :goto_0
    iget v2, p2, Lorg/mapsforge/core/model/Tile;->tileX:I

    if-gt v1, v2, :cond_3

    .line 212
    iget v2, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    .local v2, "y":I
    :goto_1
    iget v3, p2, Lorg/mapsforge/core/model/Tile;->tileY:I

    if-gt v2, v3, :cond_2

    .line 213
    new-instance v3, Lorg/mapsforge/core/model/Tile;

    iget-byte v4, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v5, p1, Lorg/mapsforge/core/model/Tile;->tileSize:I

    invoke-direct {v3, v1, v2, v4, v5}, Lorg/mapsforge/core/model/Tile;-><init>(IIBI)V

    .line 214
    .local v3, "current":Lorg/mapsforge/core/model/Tile;
    invoke-virtual {p0, v3}, Lorg/mapsforge/map/datastore/MapDataStore;->readPoiData(Lorg/mapsforge/core/model/Tile;)Lorg/mapsforge/map/datastore/MapReadResult;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/mapsforge/map/datastore/MapReadResult;->add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V

    .line 212
    .end local v3    # "current":Lorg/mapsforge/core/model/Tile;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 211
    .end local v2    # "y":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v1    # "x":I
    :cond_3
    return-object v0
.end method

.method public abstract startPosition()Lorg/mapsforge/core/model/LatLong;
.end method

.method public abstract startZoomLevel()Ljava/lang/Byte;
.end method

.method public abstract supportsTile(Lorg/mapsforge/core/model/Tile;)Z
.end method

.method public wayAsLabelTagFilter(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/core/model/Tag;",
            ">;)Z"
        }
    .end annotation

    .line 250
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/core/model/Tag;>;"
    const/4 v0, 0x0

    return v0
.end method
