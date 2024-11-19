.class final Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;
.super Lio/grpc/internal/ContextRunnable;
.source "DelayedClientCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DelayedClientCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CloseListenerRunnable"
.end annotation


# instance fields
.field final listener:Lio/grpc/ClientCall$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;"
        }
    .end annotation
.end field

.field final status:Lio/grpc/Status;

.field final synthetic this$0:Lio/grpc/internal/DelayedClientCall;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientCall;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;)V
    .locals 0
    .param p3, "status"    # Lio/grpc/Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ClientCall$Listener<",
            "TRespT;>;",
            "Lio/grpc/Status;",
            ")V"
        }
    .end annotation

    .line 424
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>.CloseListenerRunnable;"
    .local p2, "listener":Lio/grpc/ClientCall$Listener;, "Lio/grpc/ClientCall$Listener<TRespT;>;"
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->this$0:Lio/grpc/internal/DelayedClientCall;

    .line 425
    invoke-static {p1}, Lio/grpc/internal/DelayedClientCall;->access$300(Lio/grpc/internal/DelayedClientCall;)Lio/grpc/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 426
    iput-object p2, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->listener:Lio/grpc/ClientCall$Listener;

    .line 427
    iput-object p3, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->status:Lio/grpc/Status;

    .line 428
    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 3

    .line 432
    .local p0, "this":Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;, "Lio/grpc/internal/DelayedClientCall<TReqT;TRespT;>.CloseListenerRunnable;"
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->listener:Lio/grpc/ClientCall$Listener;

    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$CloseListenerRunnable;->status:Lio/grpc/Status;

    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    invoke-virtual {v0, v1, v2}, Lio/grpc/ClientCall$Listener;->onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 433
    return-void
.end method
