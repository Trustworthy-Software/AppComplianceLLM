.class Lio/grpc/internal/RetriableStream$4;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream;->safeCloseMasterListener(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;

.field final synthetic val$metadata:Lio/grpc/Metadata;

.field final synthetic val$progress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

.field final synthetic val$status:Lio/grpc/Status;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;

    .line 820
    .local p0, "this":Lio/grpc/internal/RetriableStream$4;, "Lio/grpc/internal/RetriableStream$4;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$4;->this$0:Lio/grpc/internal/RetriableStream;

    iput-object p2, p0, Lio/grpc/internal/RetriableStream$4;->val$status:Lio/grpc/Status;

    iput-object p3, p0, Lio/grpc/internal/RetriableStream$4;->val$progress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iput-object p4, p0, Lio/grpc/internal/RetriableStream$4;->val$metadata:Lio/grpc/Metadata;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 823
    .local p0, "this":Lio/grpc/internal/RetriableStream$4;, "Lio/grpc/internal/RetriableStream$4;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$4;->this$0:Lio/grpc/internal/RetriableStream;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/grpc/internal/RetriableStream;->access$102(Lio/grpc/internal/RetriableStream;Z)Z

    .line 824
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$4;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$200(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/RetriableStream$4;->val$status:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/internal/RetriableStream$4;->val$progress:Lio/grpc/internal/ClientStreamListener$RpcProgress;

    iget-object v3, p0, Lio/grpc/internal/RetriableStream$4;->val$metadata:Lio/grpc/Metadata;

    invoke-interface {v0, v1, v2, v3}, Lio/grpc/internal/ClientStreamListener;->closed(Lio/grpc/Status;Lio/grpc/internal/ClientStreamListener$RpcProgress;Lio/grpc/Metadata;)V

    .line 825
    return-void
.end method
