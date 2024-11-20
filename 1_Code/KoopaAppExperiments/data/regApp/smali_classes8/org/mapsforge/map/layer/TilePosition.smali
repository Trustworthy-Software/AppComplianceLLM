.class public Lorg/mapsforge/map/layer/TilePosition;
.super Ljava/lang/Object;
.source "TilePosition.java"


# instance fields
.field public final point:Lorg/mapsforge/core/model/Point;

.field public final tile:Lorg/mapsforge/core/model/Tile;


# direct methods
.method public constructor <init>(Lorg/mapsforge/core/model/Tile;Lorg/mapsforge/core/model/Point;)V
    .locals 0
    .param p1, "tile"    # Lorg/mapsforge/core/model/Tile;
    .param p2, "point"    # Lorg/mapsforge/core/model/Point;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/mapsforge/map/layer/TilePosition;->tile:Lorg/mapsforge/core/model/Tile;

    .line 26
    iput-object p2, p0, Lorg/mapsforge/map/layer/TilePosition;->point:Lorg/mapsforge/core/model/Point;

    .line 27
    return-void
.end method
