.class final Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;
.super Ljava/lang/Object;
.source "ClientCallImpl.java"

# interfaces
.implements Lio/grpc/Context$CancellationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/ClientCallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContextCancellationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/ClientCallImpl;


# direct methods
.method private constructor <init>(Lio/grpc/internal/ClientCallImpl;)V
    .locals 0

    .line 129
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ContextCancellationListener;"
    iput-object p1, p0, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/ClientCallImpl;Lio/grpc/internal/ClientCallImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/ClientCallImpl;
    .param p2, "x1"    # Lio/grpc/internal/ClientCallImpl$1;

    .line 129
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ContextCancellationListener;"
    invoke-direct {p0, p1}, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;-><init>(Lio/grpc/internal/ClientCallImpl;)V

    return-void
.end method


# virtual methods
.method public cancelled(Lio/grpc/Context;)V
    .locals 2
    .param p1, "context"    # Lio/grpc/Context;

    .line 132
    .local p0, "this":Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;, "Lio/grpc/internal/ClientCallImpl<TReqT;TRespT;>.ContextCancellationListener;"
    iget-object v0, p0, Lio/grpc/internal/ClientCallImpl$ContextCancellationListener;->this$0:Lio/grpc/internal/ClientCallImpl;

    invoke-static {v0}, Lio/grpc/internal/ClientCallImpl;->access$100(Lio/grpc/internal/ClientCallImpl;)Lio/grpc/internal/ClientStream;

    move-result-object v0

    invoke-static {p1}, Lio/grpc/Contexts;->statusFromCancelled(Lio/grpc/Context;)Lio/grpc/Status;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/grpc/internal/ClientStream;->cancel(Lio/grpc/Status;)V

    .line 133
    return-void
.end method
