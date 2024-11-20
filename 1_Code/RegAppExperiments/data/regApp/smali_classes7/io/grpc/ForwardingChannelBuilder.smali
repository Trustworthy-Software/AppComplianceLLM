.class public abstract Lio/grpc/ForwardingChannelBuilder;
.super Lio/grpc/ManagedChannelBuilder;
.source "ForwardingChannelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lio/grpc/ForwardingChannelBuilder<",
        "TT;>;>",
        "Lio/grpc/ManagedChannelBuilder<",
        "TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 42
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-direct {p0}, Lio/grpc/ManagedChannelBuilder;-><init>()V

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

    .line 49
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

    .line 57
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Subclass failed to hide static factory"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lio/grpc/ManagedChannel;
    .locals 1

    .line 258
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->build()Lio/grpc/ManagedChannel;

    move-result-object v0

    return-object v0
.end method

.method public compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/CompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/CompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;

    .line 147
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->compressorRegistry(Lio/grpc/CompressorRegistry;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "registry"    # Lio/grpc/DecompressorRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/DecompressorRegistry;",
            ")TT;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;

    .line 141
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->decompressorRegistry(Lio/grpc/DecompressorRegistry;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "policy"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    .line 129
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->defaultLoadBalancingPolicy(Ljava/lang/String;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ForwardingChannelBuilder;
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

    .line 242
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    .local p1, "serviceConfig":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ManagedChannelBuilder;

    .line 243
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->defaultServiceConfig(Ljava/util/Map;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
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

.method public directExecutor()Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->directExecutor()Lio/grpc/ManagedChannelBuilder;

    .line 68
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic directExecutor()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->directExecutor()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableRetry()Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->disableRetry()Lio/grpc/ManagedChannelBuilder;

    .line 213
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->disableRetry()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public disableServiceConfigLookUp()Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;

    .line 249
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableServiceConfigLookUp()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->disableServiceConfigLookUp()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableFullStreamDecompression()Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->enableFullStreamDecompression()Lio/grpc/ManagedChannelBuilder;

    .line 135
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic enableFullStreamDecompression()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->enableFullStreamDecompression()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public enableRetry()Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->enableRetry()Lio/grpc/ManagedChannelBuilder;

    .line 219
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic enableRetry()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->enableRetry()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public executor(Ljava/util/concurrent/Executor;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;

    .line 74
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic executor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->executor(Ljava/util/concurrent/Executor;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ForwardingChannelBuilder;
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

    .line 152
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 153
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/ForwardingChannelBuilder;->idleTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public intercept(Ljava/util/List;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;)TT;"
        }
    .end annotation

    .line 85
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    .local p1, "interceptors":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;

    .line 86
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public varargs intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "interceptors"    # [Lio/grpc/ClientInterceptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/grpc/ClientInterceptor;",
            ")TT;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;

    .line 92
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic intercept(Ljava/util/List;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->intercept(Ljava/util/List;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->intercept([Lio/grpc/ClientInterceptor;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ForwardingChannelBuilder;
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

    .line 170
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 171
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/ForwardingChannelBuilder;->keepAliveTime(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ForwardingChannelBuilder;
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

    .line 176
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lio/grpc/ManagedChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;

    .line 177
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/grpc/ForwardingChannelBuilder;->keepAliveTimeout(JLjava/util/concurrent/TimeUnit;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public keepAliveWithoutCalls(Z)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;

    .line 183
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keepAliveWithoutCalls(Z)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->keepAliveWithoutCalls(Z)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxHedgedAttempts(I)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "maxHedgedAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;

    .line 195
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxHedgedAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->maxHedgedAttempts(I)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMessageSize(I)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;

    .line 159
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxInboundMessageSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->maxInboundMessageSize(I)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxInboundMetadataSize(I)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "max"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 164
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;

    .line 165
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxInboundMetadataSize(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->maxInboundMetadataSize(I)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxRetryAttempts(I)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "maxRetryAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxRetryAttempts(I)Lio/grpc/ManagedChannelBuilder;

    .line 189
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxRetryAttempts(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->maxRetryAttempts(I)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public maxTraceEvents(I)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "maxTraceEvents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 230
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;

    .line 231
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic maxTraceEvents(I)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->maxTraceEvents(I)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ForwardingChannelBuilder;
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

    .line 122
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;

    .line 123
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ManagedChannelBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->nameResolverFactory(Lio/grpc/NameResolver$Factory;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")TT;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;

    .line 80
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->offloadExecutor(Ljava/util/concurrent/Executor;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public overrideAuthority(Ljava/lang/String;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    .line 104
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic overrideAuthority(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->overrideAuthority(Ljava/lang/String;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public perRpcBufferLimit(J)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ManagedChannelBuilder;->perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;

    .line 207
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic perRpcBufferLimit(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/grpc/ForwardingChannelBuilder;->perRpcBufferLimit(J)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "proxyDetector"    # Lio/grpc/ProxyDetector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/ProxyDetector;",
            ")TT;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ManagedChannelBuilder;

    .line 237
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->proxyDetector(Lio/grpc/ProxyDetector;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public retryBufferSize(J)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/grpc/ManagedChannelBuilder;->retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;

    .line 201
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retryBufferSize(J)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1, p2}, Lio/grpc/ForwardingChannelBuilder;->retryBufferSize(J)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method public setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "binaryLog"    # Lio/grpc/BinaryLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/BinaryLog;",
            ")TT;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ManagedChannelBuilder;

    .line 225
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->setBinaryLog(Lio/grpc/BinaryLog;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected final thisT()Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 271
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    move-object v0, p0

    .line 272
    .local v0, "thisT":Lio/grpc/ForwardingChannelBuilder;, "TT;"
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 263
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    const-string v1, "delegate"

    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usePlaintext()Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->usePlaintext()Lio/grpc/ManagedChannelBuilder;

    .line 110
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic usePlaintext()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->usePlaintext()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public useTransportSecurity()Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/ManagedChannelBuilder;->useTransportSecurity()Lio/grpc/ManagedChannelBuilder;

    .line 116
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic useTransportSecurity()Lio/grpc/ManagedChannelBuilder;
    .locals 1

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->useTransportSecurity()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public userAgent(Ljava/lang/String;)Lio/grpc/ForwardingChannelBuilder;
    .locals 1
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->delegate()Lio/grpc/ManagedChannelBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/ManagedChannelBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;

    .line 98
    invoke-virtual {p0}, Lio/grpc/ForwardingChannelBuilder;->thisT()Lio/grpc/ForwardingChannelBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic userAgent(Ljava/lang/String;)Lio/grpc/ManagedChannelBuilder;
    .locals 0

    .line 35
    .local p0, "this":Lio/grpc/ForwardingChannelBuilder;, "Lio/grpc/ForwardingChannelBuilder<TT;>;"
    invoke-virtual {p0, p1}, Lio/grpc/ForwardingChannelBuilder;->userAgent(Ljava/lang/String;)Lio/grpc/ForwardingChannelBuilder;

    move-result-object p1

    return-object p1
.end method
