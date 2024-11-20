.class Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;
.super Ljava/lang/Object;
.source "ManagedChannelImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ManagedChannelImpl$RealChannel;->newCall(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;)Lio/grpc/ClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

.field final synthetic val$pendingCall:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;


# direct methods
.method constructor <init>(Lio/grpc/internal/ManagedChannelImpl$RealChannel;Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    .line 1009
    iput-object p1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iput-object p2, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->val$pendingCall:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1012
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->access$3000(Lio/grpc/internal/ManagedChannelImpl$RealChannel;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lio/grpc/internal/ManagedChannelImpl;->access$3500()Lio/grpc/InternalConfigSelector;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1013
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v0, v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4202(Lio/grpc/internal/ManagedChannelImpl;Ljava/util/Collection;)Ljava/util/Collection;

    .line 1015
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl;->inUseStateAggregator:Lio/grpc/internal/InUseStateAggregator;

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v1, v1, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v1}, Lio/grpc/internal/ManagedChannelImpl;->access$4300(Lio/grpc/internal/ManagedChannelImpl;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/grpc/internal/InUseStateAggregator;->updateObjectInUse(Ljava/lang/Object;Z)V

    .line 1017
    :cond_0
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->this$1:Lio/grpc/internal/ManagedChannelImpl$RealChannel;

    iget-object v0, v0, Lio/grpc/internal/ManagedChannelImpl$RealChannel;->this$0:Lio/grpc/internal/ManagedChannelImpl;

    invoke-static {v0}, Lio/grpc/internal/ManagedChannelImpl;->access$4200(Lio/grpc/internal/ManagedChannelImpl;)Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->val$pendingCall:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1019
    :cond_1
    iget-object v0, p0, Lio/grpc/internal/ManagedChannelImpl$RealChannel$4;->val$pendingCall:Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;

    invoke-virtual {v0}, Lio/grpc/internal/ManagedChannelImpl$RealChannel$PendingCall;->reprocess()V

    .line 1021
    :goto_0
    return-void
.end method
