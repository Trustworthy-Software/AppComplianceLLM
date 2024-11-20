.class public Lorg/mapsforge/core/model/MapPosition;
.super Ljava/lang/Object;
.source "MapPosition.java"


# instance fields
.field public final latLong:Lorg/mapsforge/core/model/LatLong;

.field public final zoomLevel:B


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/model/LatLong;B)V
    .locals 3
    .param p1, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p2, "zoomLevel"    # B

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-eqz p1, :cond_1

    .line 40
    if-ltz p2, :cond_0

    .line 43
    iput-object p1, p0, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    .line 44
    iput-byte p2, p0, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    .line 45
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zoomLevel must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "latLong must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 49
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 50
    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/core/model/MapPosition;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 52
    return v2

    .line 54
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/core/model/MapPosition;

    .line 55
    .local v1, "other":Lorg/mapsforge/core/model/MapPosition;
    iget-object v3, p0, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    iget-object v4, v1, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/model/LatLong;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 56
    return v2

    .line 57
    :cond_2
    iget-byte v3, p0, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    iget-byte v4, v1, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    if-eq v3, v4, :cond_3

    .line 58
    return v2

    .line 60
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 65
    const/16 v0, 0x1f

    .line 66
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 67
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {v3}, Lorg/mapsforge/core/model/LatLong;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 68
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-byte v3, p0, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    add-int/2addr v1, v3

    .line 69
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "latLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v1, p0, Lorg/mapsforge/core/model/MapPosition;->latLong:Lorg/mapsforge/core/model/LatLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", zoomLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-byte v1, p0, Lorg/mapsforge/core/model/MapPosition;->zoomLevel:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
