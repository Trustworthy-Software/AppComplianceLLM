.class public final Lio/grpc/InternalGlobalInterceptors;
.super Ljava/lang/Object;
.source "InternalGlobalInterceptors.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {}, Lio/grpc/GlobalInterceptors;->getClientInterceptors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getServerInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {}, Lio/grpc/GlobalInterceptors;->getServerInterceptors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getServerStreamTracerFactories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-static {}, Lio/grpc/GlobalInterceptors;->getServerStreamTracerFactories()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static setInterceptorsTracers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;",
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p0, "clientInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    .local p1, "serverInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerInterceptor;>;"
    .local p2, "serverStreamTracerFactoryList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerStreamTracer$Factory;>;"
    invoke-static {p0, p1, p2}, Lio/grpc/GlobalInterceptors;->setInterceptorsTracers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 31
    return-void
.end method
