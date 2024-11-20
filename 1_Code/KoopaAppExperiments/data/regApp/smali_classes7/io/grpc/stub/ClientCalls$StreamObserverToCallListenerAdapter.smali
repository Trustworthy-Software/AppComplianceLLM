.class final Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;
.super Lio/grpc/stub/ClientCalls$StartableListener;
.source "ClientCalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/stub/ClientCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamObserverToCallListenerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/ClientCalls$StartableListener<",
        "TRespT;>;"
    }
.end annotation


# instance fields
.field private final adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<",
            "TReqT;>;"
        }
    .end annotation
.end field

.field private firstResponseReceived:Z

.field private final observer:Lio/grpc/stub/StreamObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/grpc/stub/StreamObserver;Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/stub/StreamObserver<",
            "TRespT;>;",
            "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<",
            "TReqT;>;)V"
        }
    .end annotation

    .line 450
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    .local p1, "observer":Lio/grpc/stub/StreamObserver;, "Lio/grpc/stub/StreamObserver<TRespT;>;"
    .local p2, "adapter":Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;, "Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter<TReqT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/grpc/stub/ClientCalls$StartableListener;-><init>(Lio/grpc/stub/ClientCalls$1;)V

    .line 451
    iput-object p1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->observer:Lio/grpc/stub/StreamObserver;

    .line 452
    iput-object p2, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    .line 453
    instance-of v0, p1, Lio/grpc/stub/ClientResponseObserver;

    if-eqz v0, :cond_0

    .line 455
    move-object v0, p1

    check-cast v0, Lio/grpc/stub/ClientResponseObserver;

    .line 457
    .local v0, "clientResponseObserver":Lio/grpc/stub/ClientResponseObserver;, "Lio/grpc/stub/ClientResponseObserver<TReqT;TRespT;>;"
    invoke-interface {v0, p2}, Lio/grpc/stub/ClientResponseObserver;->beforeStart(Lio/grpc/stub/ClientCallStreamObserver;)V

    .line 459
    .end local v0    # "clientResponseObserver":Lio/grpc/stub/ClientResponseObserver;, "Lio/grpc/stub/ClientResponseObserver<TReqT;TRespT;>;"
    :cond_0
    invoke-static {p2}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$100(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)V

    .line 460
    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;Lio/grpc/Metadata;)V
    .locals 2
    .param p1, "status"    # Lio/grpc/Status;
    .param p2, "trailers"    # Lio/grpc/Metadata;

    .line 484
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->observer:Lio/grpc/stub/StreamObserver;

    invoke-interface {v0}, Lio/grpc/stub/StreamObserver;->onCompleted()V

    goto :goto_0

    .line 487
    :cond_0
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->observer:Lio/grpc/stub/StreamObserver;

    invoke-virtual {p1, p2}, Lio/grpc/Status;->asRuntimeException(Lio/grpc/Metadata;)Lio/grpc/StatusRuntimeException;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/stub/StreamObserver;->onError(Ljava/lang/Throwable;)V

    .line 489
    :goto_0
    return-void
.end method

.method public onHeaders(Lio/grpc/Metadata;)V
    .locals 0
    .param p1, "headers"    # Lio/grpc/Metadata;

    .line 464
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 468
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    .local p1, "message":Ljava/lang/Object;, "TRespT;"
    iget-boolean v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->firstResponseReceived:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$200(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 469
    :cond_0
    sget-object v0, Lio/grpc/Status;->INTERNAL:Lio/grpc/Status;

    .line 470
    const-string v1, "More than one responses received for unary or client-streaming call"

    invoke-virtual {v0, v1}, Lio/grpc/Status;->withDescription(Ljava/lang/String;)Lio/grpc/Status;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Lio/grpc/Status;->asRuntimeException()Lio/grpc/StatusRuntimeException;

    move-result-object v0

    throw v0

    .line 473
    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->firstResponseReceived:Z

    .line 474
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->observer:Lio/grpc/stub/StreamObserver;

    invoke-interface {v1, p1}, Lio/grpc/stub/StreamObserver;->onNext(Ljava/lang/Object;)V

    .line 476
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v1}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$200(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v1}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$300(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-virtual {v1, v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->request(I)V

    .line 480
    :cond_2
    return-void
.end method

.method public onReady()V
    .locals 1

    .line 493
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$400(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$400(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 496
    :cond_0
    return-void
.end method

.method onStart()V
    .locals 2

    .line 500
    .local p0, "this":Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;, "Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter<TReqT;TRespT;>;"
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$500(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)I

    move-result v0

    if-lez v0, :cond_0

    .line 501
    iget-object v0, p0, Lio/grpc/stub/ClientCalls$StreamObserverToCallListenerAdapter;->adapter:Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;

    invoke-static {v0}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->access$500(Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lio/grpc/stub/ClientCalls$CallToStreamObserverAdapter;->request(I)V

    .line 503
    :cond_0
    return-void
.end method
