.class Lio/grpc/internal/InternalSubchannel$9;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel;->getStats()Lcom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;

.field final synthetic val$channelStatsFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/InternalSubchannel;

    .line 507
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$9;->this$0:Lio/grpc/internal/InternalSubchannel;

    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$9;->val$channelStatsFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 510
    new-instance v0, Lio/grpc/InternalChannelz$ChannelStats$Builder;

    invoke-direct {v0}, Lio/grpc/InternalChannelz$ChannelStats$Builder;-><init>()V

    .line 511
    .local v0, "builder":Lio/grpc/InternalChannelz$ChannelStats$Builder;
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$9;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/InternalSubchannel$Index;->getGroups()Ljava/util/List;

    move-result-object v1

    .line 512
    .local v1, "addressGroupsSnapshot":Ljava/util/List;, "Ljava/util/List<Lio/grpc/EquivalentAddressGroup;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$9;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$1700(Lio/grpc/internal/InternalSubchannel;)Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 513
    .local v2, "transportsSnapshot":Ljava/util/List;, "Ljava/util/List<Lio/grpc/InternalWithLogId;>;"
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setTarget(Ljava/lang/String;)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    move-result-object v3

    iget-object v4, p0, Lio/grpc/internal/InternalSubchannel$9;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-virtual {v4}, Lio/grpc/internal/InternalSubchannel;->getState()Lio/grpc/ConnectivityState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setState(Lio/grpc/ConnectivityState;)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    .line 514
    invoke-virtual {v0, v2}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->setSockets(Ljava/util/List;)Lio/grpc/InternalChannelz$ChannelStats$Builder;

    .line 515
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$9;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$2000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/CallTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/grpc/internal/CallTracer;->updateBuilder(Lio/grpc/InternalChannelz$ChannelStats$Builder;)V

    .line 516
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$9;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v3}, Lio/grpc/internal/InternalSubchannel;->access$2100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ChannelTracer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/grpc/internal/ChannelTracer;->updateBuilder(Lio/grpc/InternalChannelz$ChannelStats$Builder;)V

    .line 517
    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$9;->val$channelStatsFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lio/grpc/InternalChannelz$ChannelStats$Builder;->build()Lio/grpc/InternalChannelz$ChannelStats;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 518
    return-void
.end method
