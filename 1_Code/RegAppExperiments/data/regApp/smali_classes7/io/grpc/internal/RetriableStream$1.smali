.class Lio/grpc/internal/RetriableStream$1;
.super Ljava/lang/Object;
.source "RetriableStream.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/RetriableStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/RetriableStream;


# direct methods
.method constructor <init>(Lio/grpc/internal/RetriableStream;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/RetriableStream;

    .line 70
    .local p0, "this":Lio/grpc/internal/RetriableStream$1;, "Lio/grpc/internal/RetriableStream$1;"
    iput-object p1, p0, Lio/grpc/internal/RetriableStream$1;->this$0:Lio/grpc/internal/RetriableStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 73
    .local p0, "this":Lio/grpc/internal/RetriableStream$1;, "Lio/grpc/internal/RetriableStream$1;"
    invoke-static {p2}, Lio/grpc/Status;->fromThrowable(Ljava/lang/Throwable;)Lio/grpc/Status;

    move-result-object v0

    .line 74
    const-string v1, "Uncaught exception in the SynchronizationContext. Re-thrown."

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0
.end method
