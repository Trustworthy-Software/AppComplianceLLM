.class Lio/grpc/internal/ApplicationThreadDeframer$1;
.super Ljava/lang/Object;
.source "ApplicationThreadDeframer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/ApplicationThreadDeframer;->request(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ApplicationThreadDeframer;

.field final synthetic val$numMessages:I


# direct methods
.method constructor <init>(Lio/grpc/internal/ApplicationThreadDeframer;I)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/ApplicationThreadDeframer;

    .line 72
    iput-object p1, p0, Lio/grpc/internal/ApplicationThreadDeframer$1;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    iput p2, p0, Lio/grpc/internal/ApplicationThreadDeframer$1;->val$numMessages:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$1;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/ApplicationThreadDeframer;->access$000(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/internal/MessageDeframer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframer$1;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v0}, Lio/grpc/internal/ApplicationThreadDeframer;->access$000(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/ApplicationThreadDeframer$1;->val$numMessages:I

    invoke-virtual {v0, v1}, Lio/grpc/internal/MessageDeframer;->request(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    .line 81
    .local v0, "t":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/grpc/internal/ApplicationThreadDeframer$1;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/ApplicationThreadDeframer;->access$100(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/ApplicationThreadDeframerListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/grpc/internal/ApplicationThreadDeframerListener;->deframeFailed(Ljava/lang/Throwable;)V

    .line 82
    iget-object v1, p0, Lio/grpc/internal/ApplicationThreadDeframer$1;->this$0:Lio/grpc/internal/ApplicationThreadDeframer;

    invoke-static {v1}, Lio/grpc/internal/ApplicationThreadDeframer;->access$000(Lio/grpc/internal/ApplicationThreadDeframer;)Lio/grpc/internal/MessageDeframer;

    move-result-object v1

    invoke-virtual {v1}, Lio/grpc/internal/MessageDeframer;->close()V

    .line 84
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
