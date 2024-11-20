.class final Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;
.super Lio/grpc/internal/ContextRunnable;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->closedInternal(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StreamClosed"
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

.field final synthetic val$link:Lio/perfmark/Link;

.field final synthetic val$savedStatus:Lio/grpc/Status;

.field final synthetic val$savedTrailers:Lio/grpc/Metadata;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;Lio/perfmark/Link;Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 727
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;, "Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iput-object p2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$link:Lio/perfmark/Link;

    iput-object p3, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$savedStatus:Lio/grpc/Status;

    iput-object p4, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$savedTrailers:Lio/grpc/Metadata;

    .line 728
    iget-object p2, p1, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {p2}, Lio/grpc/internal/ClientCallImpl;->access$200(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 729
    return-void
.end method

.method private runInternal()V
    .locals 5

    .line 743
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;, "Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$savedStatus:Lio/grpc/Status;

    .line 744
    .local v0, "status":Lio/grpc/Status;
    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$savedTrailers:Lio/grpc/Metadata;

    .line 745
    .local v1, "trailers":Lio/grpc/Metadata;
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$500(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/Status;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 751
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$500(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/Status;

    move-result-object v0

    .line 753
    new-instance v2, Lio/grpc/Metadata;

    invoke-direct {v2}, Lio/grpc/Metadata;-><init>()V

    move-object v1, v2

    .line 755
    :cond_0
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v2, v2, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/grpc/internal/ClientCallImpl;->access$1102(Lio/grpc/internal/ClientCallImpl;Z)Z

    .line 757
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v2, v2, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    invoke-static {v3}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->access$600(Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;)Lio/grpc/ClientCall$Listener;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lio/grpc/internal/ClientCallImpl;->access$300(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;Lio/grpc/Metadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v2, v2, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$1200(Lio/grpc/internal/ClientCallImpl;)V

    .line 760
    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v2, v2, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$1300(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/CallTracer;

    move-result-object v2

    invoke-virtual {v0}, Lio/grpc/Status;->isOk()Z

    move-result v3

    invoke-virtual {v2, v3}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    .line 761
    nop

    .line 762
    return-void

    .line 759
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v3, v3, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v3}, Lio/grpc/internal/ClientCallImpl;->access$1200(Lio/grpc/internal/ClientCallImpl;)V

    .line 760
    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v3, v3, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v3}, Lio/grpc/internal/ClientCallImpl;->access$1300(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/CallTracer;

    move-result-object v3

    invoke-virtual {v0}, Lio/grpc/Status;->isOk()Z

    move-result v4

    invoke-virtual {v3, v4}, Lio/grpc/internal/CallTracer;->reportCallEnded(Z)V

    throw v2
.end method


# virtual methods
.method public runInContext()V
    .locals 3

    .line 733
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;, "Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v0, v0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ClientCall$Listener.onClose"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 734
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->val$link:Lio/perfmark/Link;

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    .line 736
    :try_start_0
    invoke-direct {p0}, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->runInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v0, v0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 739
    nop

    .line 740
    return-void

    .line 738
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl$1StreamClosed;->this$1:Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;

    iget-object v2, v2, Lio/grpc/internal/ClientCallImpl$ClientStreamListenerImpl;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v2}, Lio/grpc/internal/ClientCallImpl;->access$400(Lio/grpc/internal/ClientCallImpl;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method
