.class Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;
.super Ljava/lang/Object;
.source "MigratingThreadDeframer.java"

# interfaces
.implements Lio/grpc/internal/MigratingThreadDeframer$Op;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/MigratingThreadDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeframeOp"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/MigratingThreadDeframer;

.field final synthetic val$data:Lio/grpc/internal/ReadableBuffer;


# direct methods
.method constructor <init>(Lio/grpc/internal/MigratingThreadDeframer;Lio/grpc/internal/ReadableBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/MigratingThreadDeframer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    iput-object p2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 227
    iget-object v0, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-interface {v0}, Lio/grpc/internal/ReadableBuffer;->close()V

    .line 228
    return-void
.end method

.method public run(Z)V
    .locals 3
    .param p1, "isDeframerOnTransportThread"    # Z

    .line 208
    const-string v0, "MigratingThreadDeframer.deframe"

    invoke-static {v0}, Lio/perfmark/PerfMark;->startTask(Ljava/lang/String;)V

    .line 210
    if-eqz p1, :cond_0

    .line 211
    :try_start_0
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {v1, v2}, Lio/grpc/internal/MessageDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 212
    return-void

    .line 222
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 216
    :cond_0
    :try_start_1
    iget-object v1, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v1

    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->val$data:Lio/grpc/internal/ReadableBuffer;

    invoke-virtual {v1, v2}, Lio/grpc/internal/MessageDeframer;->deframe(Lio/grpc/internal/ReadableBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 220
    goto :goto_0

    .line 217
    :catchall_1
    move-exception v1

    .line 218
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v2}, Lio/grpc/internal/MigratingThreadDeframer;->access$500(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/grpc/internal/ApplicationThreadDeframerListener;->deframeFailed(Ljava/lang/Throwable;)V

    .line 219
    iget-object v2, p0, Lio/grpc/internal/MigratingThreadDeframer$1DeframeOp;->this$0:Lio/grpc/internal/MigratingThreadDeframer;

    invoke-static {v2}, Lio/grpc/internal/MigratingThreadDeframer;->access$400(Lio/grpc/internal/MigratingThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/internal/MessageDeframer;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    .line 223
    nop

    .line 224
    return-void

    .line 222
    :goto_1
    invoke-static {v0}, Lio/perfmark/PerfMark;->stopTask(Ljava/lang/String;)V

    throw v1
.end method
