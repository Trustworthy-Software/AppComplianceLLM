.class public Lorg/mapsforge/map/datastore/MapReadResult;
.super Ljava/lang/Object;
.source "MapReadResult.java"


# instance fields
.field public isWater:Z

.field public pointOfInterests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/datastore/PointOfInterest;",
            ">;"
        }
    .end annotation
.end field

.field public ways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/datastore/Way;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/datastore/MapReadResult;->pointOfInterests:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/datastore/MapReadResult;->ways:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public add(Lorg/mapsforge/map/datastore/MapReadResult;Z)V
    .locals 3
    .param p1, "other"    # Lorg/mapsforge/map/datastore/MapReadResult;
    .param p2, "deduplicate"    # Z

    .line 59
    if-eqz p2, :cond_4

    .line 60
    iget-object v0, p1, Lorg/mapsforge/map/datastore/MapReadResult;->pointOfInterests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/PointOfInterest;

    .line 61
    .local v1, "poi":Lorg/mapsforge/map/datastore/PointOfInterest;
    iget-object v2, p0, Lorg/mapsforge/map/datastore/MapReadResult;->pointOfInterests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    iget-object v2, p0, Lorg/mapsforge/map/datastore/MapReadResult;->pointOfInterests:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v1    # "poi":Lorg/mapsforge/map/datastore/PointOfInterest;
    :cond_0
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p1, Lorg/mapsforge/map/datastore/MapReadResult;->ways:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mapsforge/map/datastore/Way;

    .line 66
    .local v1, "way":Lorg/mapsforge/map/datastore/Way;
    iget-object v2, p0, Lorg/mapsforge/map/datastore/MapReadResult;->ways:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 67
    iget-object v2, p0, Lorg/mapsforge/map/datastore/MapReadResult;->ways:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v1    # "way":Lorg/mapsforge/map/datastore/Way;
    :cond_2
    goto :goto_1

    :cond_3
    goto :goto_2

    .line 71
    :cond_4
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MapReadResult;->pointOfInterests:Ljava/util/List;

    iget-object v1, p1, Lorg/mapsforge/map/datastore/MapReadResult;->pointOfInterests:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MapReadResult;->ways:Ljava/util/List;

    iget-object v1, p1, Lorg/mapsforge/map/datastore/MapReadResult;->ways:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    :goto_2
    return-void
.end method

.method public add(Lorg/mapsforge/map/datastore/PoiWayBundle;)V
    .locals 2
    .param p1, "poiWayBundle"    # Lorg/mapsforge/map/datastore/PoiWayBundle;

    .line 47
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MapReadResult;->pointOfInterests:Ljava/util/List;

    iget-object v1, p1, Lorg/mapsforge/map/datastore/PoiWayBundle;->pois:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    iget-object v0, p0, Lorg/mapsforge/map/datastore/MapReadResult;->ways:Ljava/util/List;

    iget-object v1, p1, Lorg/mapsforge/map/datastore/PoiWayBundle;->ways:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    return-void
.end method
