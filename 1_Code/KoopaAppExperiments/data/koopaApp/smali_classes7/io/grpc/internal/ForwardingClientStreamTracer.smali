.class public abstract Lio/grpc/internal/ForwardingClientStreamTracer;
.super Lio/grpc/ClientStreamTracer;
.source "ForwardingClientStreamTracer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lio/grpc/ClientStreamTracer;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lio/grpc/ClientStreamTracer;
.end method

.method public inboundHeaders()V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientStreamTracer;->inboundHeaders()V

    .line 45
    return-void
.end method

.method public inboundMessage(I)V
    .locals 1
    .param p1, "seqNo"    # I

    .line 64
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->inboundMessage(I)V

    .line 65
    return-void
.end method

.method public inboundMessageRead(IJJ)V
    .locals 6
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 74
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/ClientStreamTracer;->inboundMessageRead(IJJ)V

    .line 75
    return-void
.end method

.method public inboundTrailers(Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "trailers"    # Lio/grpc/Metadata;

    .line 49
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->inboundTrailers(Lio/grpc/Metadata;)V

    .line 50
    return-void
.end method

.method public inboundUncompressedSize(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 94
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->inboundUncompressedSize(J)V

    .line 95
    return-void
.end method

.method public inboundWireSize(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 89
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->inboundWireSize(J)V

    .line 90
    return-void
.end method

.method public outboundHeaders()V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ClientStreamTracer;->outboundHeaders()V

    .line 40
    return-void
.end method

.method public outboundMessage(I)V
    .locals 1
    .param p1, "seqNo"    # I

    .line 59
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->outboundMessage(I)V

    .line 60
    return-void
.end method

.method public outboundMessageSent(IJJ)V
    .locals 6
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 69
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/grpc/ClientStreamTracer;->outboundMessageSent(IJJ)V

    .line 70
    return-void
.end method

.method public outboundUncompressedSize(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 84
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->outboundUncompressedSize(J)V

    .line 85
    return-void
.end method

.method public outboundWireSize(J)V
    .locals 1
    .param p1, "bytes"    # J

    .line 79
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->outboundWireSize(J)V

    .line 80
    return-void
.end method

.method public streamClosed(Lio/grpc/Status;)V
    .locals 1
    .param p1, "status"    # Lio/grpc/Status;

    .line 54
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ClientStreamTracer;->streamClosed(Lio/grpc/Status;)V

    .line 55
    return-void
.end method

.method public streamCreated(Lio/grpc/Attributes;Lio/grpc/Metadata;)V
    .locals 1
    .param p1, "transportAttrs"    # Lio/grpc/Attributes;
    .param p2, "headers"    # Lio/grpc/Metadata;

    .line 34
    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ClientStreamTracer;->streamCreated(Lio/grpc/Attributes;Lio/grpc/Metadata;)V

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 99
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lio/grpc/internal/ForwardingClientStreamTracer;->delegate()Lio/grpc/ClientStreamTracer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
