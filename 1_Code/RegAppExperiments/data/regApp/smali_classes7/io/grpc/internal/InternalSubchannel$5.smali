.class Lio/grpc/internal/InternalSubchannel$5;
.super Ljava/lang/Object;
.source "InternalSubchannel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/InternalSubchannel;->shutdown(Lio/grpc/Status;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/InternalSubchannel;

.field final synthetic val$reason:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/InternalSubchannel;

    .line 405
    iput-object p1, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    iput-object p2, p0, Lio/grpc/internal/InternalSubchannel$5;->val$reason:Lio/grpc/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 410
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/ConnectivityStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ConnectivityStateInfo;->getState()Lio/grpc/ConnectivityState;

    move-result-object v0

    sget-object v1, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    if-ne v0, v1, :cond_0

    .line 411
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$5;->val$reason:Lio/grpc/Status;

    invoke-static {v0, v1}, Lio/grpc/internal/InternalSubchannel;->access$1602(Lio/grpc/internal/InternalSubchannel;Lio/grpc/Status;)Lio/grpc/Status;

    .line 414
    iget-object v0, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v0}, Lio/grpc/internal/InternalSubchannel;->access$1000(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v0

    .line 415
    .local v0, "savedActiveTransport":Lio/grpc/internal/ManagedClientTransport;
    iget-object v1, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v1}, Lio/grpc/internal/InternalSubchannel;->access$1100(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ConnectionClientTransport;

    move-result-object v1

    .line 416
    .local v1, "savedPendingTransport":Lio/grpc/internal/ConnectionClientTransport;
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/grpc/internal/InternalSubchannel;->access$1002(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 417
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2, v3}, Lio/grpc/internal/InternalSubchannel;->access$1102(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ConnectionClientTransport;)Lio/grpc/internal/ConnectionClientTransport;

    .line 418
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    sget-object v4, Lio/grpc/ConnectivityState;->SHUTDOWN:Lio/grpc/ConnectivityState;

    invoke-static {v2, v4}, Lio/grpc/internal/InternalSubchannel;->access$300(Lio/grpc/internal/InternalSubchannel;Lio/grpc/ConnectivityState;)V

    .line 419
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$800(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/InternalSubchannel$Index;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/InternalSubchannel$Index;->reset()V

    .line 420
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1700(Lio/grpc/internal/InternalSubchannel;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1800(Lio/grpc/internal/InternalSubchannel;)V

    .line 423
    :cond_1
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$700(Lio/grpc/internal/InternalSubchannel;)V

    .line 424
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 425
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1200(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/SynchronizationContext$ScheduledHandle;->cancel()V

    .line 426
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2}, Lio/grpc/internal/InternalSubchannel;->access$1300(Lio/grpc/internal/InternalSubchannel;)Lio/grpc/internal/ManagedClientTransport;

    move-result-object v2

    iget-object v4, p0, Lio/grpc/internal/InternalSubchannel$5;->val$reason:Lio/grpc/Status;

    invoke-interface {v2, v4}, Lio/grpc/internal/ManagedClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 427
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2, v3}, Lio/grpc/internal/InternalSubchannel;->access$1202(Lio/grpc/internal/InternalSubchannel;Lio/grpc/SynchronizationContext$ScheduledHandle;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    .line 428
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->this$0:Lio/grpc/internal/InternalSubchannel;

    invoke-static {v2, v3}, Lio/grpc/internal/InternalSubchannel;->access$1302(Lio/grpc/internal/InternalSubchannel;Lio/grpc/internal/ManagedClientTransport;)Lio/grpc/internal/ManagedClientTransport;

    .line 430
    :cond_2
    if-eqz v0, :cond_3

    .line 431
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->val$reason:Lio/grpc/Status;

    invoke-interface {v0, v2}, Lio/grpc/internal/ManagedClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 433
    :cond_3
    if-eqz v1, :cond_4

    .line 434
    iget-object v2, p0, Lio/grpc/internal/InternalSubchannel$5;->val$reason:Lio/grpc/Status;

    invoke-interface {v1, v2}, Lio/grpc/internal/ConnectionClientTransport;->shutdown(Lio/grpc/Status;)V

    .line 436
    :cond_4
    return-void
.end method
