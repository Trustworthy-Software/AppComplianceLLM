.class Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;
.super Ljava/lang/Object;
.source "MigratingThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/MigratingThreadDeframer$Op;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/MigratingThreadDeframer;->requestFromTransportThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RequestAgainOp"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/MigratingThreadDeframer;

.field final synthetic val$numMessages:I


# direct methods
.method constructor <init>(Lio/grpc/internal/MigratingThreadDeframer;I)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/MigratingThreadDeframer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    iput p2, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Z)V
    .locals 3
    .param p1, "isDeframerOnTransportThread"    # Z

    .line 180
    if-nez p1, :cond_0

    .line 182
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    iget v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->val$numMessages:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/MigratingThreadDeframer;->request(I)V

    .line 183
    return-void

    .line 186
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->val$numMessages:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/MessageDeframer;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    .line 188
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/internal/ApplicationThreadDeframerListener;->deframeFailed(Ljava/lang/Throwable;)V

    .line 189
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/MessageDeframer;->close()V

    .line 191
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/MessageDeframer;->hasPendingDeliveries()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/MigratingThreadDeframer;->access$600(Lio/grpc/internal/MigratingThreadDeframer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 193
    :try_start_1
    const-string v1, "MigratingThreadDeframer.deframerOnApplicationThread"

    invoke-static {v1}, Lio/perfmark/PerfMark;->event(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$700(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v2}, Lio/grpc/internal/MigratingThreadDeframer;->access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/grpc/internal/MigratingThreadDeframer$MigratingDeframerListener;->setDelegate(Lio/grpc/internal/MessageDeframer$Listener;)V

    .line 195
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1RequestAgainOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lio/grpc/internal/MigratingThreadDeframer;->access$802(Lio/grpc/internal/MigratingThreadDeframer;Z)Z

    .line 196
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 198
    :cond_1
    :goto_1
    return-void
.end method
