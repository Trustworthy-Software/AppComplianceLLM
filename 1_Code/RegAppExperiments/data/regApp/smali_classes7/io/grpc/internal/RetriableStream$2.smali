.class Lio/grpc/internal/RetriableStream$2;
.super Lio/grpc/ClientStreamTracer$Factory;
.source "RetriableStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->createSubstream(IZ)Lio/grpc/internal/RetriableStream$Substream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field final synthetic val$bufferSizeTracer:Lio/grpc/ClientStreamTracer;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/ClientStreamTracer;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;

    .line 238
    .local p0, "this":Lio/grpc/internal/RetriableStream$2;, "Lio/grpc/internal/RetriableStream$2;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$2;->this$0:Lio/grpc/internal/RetriableStream;

    iput-object p2, p0, Lio/grpc/internal/RetriableStream$2;->val$bufferSizeTracer:Lio/grpc/ClientStreamTracer;

    invoke-direct {p0}, Lio/grpc/ClientStreamTracer$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public newClientStreamTracer(Lio/grpc/ClientStreamTracer$StreamInfo;Lio/grpc/Metadata;)Lio/grpc/ClientStreamTracer;
    .locals 1
    .param p1, "info"    # Lio/grpc/ClientStreamTracer$StreamInfo;
    .param p2, "headers"    # Lio/grpc/Metadata;

    .line 242
    .local p0, "this":Lio/grpc/internal/RetriableStream$2;, "Lio/grpc/internal/RetriableStream$2;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$2;->val$bufferSizeTracer:Lio/grpc/ClientStreamTracer;

    return-object v0
.end method
