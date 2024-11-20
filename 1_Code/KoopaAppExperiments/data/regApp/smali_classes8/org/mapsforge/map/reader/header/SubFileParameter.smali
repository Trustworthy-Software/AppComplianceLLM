.class public Lorg/mapsforge/map/reader/header/SubFileParameter;
.super Ljava/lang/Object;
.source "SubFileParameter.java"


# static fields
.field public static final BYTES_PER_INDEX_ENTRY:B = 0x5t


# instance fields
.field public final baseZoomLevel:B

.field public final blocksHeight:J

.field public final blocksWidth:J

.field public final boundaryTileBottom:J

.field public final boundaryTileLeft:J

.field public final boundaryTileRight:J

.field public final boundaryTileTop:J

.field private final hashCodeValue:I

.field public final indexEndAddress:J

.field public final indexStartAddress:J

.field public final numberOfBlocks:J

.field public final startAddress:J

.field public final subFileSize:J

.field public final zoomLevelMax:B

.field public final zoomLevelMin:B


# direct methods
.method constructor <init>(Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;)V
    .locals 11
    .param p1, "subFileParameterBuilder"    # Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iget-wide v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->startAddress:J

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    .line 105
    iget-wide v0, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->indexStartAddress:J

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexStartAddress:J

    .line 106
    iget-wide v2, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->subFileSize:J

    iput-wide v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    .line 107
    iget-byte v2, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->baseZoomLevel:B

    iput-byte v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    .line 108
    iget-byte v3, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->zoomLevelMin:B

    iput-byte v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMin:B

    .line 109
    iget-byte v3, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->zoomLevelMax:B

    iput-byte v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->zoomLevelMax:B

    .line 110
    invoke-direct {p0}, Lorg/mapsforge/map/reader/header/SubFileParameter;->calculateHashCode()I

    move-result v3

    iput v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->hashCodeValue:I

    .line 113
    iget-object v3, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v3, v3, Lorg/mapsforge/core/model/BoundingBox;->minLatitude:D

    invoke-static {v3, v4, v2}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileBottom:J

    .line 115
    iget-object v5, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v5, v5, Lorg/mapsforge/core/model/BoundingBox;->minLongitude:D

    invoke-static {v5, v6, v2}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileLeft:J

    .line 117
    iget-object v7, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v7, v7, Lorg/mapsforge/core/model/BoundingBox;->maxLatitude:D

    invoke-static {v7, v8, v2}, Lorg/mapsforge/core/util/MercatorProjection;->latitudeToTileY(DB)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileTop:J

    .line 119
    iget-object v9, p1, Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    iget-wide v9, v9, Lorg/mapsforge/core/model/BoundingBox;->maxLongitude:D

    invoke-static {v9, v10, v2}, Lorg/mapsforge/core/util/MercatorProjection;->longitudeToTileX(DB)I

    move-result v2

    int-to-long v9, v2

    iput-wide v9, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->boundaryTileRight:J

    .line 123
    sub-long/2addr v9, v5

    const-wide/16 v5, 0x1

    add-long/2addr v9, v5

    iput-wide v9, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksWidth:J

    .line 124
    sub-long/2addr v3, v7

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->blocksHeight:J

    .line 127
    mul-long/2addr v9, v3

    iput-wide v9, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->numberOfBlocks:J

    .line 129
    const-wide/16 v2, 0x5

    mul-long/2addr v9, v2

    add-long/2addr v0, v9

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->indexEndAddress:J

    .line 130
    return-void
.end method

.method private calculateHashCode()I
    .locals 7

    .line 159
    const/4 v0, 0x7

    .line 160
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 161
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 162
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-byte v2, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    add-int/2addr v1, v2

    .line 163
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 134
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 135
    return v0

    .line 136
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/reader/header/SubFileParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 137
    return v2

    .line 139
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 140
    .local v1, "other":Lorg/mapsforge/map/reader/header/SubFileParameter;
    iget-wide v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/header/SubFileParameter;->startAddress:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 141
    return v2

    .line 142
    :cond_2
    iget-wide v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/header/SubFileParameter;->subFileSize:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    .line 143
    return v2

    .line 144
    :cond_3
    iget-byte v3, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    iget-byte v4, v1, Lorg/mapsforge/map/reader/header/SubFileParameter;->baseZoomLevel:B

    if-eq v3, v4, :cond_4

    .line 145
    return v2

    .line 147
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 152
    iget v0, p0, Lorg/mapsforge/map/reader/header/SubFileParameter;->hashCodeValue:I

    return v0
.end method
