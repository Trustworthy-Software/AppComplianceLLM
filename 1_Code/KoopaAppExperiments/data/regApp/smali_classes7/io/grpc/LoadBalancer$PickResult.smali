.class public final Lio/grpc/LoadBalancer$PickResult;
.super Ljava/lang/Object;
.source "LoadBalancer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/LoadBalancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PickResult"
.end annotation


# static fields
.field private static final NO_RESULT:Lio/grpc/LoadBalancer$PickResult;


# instance fields
.field private final drop:Z

.field private final status:Lio/grpc/Status;

.field private final streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final subchannel:Lio/grpc/LoadBalancer$Subchannel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 483
    new-instance v0, Lio/grpc/LoadBalancer$PickResult;

    sget-object v1, Lio/grpc/Status;->OK:Lio/grpc/Status;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Lio/grpc/LoadBalancer$PickResult;-><init>(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/Status;Z)V

    sput-object v0, Lio/grpc/LoadBalancer$PickResult;->NO_RESULT:Lio/grpc/LoadBalancer$PickResult;

    return-void
.end method

.method private constructor <init>(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/Status;Z)V
    .locals 1
    .param p1, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "streamTracerFactory"    # Lio/grpc/ClientStreamTracer$Factory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "status"    # Lio/grpc/Status;
    .param p4, "drop"    # Z

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 497
    iput-object p1, p0, Lio/grpc/LoadBalancer$PickResult;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    .line 498
    iput-object p2, p0, Lio/grpc/LoadBalancer$PickResult;->streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    .line 499
    const-string v0, "status"

    invoke-static {p3, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/Status;

    iput-object v0, p0, Lio/grpc/LoadBalancer$PickResult;->status:Lio/grpc/Status;

    .line 500
    iput-boolean p4, p0, Lio/grpc/LoadBalancer$PickResult;->drop:Z

    .line 501
    return-void
.end method

.method public static withDrop(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;
    .locals 3
    .param p0, "status"    # Lio/grpc/Status;

    .line 610
    invoke-virtual {p0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "drop status shouldn\'t be OK"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 611
    new-instance v0, Lio/grpc/LoadBalancer$PickResult;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p0, v1}, Lio/grpc/LoadBalancer$PickResult;-><init>(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/Status;Z)V

    return-object v0
.end method

.method public static withError(Lio/grpc/Status;)Lio/grpc/LoadBalancer$PickResult;
    .locals 3
    .param p0, "error"    # Lio/grpc/Status;

    .line 598
    invoke-virtual {p0}, Lio/grpc/Status;->isOk()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error status shouldn\'t be OK"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 599
    new-instance v0, Lio/grpc/LoadBalancer$PickResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p0, v1}, Lio/grpc/LoadBalancer$PickResult;-><init>(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/Status;Z)V

    return-object v0
.end method

.method public static withNoResult()Lio/grpc/LoadBalancer$PickResult;
    .locals 1

    .line 620
    sget-object v0, Lio/grpc/LoadBalancer$PickResult;->NO_RESULT:Lio/grpc/LoadBalancer$PickResult;

    return-object v0
.end method

.method public static withSubchannel(Lio/grpc/LoadBalancer$Subchannel;)Lio/grpc/LoadBalancer$PickResult;
    .locals 1
    .param p0, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;

    .line 586
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/grpc/LoadBalancer$PickResult;->withSubchannel(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/LoadBalancer$PickResult;

    move-result-object v0

    return-object v0
.end method

.method public static withSubchannel(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ClientStreamTracer$Factory;)Lio/grpc/LoadBalancer$PickResult;
    .locals 4
    .param p0, "subchannel"    # Lio/grpc/LoadBalancer$Subchannel;
    .param p1, "streamTracerFactory"    # Lio/grpc/ClientStreamTracer$Factory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 575
    new-instance v0, Lio/grpc/LoadBalancer$PickResult;

    .line 576
    const-string v1, "subchannel"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/LoadBalancer$Subchannel;

    sget-object v2, Lio/grpc/Status;->OK:Lio/grpc/Status;

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lio/grpc/LoadBalancer$PickResult;-><init>(Lio/grpc/LoadBalancer$Subchannel;Lio/grpc/ClientStreamTracer$Factory;Lio/grpc/Status;Z)V

    .line 575
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 684
    instance-of v0, p1, Lio/grpc/LoadBalancer$PickResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 685
    return v1

    .line 687
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/LoadBalancer$PickResult;

    .line 688
    .local v0, "that":Lio/grpc/LoadBalancer$PickResult;
    iget-object v2, p0, Lio/grpc/LoadBalancer$PickResult;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    iget-object v3, v0, Lio/grpc/LoadBalancer$PickResult;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/LoadBalancer$PickResult;->status:Lio/grpc/Status;

    iget-object v3, v0, Lio/grpc/LoadBalancer$PickResult;->status:Lio/grpc/Status;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lio/grpc/LoadBalancer$PickResult;->streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    iget-object v3, v0, Lio/grpc/LoadBalancer$PickResult;->streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    .line 689
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lio/grpc/LoadBalancer$PickResult;->drop:Z

    iget-boolean v3, v0, Lio/grpc/LoadBalancer$PickResult;->drop:Z

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 688
    :goto_0
    return v1
.end method

.method public getStatus()Lio/grpc/Status;
    .locals 1

    .line 651
    iget-object v0, p0, Lio/grpc/LoadBalancer$PickResult;->status:Lio/grpc/Status;

    return-object v0
.end method

.method public getStreamTracerFactory()Lio/grpc/ClientStreamTracer$Factory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 641
    iget-object v0, p0, Lio/grpc/LoadBalancer$PickResult;->streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    return-object v0
.end method

.method public getSubchannel()Lio/grpc/LoadBalancer$Subchannel;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 631
    iget-object v0, p0, Lio/grpc/LoadBalancer$PickResult;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 675
    iget-object v0, p0, Lio/grpc/LoadBalancer$PickResult;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    iget-object v1, p0, Lio/grpc/LoadBalancer$PickResult;->status:Lio/grpc/Status;

    iget-object v2, p0, Lio/grpc/LoadBalancer$PickResult;->streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    iget-boolean v3, p0, Lio/grpc/LoadBalancer$PickResult;->drop:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDrop()Z
    .locals 1

    .line 660
    iget-boolean v0, p0, Lio/grpc/LoadBalancer$PickResult;->drop:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 665
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$PickResult;->subchannel:Lio/grpc/LoadBalancer$Subchannel;

    .line 666
    const-string v2, "subchannel"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$PickResult;->streamTracerFactory:Lio/grpc/ClientStreamTracer$Factory;

    .line 667
    const-string v2, "streamTracerFactory"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/LoadBalancer$PickResult;->status:Lio/grpc/Status;

    .line 668
    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lio/grpc/LoadBalancer$PickResult;->drop:Z

    .line 669
    const-string v2, "drop"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 665
    return-object v0
.end method
