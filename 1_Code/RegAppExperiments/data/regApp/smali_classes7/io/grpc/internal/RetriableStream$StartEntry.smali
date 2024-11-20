.class Lio/grpc/internal/RetriableStream$StartEntry;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Lio/grpc/internal/RetriableStream$BufferEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StartEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;

    .line 357
    .local p0, "this":Lio/grpc/internal/RetriableStream$StartEntry;, "Lio/grpc/internal/RetriableStream<TReqT;>.StartEntry;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$StartEntry;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public runWith(Lio/grpc/internal/RetriableStream$Substream;)V
    .locals 3
    .param p1, "substream"    # Lio/grpc/internal/RetriableStream$Substream;

    .line 360
    .local p0, "this":Lio/grpc/internal/RetriableStream$StartEntry;, "Lio/grpc/internal/RetriableStream<TReqT;>.StartEntry;"
    iget-object v0, p1, Lio/grpc/internal/RetriableStream$Substream;->stream:Lio/grpc/internal/ClientStream;

    new-instance v1, Lio/grpc/internal/RetriableStream$Sublistener;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$StartEntry;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {v1, v2, p1}, Lio/grpc/internal/RetriableStream$Sublistener;-><init>(Lio/grpc/internal/RetriableStream;Lio/grpc/internal/RetriableStream$Substream;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->start(Lio/grpc/internal/ClientStreamListener;)V

    .line 361
    return-void
.end method
