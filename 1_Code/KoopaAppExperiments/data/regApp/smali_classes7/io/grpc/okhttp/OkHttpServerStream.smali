.class Lio/grpc/okhttp/OkHttpServerStream;
.super Lio/grpc/internal/AbstractServerStream;
.source "OkHttpServerStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/OkHttpServerStream$TransportState;,
        Lio/grpc/okhttp/OkHttpServerStream$Sink;
    }
.end annotation


# instance fields
.field private final attributes:Lio/grpc/Attributes;

.field private final authority:Ljava/lang/String;

.field private final sink:Lio/grpc/okhttp/OkHttpServerStream$Sink;

.field private final state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

.field private final transportTracer:Lio/grpc/internal/TransportTracer;


# direct methods
.method public constructor <init>(Lio/grpc/okhttp/OkHttpServerStream$TransportState;Lio/grpc/Attributes;Ljava/lang/String;Lio/grpc/internal/StatsTraceContext;Lio/grpc/internal/TransportTracer;)V
    .locals 1
    .param p1, "state"    # Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .param p2, "transportAttrs"    # Lio/grpc/Attributes;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "statsTraceCtx"    # Lio/grpc/internal/StatsTraceContext;
    .param p5, "transportTracer"    # Lio/grpc/internal/TransportTracer;

    .line 51
    new-instance v0, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;

    invoke-direct {v0}, Lio/grpc/okhttp/OkHttpWritableBufferAllocator;-><init>()V

    invoke-direct {p0, v0, p4}, Lio/grpc/internal/AbstractServerStream;-><init>(Lio/grpc/internal/WritableBufferAllocator;Lio/grpc/internal/StatsTraceContext;)V

    .line 41
    new-instance v0, Lio/grpc/okhttp/OkHttpServerStream$Sink;

    invoke-direct {v0, p0}, Lio/grpc/okhttp/OkHttpServerStream$Sink;-><init>(Lio/grpc/okhttp/OkHttpServerStream;)V

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->sink:Lio/grpc/okhttp/OkHttpServerStream$Sink;

    .line 52
    const-string v0, "state"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    .line 53
    const-string v0, "transportAttrs"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Attributes;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->attributes:Lio/grpc/Attributes;

    .line 54
    iput-object p3, p0, Lio/grpc/okhttp/OkHttpServerStream;->authority:Ljava/lang/String;

    .line 55
    const-string v0, "transportTracer"

    invoke-static {p5, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/TransportTracer;

    iput-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    .line 56
    return-void
.end method

.method static synthetic access$100(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerStream;

    .line 38
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/okhttp/OkHttpServerStream;I)V
    .locals 0
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerStream;
    .param p1, "x1"    # I

    .line 38
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerStream;->onSendingBytes(I)V

    return-void
.end method

.method static synthetic access$600(Lio/grpc/okhttp/OkHttpServerStream;)Lio/grpc/internal/TransportTracer;
    .locals 1
    .param p0, "x0"    # Lio/grpc/okhttp/OkHttpServerStream;

    .line 38
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->transportTracer:Lio/grpc/internal/TransportTracer;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic abstractServerStreamSink()Lio/grpc/internal/AbstractServerStream$Sink;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServerStream;->abstractServerStreamSink()Lio/grpc/okhttp/OkHttpServerStream$Sink;

    move-result-object v0

    return-object v0
.end method

.method protected abstractServerStreamSink()Lio/grpc/okhttp/OkHttpServerStream$Sink;
    .locals 1

    .line 65
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->sink:Lio/grpc/okhttp/OkHttpServerStream$Sink;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 80
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->attributes:Lio/grpc/Attributes;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->authority:Ljava/lang/String;

    return-object v0
.end method

.method public streamId()I
    .locals 1

    .line 70
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    invoke-static {v0}, Lio/grpc/okhttp/OkHttpServerStream$TransportState;->access$000(Lio/grpc/okhttp/OkHttpServerStream$TransportState;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic transportState()Lio/grpc/internal/AbstractServerStream$TransportState;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServerStream;->transportState()Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic transportState()Lio/grpc/internal/AbstractStream$TransportState;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lio/grpc/okhttp/OkHttpServerStream;->transportState()Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    move-result-object v0

    return-object v0
.end method

.method protected transportState()Lio/grpc/okhttp/OkHttpServerStream$TransportState;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/grpc/okhttp/OkHttpServerStream;->state:Lio/grpc/okhttp/OkHttpServerStream$TransportState;

    return-object v0
.end method
