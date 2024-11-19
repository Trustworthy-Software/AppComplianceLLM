.class public abstract Lio/grpc/ForwardingServerBuilder;
.super Lio/grpc/ServerBuilder;
.source "ForwardingServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/ServerBuilder<",
        "TT;>;>",
        "Lio/grpc/ServerBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 37
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-direct {p0}, Lio/grpc/ServerBuilder;-><init>()V

    return-void
.end method

.method public static forPort(I)Lio/grpc/ServerBuilder;
    .locals 2
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass failed to hide static factory"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private thisT()Lio/grpc/ServerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    move-object v0, p0

    .line 216
    .local v0, "thisT":Lio/grpc/ServerBuilder;, "TT;"
    return-object v0
.end method


# virtual methods
.method public addService(Lio/grpc/BindableService;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "bindableService"    # Lio/grpc/BindableService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BindableService;",
            ")TT;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->addService(Lio/grpc/BindableService;)Lio/grpc/ServerBuilder;

    .line 79
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "service"    # Lio/grpc/ServerServiceDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerServiceDefinition;",
            ")TT;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerBuilder;

    .line 73
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "factory"    # Lio/grpc/ServerStreamTracer$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ")TT;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->addStreamTracerFactory(Lio/grpc/ServerStreamTracer$Factory;)Lio/grpc/ServerBuilder;

    .line 97
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "filter"    # Lio/grpc/ServerTransportFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerTransportFilter;",
            ")TT;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->addTransportFilter(Lio/grpc/ServerTransportFilter;)Lio/grpc/ServerBuilder;

    .line 91
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/grpc/Server;
    .locals 1

    .line 202
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerBuilder;->build()Lio/grpc/Server;

    move-result-object v0

    return-object v0
.end method

.method public callExecutor(Lio/grpc/ServerCallExecutorSupplier;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "executorSupplier"    # Lio/grpc/ServerCallExecutorSupplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerCallExecutorSupplier;",
            ")TT;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->callExecutor(Lio/grpc/ServerCallExecutorSupplier;)Lio/grpc/ServerBuilder;

    .line 67
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ServerBuilder;

    .line 127
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ServerBuilder;

    .line 121
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lio/grpc/ServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method public directExecutor()Lio/grpc/ServerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ServerBuilder;->directExecutor()Lio/grpc/ServerBuilder;

    .line 55
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/ServerBuilder;

    .line 61
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "fallbackRegistry"    # Lio/grpc/HandlerRegistry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/HandlerRegistry;",
            ")TT;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/ServerBuilder;

    .line 103
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ServerBuilder;->handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;

    .line 133
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "interceptor"    # Lio/grpc/ServerInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerInterceptor;",
            ")TT;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->intercept(Lio/grpc/ServerInterceptor;)Lio/grpc/ServerBuilder;

    .line 85
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "keepAliveTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 138
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ServerBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;

    .line 139
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "keepAliveTimeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ServerBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;

    .line 145
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxConnectionAge(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "maxConnectionAge"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ServerBuilder;->maxConnectionAge(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;

    .line 157
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxConnectionAgeGrace(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "maxConnectionAgeGrace"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ServerBuilder;->maxConnectionAgeGrace(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;

    .line 163
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxConnectionIdle(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "maxConnectionIdle"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ServerBuilder;->maxConnectionIdle(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;

    .line 151
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxInboundMessageSize(I)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->maxInboundMessageSize(I)Lio/grpc/ServerBuilder;

    .line 181
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 186
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->maxInboundMetadataSize(I)Lio/grpc/ServerBuilder;

    .line 187
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public permitKeepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "keepAliveTime"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 168
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ServerBuilder;->permitKeepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ServerBuilder;

    .line 169
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public permitKeepAliveWithoutCalls(Z)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "permit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 174
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->permitKeepAliveWithoutCalls(Z)Lio/grpc/ServerBuilder;

    .line 175
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "binaryLog"    # Lio/grpc/BinaryLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BinaryLog;",
            ")TT;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ServerBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ServerBuilder;

    .line 193
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 207
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "certChain"    # Ljava/io/File;
    .param p2, "privateKey"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .line 108
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ServerBuilder;->useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/ServerBuilder;

    .line 109
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useTransportSecurity(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "certChain"    # Ljava/io/InputStream;
    .param p2, "privateKey"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lio/grpc/ForwardingServerBuilder;, "Lio/grpc/ForwardingServerBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingServerBuilder;->delegate()Lio/grpc/ServerBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ServerBuilder;->useTransportSecurity(Ljava/io/InputStream;Ljava/io/InputStream;)Lio/grpc/ServerBuilder;

    .line 115
    invoke-direct {p0}, Lio/grpc/ForwardingServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method
