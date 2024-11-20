.class final Lio/grpc/ServerRegistry$ServerPriorityAccessor;
.super Ljava/lang/Object;
.source "ServerRegistry.java"

# interfaces
.implements Lio/grpc/ServiceProviders$PriorityAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/ServerRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerPriorityAccessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/grpc/ServiceProviders$PriorityAccessor<",
        "Lio/grpc/ServerProvider;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/ServerRegistry$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/ServerRegistry$1;

    .line 143
    invoke-direct {p0}, Lio/grpc/ServerRegistry$ServerPriorityAccessor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority(Lio/grpc/ServerProvider;)I
    .locals 1
    .param p1, "provider"    # Lio/grpc/ServerProvider;

    .line 152
    invoke-virtual {p1}, Lio/grpc/ServerProvider;->priority()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 143
    check-cast p1, Lio/grpc/ServerProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ServerRegistry$ServerPriorityAccessor;->getPriority(Lio/grpc/ServerProvider;)I

    move-result p1

    return p1
.end method

.method public isAvailable(Lio/grpc/ServerProvider;)Z
    .locals 1
    .param p1, "provider"    # Lio/grpc/ServerProvider;

    .line 147
    invoke-virtual {p1}, Lio/grpc/ServerProvider;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isAvailable(Ljava/lang/Object;)Z
    .locals 0

    .line 143
    check-cast p1, Lio/grpc/ServerProvider;

    invoke-virtual {p0, p1}, Lio/grpc/ServerRegistry$ServerPriorityAccessor;->isAvailable(Lio/grpc/ServerProvider;)Z

    move-result p1

    return p1
.end method
