.class public final Lio/grpc/internal/StatsTraceContext;
.super Ljava/lang/Object;
.source "StatsTraceContext.java"


# static fields
.field public static final NOOP:Lio/grpc/internal/StatsTraceContext;


# instance fields
.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final tracers:[Lio/grpc/StreamTracer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lio/grpc/internal/StatsTraceContext;

    const/4 v1, 0x0

    new-array v1, v1, [Lio/grpc/StreamTracer;

    invoke-direct {v0, v1}, Lio/grpc/internal/StatsTraceContext;-><init>([Lio/grpc/StreamTracer;)V

    sput-object v0, Lio/grpc/internal/StatsTraceContext;->NOOP:Lio/grpc/internal/StatsTraceContext;

    return-void
.end method

.method constructor <init>([Lio/grpc/StreamTracer;)V
    .locals 2
    .param p1, "tracers"    # [Lio/grpc/StreamTracer;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/grpc/internal/StatsTraceContext;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    iput-object p1, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    .line 78
    return-void
.end method

.method public static newClientContext([Lio/grpc/ClientStreamTracer;Lio/grpc/Attributes;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;
    .locals 4
    .param p0, "tracers"    # [Lio/grpc/ClientStreamTracer;
    .param p1, "transportAtts"    # Lio/grpc/Attributes;
    .param p2, "headers"    # Lio/grpc/Metadata;

    .line 51
    new-instance v0, Lio/grpc/internal/StatsTraceContext;

    invoke-direct {v0, p0}, Lio/grpc/internal/StatsTraceContext;-><init>([Lio/grpc/StreamTracer;)V

    .line 52
    .local v0, "ctx":Lio/grpc/internal/StatsTraceContext;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 53
    .local v3, "tracer":Lio/grpc/ClientStreamTracer;
    invoke-virtual {v3, p1, p2}, Lio/grpc/ClientStreamTracer;->streamCreated(Lio/grpc/Attributes;Lio/grpc/Metadata;)V

    .line 52
    .end local v3    # "tracer":Lio/grpc/ClientStreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-object v0
.end method

.method public static newServerContext(Ljava/util/List;Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/internal/StatsTraceContext;
    .locals 3
    .param p1, "fullMethodName"    # Ljava/lang/String;
    .param p2, "headers"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;",
            "Ljava/lang/String;",
            "Lio/grpc/Metadata;",
            ")",
            "Lio/grpc/internal/StatsTraceContext;"
        }
    .end annotation

    .line 65
    .local p0, "factories":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerStreamTracer$Factory;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    sget-object v0, Lio/grpc/internal/StatsTraceContext;->NOOP:Lio/grpc/internal/StatsTraceContext;

    return-object v0

    .line 68
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lio/grpc/StreamTracer;

    .line 69
    .local v0, "tracers":[Lio/grpc/StreamTracer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 70
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/ServerStreamTracer$Factory;

    invoke-virtual {v2, p1, p2}, Lio/grpc/ServerStreamTracer$Factory;->newServerStreamTracer(Ljava/lang/String;Lio/grpc/Metadata;)Lio/grpc/ServerStreamTracer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lio/grpc/internal/StatsTraceContext;

    invoke-direct {v1, v0}, Lio/grpc/internal/StatsTraceContext;-><init>([Lio/grpc/StreamTracer;)V

    return-object v1
.end method


# virtual methods
.method public clientInboundHeaders()V
    .locals 5

    .line 105
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 106
    .local v3, "tracer":Lio/grpc/StreamTracer;
    move-object v4, v3

    check-cast v4, Lio/grpc/ClientStreamTracer;

    invoke-virtual {v4}, Lio/grpc/ClientStreamTracer;->inboundHeaders()V

    .line 105
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public clientInboundTrailers(Lio/grpc/Metadata;)V
    .locals 5
    .param p1, "trailers"    # Lio/grpc/Metadata;

    .line 116
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 117
    .local v3, "tracer":Lio/grpc/StreamTracer;
    move-object v4, v3

    check-cast v4, Lio/grpc/ClientStreamTracer;

    invoke-virtual {v4, p1}, Lio/grpc/ClientStreamTracer;->inboundTrailers(Lio/grpc/Metadata;)V

    .line 116
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method public clientOutboundHeaders()V
    .locals 5

    .line 94
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 95
    .local v3, "tracer":Lio/grpc/StreamTracer;
    move-object v4, v3

    check-cast v4, Lio/grpc/ClientStreamTracer;

    invoke-virtual {v4}, Lio/grpc/ClientStreamTracer;->outboundHeaders()V

    .line 94
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public getTracersForTest()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/StreamTracer;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public inboundMessage(I)V
    .locals 4
    .param p1, "seqNo"    # I

    .line 177
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 178
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1}, Lio/grpc/StreamTracer;->inboundMessage(I)V

    .line 177
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method public inboundMessageRead(IJJ)V
    .locals 10
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 199
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v9, v0, v2

    .line 200
    .local v9, "tracer":Lio/grpc/StreamTracer;
    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lio/grpc/StreamTracer;->inboundMessageRead(IJJ)V

    .line 199
    .end local v9    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method public inboundUncompressedSize(J)V
    .locals 4
    .param p1, "bytes"    # J

    .line 232
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 233
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->inboundUncompressedSize(J)V

    .line 232
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method

.method public inboundWireSize(J)V
    .locals 4
    .param p1, "bytes"    # J

    .line 243
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 244
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->inboundWireSize(J)V

    .line 243
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_0
    return-void
.end method

.method public outboundMessage(I)V
    .locals 4
    .param p1, "seqNo"    # I

    .line 166
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 167
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1}, Lio/grpc/StreamTracer;->outboundMessage(I)V

    .line 166
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public outboundMessageSent(IJJ)V
    .locals 10
    .param p1, "seqNo"    # I
    .param p2, "optionalWireSize"    # J
    .param p4, "optionalUncompressedSize"    # J

    .line 188
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v9, v0, v2

    .line 189
    .local v9, "tracer":Lio/grpc/StreamTracer;
    move-object v3, v9

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lio/grpc/StreamTracer;->outboundMessageSent(IJJ)V

    .line 188
    .end local v9    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    return-void
.end method

.method public outboundUncompressedSize(J)V
    .locals 4
    .param p1, "bytes"    # J

    .line 210
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 211
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->outboundUncompressedSize(J)V

    .line 210
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method

.method public outboundWireSize(J)V
    .locals 4
    .param p1, "bytes"    # J

    .line 221
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 222
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1, p2}, Lio/grpc/StreamTracer;->outboundWireSize(J)V

    .line 221
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-void
.end method

.method public serverCallStarted(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerStreamTracer$ServerCallInfo<",
            "**>;)V"
        }
    .end annotation

    .line 141
    .local p1, "callInfo":Lio/grpc/ServerStreamTracer$ServerCallInfo;, "Lio/grpc/ServerStreamTracer$ServerCallInfo<**>;"
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 142
    .local v3, "tracer":Lio/grpc/StreamTracer;
    move-object v4, v3

    check-cast v4, Lio/grpc/ServerStreamTracer;

    invoke-virtual {v4, p1}, Lio/grpc/ServerStreamTracer;->serverCallStarted(Lio/grpc/ServerStreamTracer$ServerCallInfo;)V

    .line 141
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public serverFilterContext(Lio/grpc/Context;)Lio/grpc/Context;
    .locals 6
    .param p1, "context"    # Lio/grpc/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Context;",
            ")",
            "Lio/grpc/Context;"
        }
    .end annotation

    .line 127
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Context;

    .line 128
    .local v0, "ctx":Lio/grpc/Context;
    iget-object v1, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 129
    .local v4, "tracer":Lio/grpc/StreamTracer;
    move-object v5, v4

    check-cast v5, Lio/grpc/ServerStreamTracer;

    invoke-virtual {v5, v0}, Lio/grpc/ServerStreamTracer;->filterContext(Lio/grpc/Context;)Lio/grpc/Context;

    move-result-object v0

    .line 130
    const-string v5, "%s returns null context"

    invoke-static {v0, v5, v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v4    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object v0
.end method

.method public streamClosed(Lio/grpc/Status;)V
    .locals 4
    .param p1, "status"    # Lio/grpc/Status;

    .line 153
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lio/grpc/internal/StatsTraceContext;->tracers:[Lio/grpc/StreamTracer;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 155
    .local v3, "tracer":Lio/grpc/StreamTracer;
    invoke-virtual {v3, p1}, Lio/grpc/StreamTracer;->streamClosed(Lio/grpc/Status;)V

    .line 154
    .end local v3    # "tracer":Lio/grpc/StreamTracer;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method
