.class public abstract Lio/grpc/ServerBuilder;
.super Ljava/lang/Object;
.source "ServerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/ServerBuilder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forPort(I)Lio/grpc/ServerBuilder;
    .locals 1
    .param p0, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/grpc/ServerBuilder<",
            "*>;"
        }
    .end annotation

    .line 44
    invoke-static {}, Lio/grpc/ServerProvider;->provider()Lio/grpc/ServerProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/grpc/ServerProvider;->builderForPort(I)Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method private thisT()Lio/grpc/ServerBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 429
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    move-object v0, p0

    .line 430
    .local v0, "thisT":Lio/grpc/ServerBuilder;, "TT;"
    return-object v0
.end method


# virtual methods
.method public abstract addService(Lio/grpc/BindableService;)Lio/grpc/ServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BindableService;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ServerServiceDefinition;",
            ")TT;"
        }
    .end annotation
.end method

.method public final addServices(Ljava/util/List;)Lio/grpc/ServerBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ServerServiceDefinition;",
            ">;)TT;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerServiceDefinition;>;"
    const-string v0, "services"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/ServerServiceDefinition;

    .line 127
    .local v1, "service":Lio/grpc/ServerServiceDefinition;
    invoke-virtual {p0, v1}, Lio/grpc/ServerBuilder;->addService(Lio/grpc/ServerServiceDefinition;)Lio/grpc/ServerBuilder;

    .line 128
    .end local v1    # "service":Lio/grpc/ServerServiceDefinition;
    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0}, Lio/grpc/ServerBuilder;->thisT()Lio/grpc/ServerBuilder;

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

    .line 168
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 156
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract build()Lio/grpc/Server;
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

    .line 95
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    invoke-direct {p0}, Lio/grpc/ServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public abstract compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ServerBuilder;
    .param p1    # Lio/grpc/CompressorRegistry;
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
.end method

.method public abstract decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ServerBuilder;
    .param p1    # Lio/grpc/DecompressorRegistry;
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
.end method

.method public abstract directExecutor()Lio/grpc/ServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract executor(Ljava/util/concurrent/Executor;)Lio/grpc/ServerBuilder;
    .param p1    # Ljava/util/concurrent/Executor;
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
.end method

.method public abstract fallbackHandlerRegistry(Lio/grpc/HandlerRegistry;)Lio/grpc/ServerBuilder;
    .param p1    # Lio/grpc/HandlerRegistry;
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

    .line 243
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 144
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 257
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 273
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 304
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 320
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 289
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public maxInboundMessageSize(I)Lio/grpc/ServerBuilder;
    .locals 2
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 374
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "bytes must be >= 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 375
    invoke-direct {p0}, Lio/grpc/ServerBuilder;->thisT()Lio/grpc/ServerBuilder;

    move-result-object v0

    return-object v0
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/ServerBuilder;
    .locals 2
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 395
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "maxInboundMetadataSize must be > 0"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 397
    invoke-direct {p0}, Lio/grpc/ServerBuilder;->thisT()Lio/grpc/ServerBuilder;

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

    .line 341
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public permitKeepAliveWithoutCalls(Z)Lio/grpc/ServerBuilder;
    .locals 1
    .param p1, "permit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 354
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 410
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract useTransportSecurity(Ljava/io/File;Ljava/io/File;)Lio/grpc/ServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation
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

    .line 206
    .local p0, "this":Lio/grpc/ServerBuilder;, "Lio/grpc/ServerBuilder<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
