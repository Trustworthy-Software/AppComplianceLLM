.class final Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;
.super Lio/grpc/internal/ContextRunnable;
.source "ServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->halfClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HalfClosed"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

.field final synthetic val$link:Lio/perfmark/Link;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Lio/perfmark/Link;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 858
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    iput-object p2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;->val$link:Lio/perfmark/Link;

    .line 859
    invoke-static {p1}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2800(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/grpc/Context$CancellableContext;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 860
    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 3

    .line 864
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ServerCallListener(app).halfClosed"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 865
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;->val$link:Lio/perfmark/Link;

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    .line 867
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$3000(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    invoke-interface {v0}, Lio/grpc/internal/ServerStreamListener;->halfClosed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 873
    nop

    .line 874
    return-void

    .line 868
    :catchall_0
    move-exception v0

    .line 869
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v2, v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$3100(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Ljava/lang/Throwable;)V

    .line 870
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 872
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1HalfClosed;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method
