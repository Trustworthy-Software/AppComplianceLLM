.class Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;
.super Lio/grpc/internal/ContextRunnable;
.source "ClientCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ClientCallImpl;->startInternal(Lio/grpc/ClientCall$Listener;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClosedByNotFoundCompressor"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;

.field final synthetic val$compressorName:Ljava/lang/String;

.field final synthetic val$finalObserver:Lio/grpc/ClientCall$Listener;


# direct methods
.method constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ClientCallImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 232
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;, "Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->this$0:Lio/grpc/internal/ClientCallImpl;

    iput-object p2, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->val$finalObserver:Lio/grpc/ClientCall$Listener;

    iput-object p3, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->val$compressorName:Ljava/lang/String;

    .line 233
    invoke-static {p1}, Lio/grpc/internal/ClientCallImpl;->access$200(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 234
    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 5

    .line 238
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;, "Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->this$0:Lio/grpc/internal/ClientCallImpl;

    iget-object v1, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->val$finalObserver:Lio/grpc/ClientCall$Listener;

    sget-object v2, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    iget-object v3, p0, Lio/grpc/internal/ClientCallImpl$1ClosedByNotFoundCompressor;->val$compressorName:Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 241
    const-string v4, "Unable to find compressor by name %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v2

    new-instance v3, Lio/grpc/Metadata;

    invoke-direct {v3}, Lio/grpc/Metadata;-><init>()V

    .line 238
    invoke-static {v0, v1, v2, v3}, Lio/grpc/internal/ClientCallImpl;->access$300(Lio/grpc/internal/ClientCallImpl;Lio/grpc/ClientCall$Listener;Lio/grpc/Status;Lio/grpc/Metadata;)V

    .line 243
    return-void
.end method
