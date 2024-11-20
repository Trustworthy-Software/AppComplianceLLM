.class public Lorg/mapsforge/map/reader/header/MapFileInfo;
.super Ljava/lang/Object;
.source "MapFileInfo.java"


# instance fields
.field public final boundingBox:Lorg/mapsforge/core/model/BoundingBox;

.field public final comment:Ljava/lang/String;

.field public final createdBy:Ljava/lang/String;

.field public final debugFile:Z

.field public final fileSize:J

.field public final fileVersion:I

.field public final languagesPreference:Ljava/lang/String;

.field public final mapDate:J

.field public final numberOfSubFiles:B

.field public final poiTags:[Lorg/mapsforge/core/model/Tag;

.field public final projectionName:Ljava/lang/String;

.field public final startPosition:Lorg/mapsforge/core/model/LatLong;

.field public final startZoomLevel:Ljava/lang/Byte;

.field public final tilePixelSize:I

.field public final wayTags:[Lorg/mapsforge/core/model/Tag;

.field public final zoomLevelMax:B

.field public final zoomLevelMin:B


# direct methods
.method constructor <init>(Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 2
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/OptionalFields;->comment:Ljava/lang/String;

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->comment:Ljava/lang/String;

    .line 109
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/OptionalFields;->createdBy:Ljava/lang/String;

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->createdBy:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    iget-boolean v0, v0, Lorg/mapsforge/map/reader/header/OptionalFields;->isDebugFile:Z

    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->debugFile:Z

    .line 111
    iget-wide v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->fileSize:J

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->fileSize:J

    .line 112
    iget v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->fileVersion:I

    iput v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->fileVersion:I

    .line 113
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/OptionalFields;->languagesPreference:Ljava/lang/String;

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->languagesPreference:Ljava/lang/String;

    .line 114
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->boundingBox:Lorg/mapsforge/core/model/BoundingBox;

    .line 115
    iget-wide v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->mapDate:J

    iput-wide v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->mapDate:J

    .line 116
    iget-byte v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->numberOfSubFiles:B

    iput-byte v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->numberOfSubFiles:B

    .line 117
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->poiTags:[Lorg/mapsforge/core/model/Tag;

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->poiTags:[Lorg/mapsforge/core/model/Tag;

    .line 118
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->projectionName:Ljava/lang/String;

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->projectionName:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/OptionalFields;->startPosition:Lorg/mapsforge/core/model/LatLong;

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startPosition:Lorg/mapsforge/core/model/LatLong;

    .line 120
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    iget-object v0, v0, Lorg/mapsforge/map/reader/header/OptionalFields;->startZoomLevel:Ljava/lang/Byte;

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->startZoomLevel:Ljava/lang/Byte;

    .line 121
    iget v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->tilePixelSize:I

    iput v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->tilePixelSize:I

    .line 122
    iget-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->wayTags:[Lorg/mapsforge/core/model/Tag;

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->wayTags:[Lorg/mapsforge/core/model/Tag;

    .line 123
    iget-byte v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->zoomLevelMax:B

    iput-byte v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->zoomLevelMax:B

    .line 124
    iget-byte v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->zoomLevelMin:B

    iput-byte v0, p0, Lorg/mapsforge/map/reader/header/MapFileInfo;->zoomLevelMin:B

    .line 125
    return-void
.end method
