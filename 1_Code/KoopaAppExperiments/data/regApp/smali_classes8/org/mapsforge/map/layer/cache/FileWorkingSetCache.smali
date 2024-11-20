.class Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;
.super Lorg/mapsforge/core/util/WorkingSetCache;
.source "FileWorkingSetCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mapsforge/core/util/WorkingSetCache<",
        "TT;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "capacity"    # I

    .line 29
    .local p0, "this":Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;, "Lorg/mapsforge/map/layer/cache/FileWorkingSetCache<TT;>;"
    invoke-direct {p0, p1}, Lorg/mapsforge/core/util/WorkingSetCache;-><init>(I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;, "Lorg/mapsforge/map/layer/cache/FileWorkingSetCache<TT;>;"
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TT;Ljava/io/File;>;"
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->size()I

    move-result v0

    iget v1, p0, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->capacity:I

    if-le v0, v1, :cond_1

    .line 35
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 36
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    sget-object v1, Lorg/mapsforge/map/layer/cache/FileWorkingSetCache;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not delete file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 39
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 41
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
