.class final Lorg/mapsforge/map/reader/header/OptionalFields;
.super Ljava/lang/Object;
.source "OptionalFields.java"


# static fields
.field private static final HEADER_BITMASK_COMMENT:I = 0x8

.field private static final HEADER_BITMASK_CREATED_BY:I = 0x4

.field private static final HEADER_BITMASK_DEBUG:I = 0x80

.field private static final HEADER_BITMASK_LANGUAGES_PREFERENCE:I = 0x10

.field private static final HEADER_BITMASK_START_POSITION:I = 0x40

.field private static final HEADER_BITMASK_START_ZOOM_LEVEL:I = 0x20

.field private static final START_ZOOM_LEVEL_MAX:I = 0x16


# instance fields
.field comment:Ljava/lang/String;

.field createdBy:Ljava/lang/String;

.field final hasComment:Z

.field final hasCreatedBy:Z

.field final hasLanguagesPreference:Z

.field final hasStartPosition:Z

.field final hasStartZoomLevel:Z

.field final isDebugFile:Z

.field languagesPreference:Ljava/lang/String;

.field startPosition:Lorg/mapsforge/core/model/LatLong;

.field startZoomLevel:Ljava/lang/Byte;


# direct methods
.method private constructor <init>(B)V
    .locals 3
    .param p1, "flags"    # B

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    and-int/lit16 v0, p1, 0x80

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->isDebugFile:Z

    .line 80
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasStartPosition:Z

    .line 81
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasStartZoomLevel:Z

    .line 82
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasLanguagesPreference:Z

    .line 83
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasComment:Z

    .line 84
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_5

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasCreatedBy:Z

    .line 85
    return-void
.end method

.method private readLanguagesPreference(Lorg/mapsforge/map/reader/ReadBuffer;)V
    .locals 1
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 88
    iget-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasLanguagesPreference:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->languagesPreference:Ljava/lang/String;

    .line 91
    :cond_0
    return-void
.end method

.method private readMapStartPosition(Lorg/mapsforge/map/reader/ReadBuffer;)V
    .locals 7
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 94
    iget-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasStartPosition:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v0

    .line 96
    .local v0, "mapStartLatitude":D
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readInt()I

    move-result v2

    invoke-static {v2}, Lorg/mapsforge/core/util/LatLongUtils;->microdegreesToDegrees(I)D

    move-result-wide v2

    .line 98
    .local v2, "mapStartLongitude":D
    :try_start_0
    new-instance v4, Lorg/mapsforge/core/model/LatLong;

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/mapsforge/core/model/LatLong;-><init>(DD)V

    iput-object v4, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->startPosition:Lorg/mapsforge/core/model/LatLong;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 99
    :catch_0
    move-exception v4

    .line 100
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/mapsforge/map/reader/header/MapFileException;

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 103
    .end local v0    # "mapStartLatitude":D
    .end local v2    # "mapStartLongitude":D
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    return-void
.end method

.method private readMapStartZoomLevel(Lorg/mapsforge/map/reader/ReadBuffer;)V
    .locals 4
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 106
    iget-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasStartZoomLevel:Z

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v0

    .line 109
    .local v0, "mapStartZoomLevel":B
    if-ltz v0, :cond_0

    const/16 v1, 0x16

    if-gt v0, v1, :cond_0

    .line 113
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    iput-object v1, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->startZoomLevel:Ljava/lang/Byte;

    goto :goto_0

    .line 110
    :cond_0
    new-instance v1, Lorg/mapsforge/map/reader/header/MapFileException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid map start zoom level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/mapsforge/map/reader/header/MapFileException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    .end local v0    # "mapStartZoomLevel":B
    :cond_1
    :goto_0
    return-void
.end method

.method private readOptionalFields(Lorg/mapsforge/map/reader/ReadBuffer;)V
    .locals 1
    .param p1, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;

    .line 118
    invoke-direct {p0, p1}, Lorg/mapsforge/map/reader/header/OptionalFields;->readMapStartPosition(Lorg/mapsforge/map/reader/ReadBuffer;)V

    .line 120
    invoke-direct {p0, p1}, Lorg/mapsforge/map/reader/header/OptionalFields;->readMapStartZoomLevel(Lorg/mapsforge/map/reader/ReadBuffer;)V

    .line 122
    invoke-direct {p0, p1}, Lorg/mapsforge/map/reader/header/OptionalFields;->readLanguagesPreference(Lorg/mapsforge/map/reader/ReadBuffer;)V

    .line 124
    iget-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasComment:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->comment:Ljava/lang/String;

    .line 128
    :cond_0
    iget-boolean v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->hasCreatedBy:Z

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p1}, Lorg/mapsforge/map/reader/ReadBuffer;->readUTF8EncodedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/reader/header/OptionalFields;->createdBy:Ljava/lang/String;

    .line 131
    :cond_1
    return-void
.end method

.method static readOptionalFields(Lorg/mapsforge/map/reader/ReadBuffer;Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;)V
    .locals 2
    .param p0, "readBuffer"    # Lorg/mapsforge/map/reader/ReadBuffer;
    .param p1, "mapFileInfoBuilder"    # Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;

    .line 60
    new-instance v0, Lorg/mapsforge/map/reader/header/OptionalFields;

    invoke-virtual {p0}, Lorg/mapsforge/map/reader/ReadBuffer;->readByte()B

    move-result v1

    invoke-direct {v0, v1}, Lorg/mapsforge/map/reader/header/OptionalFields;-><init>(B)V

    .line 61
    .local v0, "optionalFields":Lorg/mapsforge/map/reader/header/OptionalFields;
    iput-object v0, p1, Lorg/mapsforge/map/reader/header/MapFileInfoBuilder;->optionalFields:Lorg/mapsforge/map/reader/header/OptionalFields;

    .line 63
    invoke-direct {v0, p0}, Lorg/mapsforge/map/reader/header/OptionalFields;->readOptionalFields(Lorg/mapsforge/map/reader/ReadBuffer;)V

    .line 64
    return-void
.end method
