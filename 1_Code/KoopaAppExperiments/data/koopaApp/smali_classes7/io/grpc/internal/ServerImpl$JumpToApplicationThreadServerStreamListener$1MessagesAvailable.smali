.class final Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;
.super Lio/grpc/internal/ContextRunnable;
.source "ServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MessagesAvailable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

.field final synthetic val$link:Lio/perfmark/Link;

.field final synthetic val$producer:Lio/grpc/internal/StreamListener$MessageProducer;


# direct methods
.method constructor <init>(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Lio/perfmark/Link;Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 826
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    iput-object p2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->val$link:Lio/perfmark/Link;

    iput-object p3, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->val$producer:Lio/grpc/internal/StreamListener$MessageProducer;

    .line 827
    invoke-static {p1}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2800(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/grpc/Context$CancellableContext;

    move-result-object p2

    invoke-direct {p0, p2}, Lio/grpc/internal/ContextRunnable;-><init>(Lio/grpc/Context;)V

    .line 828
    return-void
.end method


# virtual methods
.method public runInContext()V
    .locals 3

    .line 832
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;

    move-result-object v0

    const-string v1, "ServerCallListener(app).messagesAvailable"

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 833
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->val$link:Lio/perfmark/Link;

    invoke-static {v0}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    .line 835
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$3000(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/grpc/internal/ServerStreamListener;

    move-result-object v0

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->val$producer:Lio/grpc/internal/StreamListener$MessageProducer;

    invoke-interface {v0, v2}, Lio/grpc/internal/ServerStreamListener;->messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    iget-object v0, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;

    move-result-object v0

    invoke-static {v1, v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    .line 841
    nop

    .line 842
    return-void

    .line 836
    :catchall_0
    move-exception v0

    .line 837
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v2, v0}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$3100(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;Ljava/lang/Throwable;)V

    .line 838
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 840
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener$1MessagesAvailable;->this$0:Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;

    invoke-static {v2}, Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;->access$2900(Lio/grpc/internal/ServerImpl$JumpToApplicationThreadServerStreamListener;)Lio/perfmark/Tag;

    move-result-object v2

    invoke-static {v1, v2}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;Lio/perfmark/Tag;)V

    throw v0
.end method
