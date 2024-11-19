.class final Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;
.super Lio/grpc/stub/ClientCalls$StartableListener;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls$BlockingResponseStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueuingListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/ClientCalls$StartableListener<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private done:Z

.field final synthetic this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;


# direct methods
.method constructor <init>(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)V
    .locals 0

    .line 692
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>.QueuingListener;"
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lio/grpc/stub/ClientCalls$StartableListener;-><init>(Lio/grpc/stub/ClientCalls$1;)V

    .line 694
    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    .line 692
    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 708
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>.QueuingListener;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "ClientCall already closed"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 709
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$700(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 712
    :cond_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$700(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-virtual {p1, p2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 714
    :goto_0
    iput-boolean v1, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    .line 715
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 698
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>.QueuingListener;"
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 702
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>.QueuingListener;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->done:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ClientCall already closed"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 703
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$700(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 704
    return-void
.end method

.method onStart()V
    .locals 2

    .line 719
    .local p0, "this":Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;, "Lio/grpc/stub/ClientCalls$BlockingResponseStream<TT;>.QueuingListener;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$BlockingResponseStream$QueuingListener;->this$0:Lio/grpc/stub/ClientCalls$BlockingResponseStream;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$BlockingResponseStream;->access$800(Lio/grpc/stub/ClientCalls$BlockingResponseStream;)Lio/grpc/ClientCall;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall;->request(I)V

    .line 720
    return-void
.end method
