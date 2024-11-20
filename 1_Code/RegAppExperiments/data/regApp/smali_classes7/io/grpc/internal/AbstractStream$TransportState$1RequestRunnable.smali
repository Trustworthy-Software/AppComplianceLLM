.class Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;
.super Ljava/lang/Object;
.source "AbstractStream.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/AbstractStream$TransportState;->requestMessagesFromDeframer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/AbstractStream$TransportState;

.field final synthetic val$link:Lio/perfmark/Link;

.field final synthetic val$numMessages:I


# direct methods
.method constructor <init>(Lio/grpc/internal/AbstractStream$TransportState;Lio/perfmark/Link;I)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/AbstractStream$TransportState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->this$0:Lio/grpc/internal/AbstractStream$TransportState;

    iput-object p2, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->val$link:Lio/perfmark/Link;

    iput p3, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 233
    const-string v0, "AbstractStream.request"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->val$link:Lio/perfmark/Link;

    invoke-static {v1}, Lio/perfmark/PerfMark;->linkIn(Lio/perfmark/Link;)V

    .line 236
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->this$0:Lio/grpc/internal/AbstractStream$TransportState;

    invoke-static {v1}, Lio/grpc/internal/AbstractStream$TransportState;->access$300(Lio/grpc/internal/AbstractStream$TransportState;)Lio/grpc/internal/Deframer;

    move-result-object v1

    iget v2, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->val$numMessages:I

    invoke-interface {v1, v2}, Lio/grpc/internal/Deframer;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v1

    .line 238
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    iget-object v2, p0, Lio/grpc/internal/AbstractStream$TransportState$1RequestRunnable;->this$0:Lio/grpc/internal/AbstractStream$TransportState;

    invoke-virtual {v2, v1}, Lio/grpc/internal/AbstractStream$TransportState;->deframeFailed(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 240
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 241
    nop

    .line 242
    return-void

    .line 240
    :catchall_1
    move-exception v1

    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v1
.end method
