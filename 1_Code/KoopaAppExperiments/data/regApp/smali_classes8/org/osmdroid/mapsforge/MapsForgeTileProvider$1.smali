.class Lorg/osmdroid/mapsforge/MapsForgeTileProvider$1;
.super Ljava/lang/Object;
.source "MapsForgeTileProvider.java"

# interfaces
.implements Lorg/mapsforge/map/layer/renderer/DirectRenderer$TileRefresher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/mapsforge/MapsForgeTileProvider;-><init>(Lorg/osmdroid/tileprovider/IRegisterReceiver;Lorg/osmdroid/mapsforge/MapsForgeTileSource;Lorg/osmdroid/tileprovider/modules/IFilesystemCache;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osmdroid/mapsforge/MapsForgeTileProvider;


# direct methods
.method constructor <init>(Lorg/osmdroid/mapsforge/MapsForgeTileProvider;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/mapsforge/MapsForgeTileProvider;

    .line 59
    iput-object p1, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider$1;->this$0:Lorg/osmdroid/mapsforge/MapsForgeTileProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(Lorg/mapsforge/core/model/Tile;)V
    .locals 3
    .param p1, "pTile"    # Lorg/mapsforge/core/model/Tile;

    .line 62
    iget-byte v0, p1, Lorg/mapsforge/core/model/Tile;->zoomLevel:B

    iget v1, p1, Lorg/mapsforge/core/model/Tile;->tileX:I

    iget v2, p1, Lorg/mapsforge/core/model/Tile;->tileY:I

    invoke-static {v0, v1, v2}, Lorg/osmdroid/util/MapTileIndex;->getTileIndex(III)J

    move-result-wide v0

    .line 63
    .local v0, "index":J
    iget-object v2, p0, Lorg/osmdroid/mapsforge/MapsForgeTileProvider$1;->this$0:Lorg/osmdroid/mapsforge/MapsForgeTileProvider;

    invoke-virtual {v2, v0, v1}, Lorg/osmdroid/mapsforge/MapsForgeTileProvider;->expireInMemoryCache(J)V

    .line 64
    return-void
.end method
