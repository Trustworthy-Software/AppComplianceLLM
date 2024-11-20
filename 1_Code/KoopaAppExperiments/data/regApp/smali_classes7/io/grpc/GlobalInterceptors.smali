.class final Lio/grpc/GlobalInterceptors;
.super Ljava/lang/Object;
.source "GlobalInterceptors.java"


# static fields
.field private static clientInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static isGlobalInterceptorsTracersGet:Z

.field private static isGlobalInterceptorsTracersSet:Z

.field private static serverInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static serverStreamTracerFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lio/grpc/GlobalInterceptors;->clientInterceptors:Ljava/util/List;

    .line 29
    sput-object v0, Lio/grpc/GlobalInterceptors;->serverInterceptors:Ljava/util/List;

    .line 30
    sput-object v0, Lio/grpc/GlobalInterceptors;->serverStreamTracerFactories:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized getClientInterceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ClientInterceptor;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/grpc/GlobalInterceptors;

    monitor-enter v0

    .line 78
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersGet:Z

    .line 79
    sget-object v1, Lio/grpc/GlobalInterceptors;->clientInterceptors:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getServerInterceptors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerInterceptor;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/grpc/GlobalInterceptors;

    monitor-enter v0

    .line 84
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersGet:Z

    .line 85
    sget-object v1, Lio/grpc/GlobalInterceptors;->serverInterceptors:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized getServerStreamTracerFactories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/grpc/ServerStreamTracer$Factory;",
            ">;"
        }
    .end annotation

    const-class v0, Lio/grpc/GlobalInterceptors;

    monitor-enter v0

    .line 90
    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersGet:Z

    .line 91
    sget-object v1, Lio/grpc/GlobalInterceptors;->serverStreamTracerFactories:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 89
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setInterceptorsTracers(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
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

    .local p0, "clientInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    .local p1, "serverInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerInterceptor;>;"
    .local p2, "serverStreamTracerFactoryList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerStreamTracer$Factory;>;"
    const-class v0, Lio/grpc/GlobalInterceptors;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersGet:Z

    if-nez v1, :cond_1

    .line 63
    sget-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersSet:Z

    if-nez v1, :cond_0

    .line 66
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lio/grpc/GlobalInterceptors;->clientInterceptors:Ljava/util/List;

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lio/grpc/GlobalInterceptors;->serverInterceptors:Ljava/util/List;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lio/grpc/GlobalInterceptors;->serverStreamTracerFactories:Ljava/util/List;

    .line 73
    const/4 v1, 0x1

    sput-boolean v1, Lio/grpc/GlobalInterceptors;->isGlobalInterceptorsTracersSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    .line 64
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Global interceptors and tracers are already set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Set cannot be called after any get call"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local p0    # "clientInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ClientInterceptor;>;"
    .end local p1    # "serverInterceptorList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerInterceptor;>;"
    .end local p2    # "serverStreamTracerFactoryList":Ljava/util/List;, "Ljava/util/List<Lio/grpc/ServerStreamTracer$Factory;>;"
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
