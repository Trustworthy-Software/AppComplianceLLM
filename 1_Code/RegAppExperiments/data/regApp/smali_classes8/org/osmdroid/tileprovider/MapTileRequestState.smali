.class public Lorg/osmdroid/tileprovider/MapTileRequestState;
.super Ljava/lang/Object;
.source "MapTileRequestState.java"


# instance fields
.field private index:I

.field private final mCallback:Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

.field private mCurrentProvider:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

.field private final mMapTileIndex:J

.field private final mProviderQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/List;Lorg/osmdroid/tileprovider/IMapTileProviderCallback;)V
    .locals 0
    .param p1, "pMapTileIndex"    # J
    .param p4, "callback"    # Lorg/osmdroid/tileprovider/IMapTileProviderCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;",
            ">;",
            "Lorg/osmdroid/tileprovider/IMapTileProviderCallback;",
            ")V"
        }
    .end annotation

    .line 35
    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p3, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mProviderQueue:Ljava/util/List;

    .line 37
    iput-wide p1, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mMapTileIndex:J

    .line 38
    iput-object p4, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mCallback:Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    .line 39
    return-void
.end method

.method public constructor <init>(J[Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;Lorg/osmdroid/tileprovider/IMapTileProviderCallback;)V
    .locals 1
    .param p1, "pMapTleIndex"    # J
    .param p3, "providers"    # [Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .param p4, "callback"    # Lorg/osmdroid/tileprovider/IMapTileProviderCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mProviderQueue:Ljava/util/List;

    .line 25
    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 26
    iput-wide p1, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mMapTileIndex:J

    .line 27
    iput-object p4, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mCallback:Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    .line 28
    return-void
.end method


# virtual methods
.method public getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mCallback:Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    return-object v0
.end method

.method public getCurrentProvider()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mCurrentProvider:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    return-object v0
.end method

.method public getMapTile()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mMapTileIndex:J

    return-wide v0
.end method

.method public getNextProvider()Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .locals 3

    .line 57
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/MapTileRequestState;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mProviderQueue:Ljava/util/List;

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->index:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    :goto_0
    iput-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mCurrentProvider:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    .line 58
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 53
    iget-object v0, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->mProviderQueue:Ljava/util/List;

    if-eqz v0, :cond_1

    iget v1, p0, Lorg/osmdroid/tileprovider/MapTileRequestState;->index:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
