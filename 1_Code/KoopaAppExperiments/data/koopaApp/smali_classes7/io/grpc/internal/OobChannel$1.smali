.class Lio/grpc/internal/OobChannel$1;
.super Ljava/lang/Object;
.source "OobChannel.java"

# interfaces
.implements Lio/grpc/internal/ClientCallImpl$ClientStreamProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/OobChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/OobChannel;


# direct methods
.method constructor <init>(Lio/grpc/internal/OobChannel;)V
    .locals 0
    .param p1, "this$0"    # Lio/grpc/internal/OobChannel;

    .line 86
    iput-object p1, p0, Lio/grpc/internal/OobChannel$1;->this$0:Lio/grpc/internal/OobChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newStream(Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Lio/grpc/Metadata;Lio/grpc/Context;)Lio/grpc/internal/ClientStream;
    .locals 3
    .param p2, "callOptions"    # Lio/grpc/CallOptions;
    .param p3, "headers"    # Lio/grpc/Metadata;
    .param p4, "context"    # Lio/grpc/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/MethodDescriptor<",
            "**>;",
            "Lio/grpc/CallOptions;",
            "Lio/grpc/Metadata;",
            "Lio/grpc/Context;",
            ")",
            "Lio/grpc/internal/ClientStream;"
        }
    .end annotation

    .line 90
    .local p1, "method":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<**>;"
    const/4 v0, 0x0

    invoke-static {p2, p3, v0, v0}, Lio/grpc/internal/GrpcUtil;->getClientStreamTracers(Lio/grpc/CallOptions;Lio/grpc/Metadata;IZ)[Lio/grpc/ClientStreamTracer;

    move-result-object v0

    .line 92
    .local v0, "tracers":[Lio/grpc/ClientStreamTracer;
    invoke-virtual {p4}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object v1

    .line 97
    .local v1, "origContext":Lio/grpc/Context;
    :try_start_0
    iget-object v2, p0, Lio/grpc/internal/OobChannel$1;->this$0:Lio/grpc/internal/OobChannel;

    invoke-static {v2}, Lio/grpc/internal/OobChannel;->access$000(Lio/grpc/internal/OobChannel;)Lio/grpc/internal/DelayedClientTransport;

    move-result-object v2

    invoke-virtual {v2, p1, p3, p2, v0}, Lio/grpc/internal/DelayedClientTransport;->newStream(Lio/grpc/MethodDescriptor;Lio/grpc/Metadata;Lio/grpc/CallOptions;[Lio/grpc/ClientStreamTracer;)Lio/grpc/internal/ClientStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-virtual {p4, v1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    .line 97
    return-object v2

    .line 99
    :catchall_0
    move-exception v2

    invoke-virtual {p4, v1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    throw v2
.end method
