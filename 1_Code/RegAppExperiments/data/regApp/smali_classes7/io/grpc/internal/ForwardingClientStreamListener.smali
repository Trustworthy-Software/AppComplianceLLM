.class abstract Lio/grpc/internal/ForwardingClientStreamListener;
.super Ljava/lang/Object;
.source "ForwardingClientStreamListener.java"

# interfaces
.implements Lio/grpc/internal/ClientStreamListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "rpcProgress"    # Lio/grpc/internal/ClientStreamListener$RpcProgress;
    .param p3, "trailers"    # Lio/grpc/Metadata;

    .line 34
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamListener;->delegate()Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 35
    return-void
.end method

.method protected abstract delegate()Lio/grpc/internal/ClientStreamListener;
.end method

.method public headersRead(Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 29
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamListener;->delegate()Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->headersRead(Lio/grpc/Metadata;)V

    .line 30
    return-void
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 1
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 39
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamListener;->delegate()Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/internal/ClientStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V

    .line 40
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamListener;->delegate()Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStreamListener;->onReady()V

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 49
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamListener;->delegate()Lio/grpc/internal/ClientStreamListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
