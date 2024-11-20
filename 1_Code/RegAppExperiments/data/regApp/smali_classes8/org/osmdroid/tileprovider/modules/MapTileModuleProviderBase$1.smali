.class Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;
.super Ljava/util/LinkedHashMap;
.source "MapTileModuleProviderBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;-><init>(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Long;",
        "Lorg/osmdroid/tileprovider/MapTileRequestState;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5995f716368a7532L


# instance fields
.field final synthetic this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

.field final synthetic val$pPendingQueueSize:I


# direct methods
.method constructor <init>(Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;IFZI)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;
    .param p2, "arg0"    # I
    .param p3, "arg1"    # F
    .param p4, "arg2"    # Z

    .line 105
    iput-object p1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iput p5, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->val$pPendingQueueSize:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "Lorg/osmdroid/tileprovider/MapTileRequestState;",
            ">;)Z"
        }
    .end annotation

    .line 112
    .local p1, "pEldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lorg/osmdroid/tileprovider/MapTileRequestState;>;"
    invoke-virtual {p0}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->size()I

    move-result v0

    iget v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->val$pPendingQueueSize:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    .line 113
    return v2

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v0, v0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 117
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 119
    .local v3, "mapTileIndex":J
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mWorking:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    iget-object v1, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    iget-object v1, v1, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->mPending:Ljava/util/LinkedHashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/tileprovider/MapTileRequestState;

    .line 121
    .local v1, "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    if-eqz v1, :cond_1

    .line 122
    iget-object v5, p0, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase$1;->this$0:Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;

    invoke-virtual {v5, v3, v4}, Lorg/osmdroid/tileprovider/modules/MapTileModuleProviderBase;->removeTileFromQueues(J)V

    .line 123
    invoke-virtual {v1}, Lorg/osmdroid/tileprovider/MapTileRequestState;->getCallback()Lorg/osmdroid/tileprovider/IMapTileProviderCallback;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/osmdroid/tileprovider/IMapTileProviderCallback;->mapTileRequestFailedExceedsMaxQueueSize(Lorg/osmdroid/tileprovider/MapTileRequestState;)V

    .line 124
    return v2

    .line 127
    .end local v1    # "state":Lorg/osmdroid/tileprovider/MapTileRequestState;
    .end local v3    # "mapTileIndex":J
    :cond_1
    goto :goto_0

    .line 128
    :cond_2
    return v2
.end method
