.class final Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;
.super Ljava/lang/Object;
.source "ServerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServerCallParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ReqT:",
        "Ljava/lang/Object;",
        "RespT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field call:Lio/grpc/internal/ServerCallImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/internal/ServerCallImpl<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field callHandler:Lio/grpc/ServerCallHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;


# direct methods
.method public constructor <init>(Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;Lio/grpc/internal/ServerCallImpl;Lio/grpc/ServerCallHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/internal/ServerCallImpl<",
            "TReqT;TRespT;>;",
            "Lio/grpc/ServerCallHandler<",
            "TReqT;TRespT;>;)V"
        }
    .end annotation

    .line 693
    .local p0, "this":Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;, "Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters<TReqT;TRespT;>;"
    .local p2, "call":Lio/grpc/internal/ServerCallImpl;, "Lio/grpc/internal/ServerCallImpl<TReqT;TRespT;>;"
    .local p3, "callHandler":Lio/grpc/ServerCallHandler;, "Lio/grpc/ServerCallHandler<TReqT;TRespT;>;"
    iput-object p1, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;->this$1:Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 694
    iput-object p2, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;->call:Lio/grpc/internal/ServerCallImpl;

    .line 695
    iput-object p3, p0, Lio/grpc/internal/ServerImpl$ServerTransportListenerImpl$ServerCallParameters;->callHandler:Lio/grpc/ServerCallHandler;

    .line 696
    return-void
.end method
