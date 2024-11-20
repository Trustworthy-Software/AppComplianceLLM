.class Lorg/mapsforge/map/reader/IndexCacheEntryKey;
.super Ljava/lang/Object;
.source "IndexCacheEntryKey.java"


# instance fields
.field private final hashCodeValue:I

.field private final indexBlockNumber:J

.field private final subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/reader/header/SubFileParameter;J)V
    .locals 1
    .param p1, "subFileParameter"    # Lorg/mapsforge/map/reader/header/SubFileParameter;
    .param p2, "indexBlockNumber"    # J

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    .line 35
    iput-wide p2, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->indexBlockNumber:J

    .line 36
    invoke-direct {p0}, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->calculateHashCode()I

    move-result v0

    iput v0, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->hashCodeValue:I

    .line 37
    return-void
.end method

.method private calculateHashCode()I
    .locals 6

    .line 66
    const/4 v0, 0x7

    .line 67
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/mapsforge/map/reader/header/SubFileParameter;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    .line 68
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->indexBlockNumber:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 69
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 41
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 42
    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/reader/IndexCacheEntryKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 44
    return v2

    .line 46
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/reader/IndexCacheEntryKey;

    .line 47
    .local v1, "other":Lorg/mapsforge/map/reader/IndexCacheEntryKey;
    iget-object v3, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    if-nez v3, :cond_2

    iget-object v4, v1, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    if-eqz v4, :cond_2

    .line 48
    return v2

    .line 49
    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, v1, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->subFileParameter:Lorg/mapsforge/map/reader/header/SubFileParameter;

    invoke-virtual {v3, v4}, Lorg/mapsforge/map/reader/header/SubFileParameter;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 50
    return v2

    .line 51
    :cond_3
    iget-wide v3, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->indexBlockNumber:J

    iget-wide v5, v1, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->indexBlockNumber:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 52
    return v2

    .line 54
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/mapsforge/map/reader/IndexCacheEntryKey;->hashCodeValue:I

    return v0
.end method
