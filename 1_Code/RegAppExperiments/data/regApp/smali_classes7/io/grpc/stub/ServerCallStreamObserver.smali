.class public abstract Lio/grpc/stub/ServerCallStreamObserver;
.super Lio/grpc/stub/CallStreamObserver;
.source "ServerCallStreamObserver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lio/grpc/stub/CallStreamObserver<",
        "TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lio/grpc/stub/ServerCallStreamObserver;, "Lio/grpc/stub/ServerCallStreamObserver<TRespT;>;"
    invoke-direct {p0}, Lio/grpc/stub/CallStreamObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public disableAutoRequest()V
    .locals 1

    .line 96
    .local p0, "this":Lio/grpc/stub/ServerCallStreamObserver;, "Lio/grpc/stub/ServerCallStreamObserver<TRespT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract isCancelled()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract request(I)V
.end method

.method public abstract setCompression(Ljava/lang/String;)V
.end method

.method public abstract setMessageCompression(Z)V
.end method

.method public abstract setOnCancelHandler(Ljava/lang/Runnable;)V
.end method

.method public setOnCloseHandler(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onCloseHandler"    # Ljava/lang/Runnable;

    .line 172
    .local p0, "this":Lio/grpc/stub/ServerCallStreamObserver;, "Lio/grpc/stub/ServerCallStreamObserver<TRespT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract setOnReadyHandler(Ljava/lang/Runnable;)V
.end method
