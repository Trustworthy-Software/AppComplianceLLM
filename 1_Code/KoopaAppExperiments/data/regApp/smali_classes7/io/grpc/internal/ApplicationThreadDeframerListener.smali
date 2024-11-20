.class final Lio/grpc/internal/ApplicationThreadDeframerListener;
.super Ljava/lang/Object;
.source "ApplicationThreadDeframerListener.java"

# interfaces
.implements Lio/grpc/internal/MessageDeframer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;
    }
.end annotation


# instance fields
.field private final messageReadQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field private final storedListener:Lio/grpc/internal/MessageDeframer$Listener;

.field private final transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;


# direct methods
.method public constructor <init>(Lio/grpc/internal/MessageDeframer$Listener;Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;)V
    .locals 1
    .param p1, "listener"    # Lio/grpc/internal/MessageDeframer$Listener;
    .param p2, "transportExecutor"    # Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener;->messageReadQueue:Ljava/util/Queue;

    .line 45
    const-string v0, "listener"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/MessageDeframer$Listener;

    iput-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    .line 46
    const-string v0, "transportExecutor"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    iput-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lio/grpc/internal/ApplicationThreadDeframerListener;)Lio/grpc/internal/MessageDeframer$Listener;
    .locals 1
    .param p0, "x0"    # Lio/grpc/internal/ApplicationThreadDeframerListener;

    .line 33
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener;->storedListener:Lio/grpc/internal/MessageDeframer$Listener;

    return-object v0
.end method


# virtual methods
.method public bytesRead(I)V
    .locals 2
    .param p1, "numBytes"    # I

    .line 51
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframerListener$1;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframerListener$1;-><init>(Lio/grpc/internal/ApplicationThreadDeframerListener;I)V

    invoke-interface {v0, v1}, Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;->runOnTransportThread(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public deframeFailed(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 81
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframerListener$3;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframerListener$3;-><init>(Lio/grpc/internal/ApplicationThreadDeframerListener;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;->runOnTransportThread(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method

.method public deframerClosed(Z)V
    .locals 2
    .param p1, "hasPartialMessage"    # Z

    .line 70
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener;->transportExecutor:Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;

    new-instance v1, Lio/grpc/internal/ApplicationThreadDeframerListener$2;

    invoke-direct {v1, p0, p1}, Lio/grpc/internal/ApplicationThreadDeframerListener$2;-><init>(Lio/grpc/internal/ApplicationThreadDeframerListener;Z)V

    invoke-interface {v0, v1}, Lio/grpc/internal/ApplicationThreadDeframerListener$TransportExecutor;->runOnTransportThread(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public messageReadQueuePoll()Ljava/io/InputStream;
    .locals 1

    .line 91
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener;->messageReadQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public messagesAvailable(Lio/grpc/internal/StreamListener$MessageProducer;)V
    .locals 2
    .param p1, "producer"    # Lio/grpc/internal/StreamListener$MessageProducer;

    .line 63
    nop

    :goto_0
    invoke-interface {p1}, Lio/grpc/internal/StreamListener$MessageProducer;->next()Ljava/io/InputStream;

    move-result-object v0

    move-object v1, v0

    .local v1, "message":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lio/grpc/internal/ApplicationThreadDeframerListener;->messageReadQueue:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
