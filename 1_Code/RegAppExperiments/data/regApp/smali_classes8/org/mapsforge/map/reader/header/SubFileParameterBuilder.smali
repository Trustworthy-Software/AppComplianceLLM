.class Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;
.super Ljava/lang/Object;
.source "SubFileParameterBuilder.java"


# instance fields
.field baseZoomLevel:B

.field boundingBox:Lorg/mapsforge/core/model/BoundingBox;

.field indexStartAddress:J

.field startAddress:J

.field subFileSize:J

.field zoomLevelMax:B

.field zoomLevelMin:B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lorg/mapsforge/map/reader/header/SubFileParameter;
    .locals 1

    .line 29
    new-instance v0, Lorg/mapsforge/map/reader/header/SubFileParameter;

    invoke-direct {v0, p0}, Lorg/mapsforge/map/reader/header/SubFileParameter;-><init>(Lorg/mapsforge/map/reader/header/SubFileParameterBuilder;)V

    return-object v0
.end method
