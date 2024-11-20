.class final Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PendingCallRemoval"
.end annotation


# instance fields
.field final synthetic this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;)V
    .locals 0
    .param p1, "this$2"    # Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    .line 1126
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;, "Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall<TReqT;TRespT;>.PendingCallRemoval;"
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1129
    .local p0, "this":Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;, "Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall<TReqT;TRespT;>.PendingCallRemoval;"
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    invoke-interface {v0, v1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 1131
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4300(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 1133
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4202(Lio/grpc/internal/ManagedChannelImpl;Ljava/util/Collection;)Ljava/util/Collection;

    .line 1134
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$1500(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1135
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall$PendingCallRemoval;->this$2:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$2400(Lio/grpc/internal/ManagedChannelImpl;)Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;

    move-result-object v0

    sget-object v1, Lio/grpc/internal/ManagedChannelImpl;->SHUTDOWN_STATUS:Lio/grpc/Status;

    invoke-virtual {v0, v1}, Lio/grpc/internal/ManagedChannelImpl$UncommittedRetriableStreamsRegistry;->onShutdown(Lio/grpc/Status;)V

    .line 1139
    :cond_0
    return-void
.end method
