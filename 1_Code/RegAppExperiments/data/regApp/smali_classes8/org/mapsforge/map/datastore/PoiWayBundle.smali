.class public Lorg/mapsforge/map/datastore/PoiWayBundle;
.super Ljava/lang/Object;
.source "PoiWayBundle.java"


# instance fields
.field final pois:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/datastore/PointOfInterest;",
            ">;"
        }
    .end annotation
.end field

.field final ways:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/mapsforge/map/datastore/Way;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/datastore/PointOfInterest;",
            ">;",
            "Ljava/util/List<",
            "Lorg/mapsforge/map/datastore/Way;",
            ">;)V"
        }
    .end annotation

    .line 23
    .local p1, "pois":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/datastore/PointOfInterest;>;"
    .local p2, "ways":Ljava/util/List;, "Ljava/util/List<Lorg/mapsforge/map/datastore/Way;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/mapsforge/map/datastore/PoiWayBundle;->pois:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lorg/mapsforge/map/datastore/PoiWayBundle;->ways:Ljava/util/List;

    .line 26
    return-void
.end method
