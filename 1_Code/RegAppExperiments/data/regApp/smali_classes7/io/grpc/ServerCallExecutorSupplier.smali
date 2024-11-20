.class public interface abstract Lio/grpc/ServerCallExecutorSupplier;
.super Ljava/lang/Object;
.source "ServerCallExecutorSupplier.java"


# virtual methods
.method public abstract getExecutor(Lio/grpc/ServerCall;Lio/grpc/Metadata;)Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ReqT:",
            "Ljava/lang/Object;",
            "RespT:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/ServerCall<",
            "TReqT;TRespT;>;",
            "Lio/grpc/Metadata;",
            ")",
            "Ljava/util/concurrent/Executor;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method
