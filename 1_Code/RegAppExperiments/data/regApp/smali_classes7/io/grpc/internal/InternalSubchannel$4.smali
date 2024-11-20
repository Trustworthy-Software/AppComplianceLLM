.class Lio/grpc/internal/InternalSubchannel$4;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel;->updateAddresses(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;

.field final synthetic val$newImmutableAddressGroups:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/InternalSubchannel;

    .line 346
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$4;->val$newImmutableAddressGroups:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "savedTransport":Lio/grpc/internal/ManagedClientTransport;
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/InternalSubchannel$Index;->getCurrentAddress()Ljava/net/SocketAddress;

    move-result-object v1

    .line 351
    .local v1, "previousAddress":Ljava/net/SocketAddress;
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->val$newImmutableAddressGroups:Ljava/util/List;

    invoke-virtual {v2, v3}, Lio/grpc/internal/InternalSubchannel$Index;->updateGroups(Ljava/util/List;)V

    .line 352
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    iget-object v3, p0, Lio/grpc/internal/InternalSubchannel$4;->val$newImmutableAddressGroups:Ljava/util/List;

    invoke-static {v2, v3}, Lio/grpc/internal/InternalSubchannel;->access$902(Lio/grpc/internal/InternalSubchannel;Ljava/util/List;)Ljava/util/List;

    .line 353
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v2

    sget-object v3, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v2

    sget-object v3, Lio/grpc/ConnectivityState;->CONNECTING:Lio/grpc/ConnectivityState;

    if-ne v2, v3, :cond_2

    .line 354
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/internal/InternalSubchannel$Index;->seekTo(Ljava/net/SocketAddress;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 356
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v2

    sget-object v3, Lio/grpc/ConnectivityState;->READY:Lio/grpc/ConnectivityState;

    if-ne v2, v3, :cond_1

    .line 357
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v0

    .line 358
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2, v4}, Lio/grpc/internal/InternalSubchannel;->access$1002(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 359
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/InternalSubchannel$Index;->reset()V

    .line 360
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    sget-object v3, Lio/grpc/ConnectivityState;->IDLE:Lio/grpc/ConnectivityState;

    invoke-static {v2, v3}, Lio/grpc/internal/InternalSubchannel;->access$300(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityState;)V

    goto :goto_0

    .line 362
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v2

    sget-object v3, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 363
    const-string v5, "InternalSubchannel closed pending transport due to address change"

    invoke-virtual {v3, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 362
    invoke-interface {v2, v3}, Lio/grpc/internal/ConnectionClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 365
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2, v4}, Lio/grpc/internal/InternalSubchannel;->access$1102(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;)Lio/grpc/internal/ConnectionClientTransport;

    .line 366
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/InternalSubchannel$Index;->reset()V

    .line 367
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$400(Lio/grpc/internal/InternalSubchannel;)V

    .line 371
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 372
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 375
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1300(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v2

    sget-object v3, Lio/grpc/Status;->UNAVAILABLE:Lio/grpc/Status;

    .line 376
    const-string v5, "InternalSubchannel closed transport early due to address change"

    invoke-virtual {v3, v5}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v3

    .line 375
    invoke-interface {v2, v3}, Lio/grpc/internal/ManagedClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 378
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 379
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2, v4}, Lio/grpc/internal/InternalSubchannel;->access$1202(Lio/grpc/internal/InternalSubchannel;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 380
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2, v4}, Lio/grpc/internal/InternalSubchannel;->access$1302(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 384
    :cond_3
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2, v0}, Lio/grpc/internal/InternalSubchannel;->access$1302(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 385
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1500(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext;

    move-result-object v3

    new-instance v4, Lio/grpc/internal/InternalSubchannel$4$1;

    invoke-direct {v4, p0}, Lio/grpc/internal/InternalSubchannel$4$1;-><init>(Lio/grpc/internal/InternalSubchannel$4;)V

    const-wide/16 v5, 0x5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v8, p0, Lio/grpc/internal/InternalSubchannel$4;->this$0:Lio/grpc/internal/InternalSubchannel;

    .line 398
    invoke-static {v8}, Lio/grpc/internal/InternalSubchannel;->access$1400(Lio/grpc/internal/InternalSubchannel;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    .line 385
    invoke-virtual/range {v3 .. v8}, Lio/grpc/SynchronizationContext;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v3

    invoke-static {v2, v3}, Lio/grpc/internal/InternalSubchannel;->access$1202(Lio/grpc/internal/InternalSubchannel;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 400
    :cond_4
    return-void
.end method
