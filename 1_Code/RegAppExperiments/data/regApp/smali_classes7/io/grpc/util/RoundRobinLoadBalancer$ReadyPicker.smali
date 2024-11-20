.class final Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;
.super Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;
.source "RoundRobinLoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/util/RoundRobinLoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ReadyPicker"
.end annotation


# static fields
.field private static final indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile index:I

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 284
    nop

    .line 285
    const-class v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    const-string v1, "index"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 284
    return-void
.end method

.method constructor <init>(Ljava/util/List;I)V
    .locals 2
    .param p2, "startIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;I)V"
        }
    .end annotation

    .line 291
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lio/grpc/LoadBalancer$Subchannel;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;-><init>(Lio/grpc/util/RoundRobinLoadBalancer$1;)V

    .line 292
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "empty list"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 293
    iput-object p1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    .line 294
    add-int/lit8 v0, p2, -0x1

    iput v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->index:I

    .line 295
    return-void
.end method

.method private nextSubchannel()Lio/grpc/LoadBalancer$Subchannel;
    .locals 4

    .line 308
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 309
    .local v0, "size":I
    sget-object v1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->indexUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->incrementAndGet(Ljava/lang/Object;)I

    move-result v2

    .line 310
    .local v2, "i":I
    if-lt v2, v0, :cond_0

    .line 311
    move v3, v2

    .line 312
    .local v3, "oldi":I
    rem-int/2addr v2, v0

    .line 313
    invoke-virtual {v1, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 315
    .end local v3    # "oldi":I
    :cond_0
    iget-object v1, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Subchannel;

    return-object v1
.end method


# virtual methods
.method getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/LoadBalancer$Subchannel;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    return-object v0
.end method

.method isEquivalentTo(Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;)Z
    .locals 4
    .param p1, "picker"    # Lio/grpc/util/RoundRobinLoadBalancer$RoundRobinPicker;

    .line 325
    instance-of v0, p1, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 326
    return v1

    .line 328
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    .line 330
    .local v0, "other":Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;
    if-eq v0, p0, :cond_1

    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    .line 331
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v3, v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 330
    :cond_2
    return v1
.end method

.method public pickSubchannel(Lio/grpc/LoadBalancer$PickSubchannelArgs;)Lio/grpc/LoadBalancer$PickResult;
    .locals 1
    .param p1, "args"    # Lio/grpc/LoadBalancer$PickSubchannelArgs;

    .line 299
    invoke-direct {p0}, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->nextSubchannel()Lio/grpc/LoadBalancer$Subchannel;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 304
    const-class v0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;

    invoke-static {v0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Class;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "list"

    iget-object v2, p0, Lio/grpc/util/RoundRobinLoadBalancer$ReadyPicker;->list:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
