.class public abstract Lio/grpc/stub/ClientCallStreamObserver;
.super Lio/grpc/stub/CallStreamObserver;
.source "ClientCallStreamObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/CallStreamObserver<",
        "TReqT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lio/grpc/stub/ClientCallStreamObserver;, "Lio/grpc/stub/ClientCallStreamObserver<TReqT;>;"
    invoke-direct {p0}, Lio/grpc/stub/CallStreamObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/String;Ljava/lang/Throwable;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public disableAutoRequestWithInitial(I)V
    .locals 1
    .param p1, "request"    # I

    .line 60
    .local p0, "this":Lio/grpc/stub/ClientCallStreamObserver;, "Lio/grpc/stub/ClientCallStreamObserver<TReqT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract isReady()Z
.end method

.method public abstract request(I)V
.end method

.method public abstract setMessageCompression(Z)V
.end method

.method public abstract setOnReadyHandler(Ljava/lang/Runnable;)V
.end method
