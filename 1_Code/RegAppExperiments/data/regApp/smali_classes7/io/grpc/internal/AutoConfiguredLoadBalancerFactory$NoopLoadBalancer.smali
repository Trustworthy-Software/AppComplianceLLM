.class final Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$NoopLoadBalancer;
.super Lio/grpc/LoadBalancer;
.source "AutoConfiguredLoadBalancerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/AutoConfiguredLoadBalancerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NoopLoadBalancer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lio/grpc/LoadBalancer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$1;

    .line 64
    invoke-direct {p0}, Lio/grpc/internal/AutoConfiguredLoadBalancerFactory$NoopLoadBalancer;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)Z
    .locals 1
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public handleNameResolutionError(Lio/grpc/Status;)V
    .locals 0
    .param p1, "error"    # Lio/grpc/Status;

    .line 78
    return-void
.end method

.method public handleResolvedAddresses(Lio/grpc/LoadBalancer$ResolvedAddresses;)V
    .locals 0
    .param p1, "resolvedAddresses"    # Lio/grpc/LoadBalancer$ResolvedAddresses;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 81
    return-void
.end method
