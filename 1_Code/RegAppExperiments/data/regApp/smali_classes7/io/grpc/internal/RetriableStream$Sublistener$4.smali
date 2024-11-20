.class Lio/grpc/internal/RetriableStream$Sublistener$4;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/RetriableStream$Sublistener;->onReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/grpc/internal/RetriableStream$Sublistener;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream$Sublistener;)V
    .locals 0
    .param p1, "this$1"    # Lio/grpc/internal/RetriableStream$Sublistener;

    .line 1093
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener$4;, "Lio/grpc/internal/RetriableStream$Sublistener$4;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$Sublistener$4;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1096
    .local p0, "this":Lio/grpc/internal/RetriableStream$Sublistener$4;, "Lio/grpc/internal/RetriableStream$Sublistener$4;"
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener$4;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$100(Lio/grpc/internal/RetriableStream;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lio/grpc/internal/RetriableStream$Sublistener$4;->this$1:Lio/grpc/internal/RetriableStream$Sublistener;

    iget-object v0, v0, Lio/grpc/internal/RetriableStream$Sublistener;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-static {v0}, Lio/grpc/internal/RetriableStream;->access$200(Lio/grpc/internal/RetriableStream;)Lio/grpc/internal/ClientStreamListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ClientStreamListener;->onReady()V

    .line 1099
    :cond_0
    return-void
.end method
