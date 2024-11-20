.class public Lorg/mapsforge/map/layer/queue/Job;
.super Ljava/lang/Object;
.source "Job.java"


# instance fields
.field public final hasAlpha:Z

.field private final key:Ljava/lang/String;

.field public final tile:Lorg/mapsforge/core/model/Tile;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/model/Tile;Z)V
    .locals 5
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "hasAlpha"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-eqz p1, :cond_0

    .line 41
    iput-object p1, p0, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    .line 42
    iput-boolean p2, p0, Lorg/mapsforge/map/layer/queue/Job;->hasAlpha:Z

    .line 43
    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    int-to-long v1, v1

    iget v3, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    int-to-long v3, v3

    invoke-static {v0, v1, v2, v3, v4}, Lorg/mapsforge/map/layer/queue/Job;->composeKey(BJJ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/layer/queue/Job;->key:Ljava/lang/String;

    .line 44
    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tile must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static composeKey(BJJ)Ljava/lang/String;
    .locals 2
    .param p0, "z"    # B
    .param p1, "x"    # J
    .param p3, "y"    # J

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static composeKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "z"    # Ljava/lang/String;
    .param p1, "x"    # Ljava/lang/String;
    .param p2, "y"    # Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 49
    return v0

    .line 50
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/layer/queue/Job;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 51
    return v2

    .line 53
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/layer/queue/Job;

    .line 54
    .local v1, "other":Lorg/mapsforge/map/layer/queue/Job;
    iget-boolean v3, p0, Lorg/mapsforge/map/layer/queue/Job;->hasAlpha:Z

    iget-boolean v4, v1, Lorg/mapsforge/map/layer/queue/Job;->hasAlpha:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    iget-object v4, v1, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v3, v4}, Lorg/mapsforge/core/model/Tile;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/Job;->key:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/Job;->tile:Lorg/mapsforge/core/model/Tile;

    invoke-virtual {v0}, Lorg/mapsforge/core/model/Tile;->hashCode()I

    move-result v0

    return v0
.end method
