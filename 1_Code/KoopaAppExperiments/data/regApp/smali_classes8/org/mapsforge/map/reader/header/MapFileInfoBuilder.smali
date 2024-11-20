.class Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;
.super Ljava/lang/Object;
.source "MapFileInfoBuilder.java"


# instance fields
.field boundingBox:Lorg/mapsforge/core/model/BoundingBox;

.field fileSize:J

.field fileVersion:I

.field mapDate:J

.field numberOfSubFiles:B

.field optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

.field poiTags:[Lorg/mapsforge/core/model/Tag;

.field projectionName:Ljava/lang/String;

.field tilePixelSize:I

.field wayTags:[Lorg/mapsforge/core/model/Tag;

.field zoomLevelMax:B

.field zoomLevelMin:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lorg/mapsforge/map/reader/header/MapFileInfo;
    .locals 1

    .line 36
    new-instance v0, Lorg/mapsforge/map/reader/header/MapFileInfo;

    invoke-direct {v0, p0}, Lorg/mapsforge/map/reader/header/MapFileInfo;-><init>(Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V

    return-object v0
.end method
