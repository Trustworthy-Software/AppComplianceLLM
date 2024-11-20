.class public final Lio/grpc/okhttp/InternalOkHttpServerBuilder;
.super Ljava/lang/Object;
.source "InternalOkHttpServerBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTransportServers(Lio/grpc/okhttp/OkHttpServerBuilder;Ljava/util/List;)Lio/grpc/internal/InternalServer;
    .locals 1
    .param p0, "builder"    # Lio/grpc/okhttp/OkHttpServerBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/okhttp/OkHttpServerBuilder;",
            "Ljava/util/List<",
            "+",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)",
            "Lio/grpc/internal/InternalServer;"
        }
    .end annotation

    .line 33
    .local p1, "streamTracerFactories":Ljava/util/List;, "Ljava/util/List<+Lio/grpc/ServerStreamTracer$Factory;>;"
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->buildTransportServers(Ljava/util/List;)Lio/grpc/internal/InternalServer;

    move-result-object v0

    return-object v0
.end method

.method public static setStatsEnabled(Lio/grpc/okhttp/OkHttpServerBuilder;Z)V
    .locals 0
    .param p0, "builder"    # Lio/grpc/okhttp/OkHttpServerBuilder;
    .param p1, "value"    # Z

    .line 42
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->setStatsEnabled(Z)V

    .line 43
    return-void
.end method

.method public static setTransportTracerFactory(Lio/grpc/okhttp/OkHttpServerBuilder;Lio/grpc/internal/TransportTracer$Factory;)V
    .locals 0
    .param p0, "builder"    # Lio/grpc/okhttp/OkHttpServerBuilder;
    .param p1, "transportTracerFactory"    # Lio/grpc/internal/TransportTracer$Factory;

    .line 38
    invoke-virtual {p0, p1}, Lio/grpc/okhttp/OkHttpServerBuilder;->setTransportTracerFactory(Lio/grpc/internal/TransportTracer$Factory;)Lio/grpc/okhttp/OkHttpServerBuilder;

    .line 39
    return-void
.end method
