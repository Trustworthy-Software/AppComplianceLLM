.class public abstract Lio/grpc/internal/AbstractManagedChannelImplBuilder;
.super Lio/grpc/ManagedChannelBuilder;
.source "AbstractManagedChannelImplBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;>",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected maxInboundMessageSize:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 57
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

    .line 52
    const/high16 v0, 0x400000

    iput v0, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    .line 57
    return-void
.end method

.method public static forAddress(Ljava/lang/String;I)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass failed to hide static factory"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static forTarget(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 2
    .param p0, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass failed to hide static factory"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lio/grpc/ManagedChannel;
    .locals 1

    .line 297
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->build()Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;

    .line 162
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;

    .line 156
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    .line 144
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->defaultServiceConfig(Ljava/util/Map;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultServiceConfig(Ljava/util/Map;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    .local p1, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ManagedChannelBuilder;

    .line 282
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lio/grpc/ManagedChannelBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/ManagedChannelBuilder<",
            "*>;"
        }
    .end annotation
.end method

.method public bridge synthetic directExecutor()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->directExecutor()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public directExecutor()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->directExecutor()Lio/grpc/ManagedChannelBuilder;

    .line 83
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->disableRetry()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableRetry()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->disableRetry()Lio/grpc/ManagedChannelBuilder;

    .line 252
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->disableServiceConfigLookUp()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableServiceConfigLookUp()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;

    .line 288
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic enableFullStreamDecompression()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->enableFullStreamDecompression()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableFullStreamDecompression()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->enableFullStreamDecompression()Lio/grpc/ManagedChannelBuilder;

    .line 150
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic enableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->enableRetry()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableRetry()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->enableRetry()Lio/grpc/ManagedChannelBuilder;

    .line 258
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;

    .line 89
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "value"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 168
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->intercept(Ljava/util/List;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Ljava/util/List;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;)TT;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;

    .line 101
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "interceptors"    # [Lio/grpc/ClientInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/ClientInterceptor;",
            ")TT;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;

    .line 107
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
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

    .line 209
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 210
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
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

    .line 215
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 216
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveWithoutCalls(Z)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;

    .line 222
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxHedgedAttempts(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxHedgedAttempts(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "maxHedgedAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;

    .line 234
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMessageSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 2
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "negative max"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 197
    iput p1, p0, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMessageSize:I

    .line 198
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxInboundMetadataSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 203
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;

    .line 204
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxRetryAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxRetryAttempts(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxRetryAttempts(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "maxRetryAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxRetryAttempts(I)Lio/grpc/ManagedChannelBuilder;

    .line 228
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->maxTraceEvents(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxTraceEvents(I)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "maxTraceEvents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 269
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;

    .line 270
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "resolverFactory"    # Lio/grpc/NameResolver$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/NameResolver$Factory;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 137
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;

    .line 138
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;

    .line 95
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->overrideAuthority(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public overrideAuthority(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    .line 119
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->perRpcBufferLimit(J)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public perRpcBufferLimit(J)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ManagedChannelBuilder;->perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;

    .line 246
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "proxyDetector"    # Lio/grpc/ProxyDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ProxyDetector;",
            ")TT;"
        }
    .end annotation

    .line 275
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ManagedChannelBuilder;

    .line 276
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->retryBufferSize(J)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public retryBufferSize(J)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 239
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ManagedChannelBuilder;->retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;

    .line 240
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "binaryLog"    # Lio/grpc/BinaryLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BinaryLog;",
            ")TT;"
        }
    .end annotation

    .line 263
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ManagedChannelBuilder;

    .line 264
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected final thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    move-object v0, p0

    .line 311
    .local v0, "thisT":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "TT;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 302
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->usePlaintext()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public usePlaintext()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->usePlaintext()Lio/grpc/ManagedChannelBuilder;

    .line 125
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic useTransportSecurity()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->useTransportSecurity()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useTransportSecurity()Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->useTransportSecurity()Lio/grpc/ManagedChannelBuilder;

    .line 131
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 43
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object p1

    return-object p1
.end method

.method public userAgent(Ljava/lang/String;)Lio/grpc/internal/AbstractManagedChannelImplBuilder;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lio/grpc/internal/AbstractManagedChannelImplBuilder;, "Lio/grpc/internal/AbstractManagedChannelImplBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    .line 113
    invoke-virtual {p0}, Lio/grpc/internal/AbstractManagedChannelImplBuilder;->thisT()Lio/grpc/internal/AbstractManagedChannelImplBuilder;

    move-result-object v0

    return-object v0
.end method
