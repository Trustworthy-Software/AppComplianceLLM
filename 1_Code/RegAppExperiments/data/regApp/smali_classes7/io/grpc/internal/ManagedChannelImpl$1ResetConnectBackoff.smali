.class final Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl;->resetConnectBackoff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ResetConnectBackoff"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ManagedChannelImpl;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ManagedChannelImpl;

    .line 1334
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1337
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    return-void

    .line 1340
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1200(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/SynchronizationContext$ScheduledHandle;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/SynchronizationContext$ScheduledHandle;->isPending()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1341
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4900(Lio/grpc/internal/ManagedChannelImpl;)Z

    move-result v0

    const-string v1, "name resolver must be started"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1342
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$5000(Lio/grpc/internal/ManagedChannelImpl;)V

    .line 1344
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$700(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/InternalSubchannel;

    .line 1345
    .local v1, "subchannel":Lio/grpc/internal/InternalSubchannel;
    invoke-virtual {v1}, Lio/grpc/internal/InternalSubchannel;->resetConnectBackoff()V

    .line 1346
    .end local v1    # "subchannel":Lio/grpc/internal/InternalSubchannel;
    goto :goto_0

    .line 1347
    :cond_2
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$1ResetConnectBackoff;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$800(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/internal/OobChannel;

    .line 1348
    .local v1, "oobChannel":Lio/grpc/internal/OobChannel;
    invoke-virtual {v1}, Lio/grpc/internal/OobChannel;->resetConnectBackoff()V

    .line 1349
    .end local v1    # "oobChannel":Lio/grpc/internal/OobChannel;
    goto :goto_1

    .line 1350
    :cond_3
    return-void
.end method
