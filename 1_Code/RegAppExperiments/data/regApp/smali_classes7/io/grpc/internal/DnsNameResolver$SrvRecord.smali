.class public final Lio/grpc/internal/DnsNameResolver$SrvRecord;
.super Ljava/lang/Object;
.source "DnsNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/internal/DnsNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SrvRecord"
.end annotation


# instance fields
.field public final host:Ljava/lang/String;

.field public final port:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    iput-object p1, p0, Lio/grpc/internal/DnsNameResolver$SrvRecord;->host:Ljava/lang/String;

    .line 559
    iput p2, p0, Lio/grpc/internal/DnsNameResolver$SrvRecord;->port:I

    .line 560
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 569
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 570
    return v0

    .line 572
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 575
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/grpc/internal/DnsNameResolver$SrvRecord;

    .line 576
    .local v2, "that":Lio/grpc/internal/DnsNameResolver$SrvRecord;
    iget v3, p0, Lio/grpc/internal/DnsNameResolver$SrvRecord;->port:I

    iget v4, v2, Lio/grpc/internal/DnsNameResolver$SrvRecord;->port:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lio/grpc/internal/DnsNameResolver$SrvRecord;->host:Ljava/lang/String;

    iget-object v4, v2, Lio/grpc/internal/DnsNameResolver$SrvRecord;->host:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 573
    .end local v2    # "that":Lio/grpc/internal/DnsNameResolver$SrvRecord;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 564
    iget-object v0, p0, Lio/grpc/internal/DnsNameResolver$SrvRecord;->host:Ljava/lang/String;

    iget v1, p0, Lio/grpc/internal/DnsNameResolver$SrvRecord;->port:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 581
    nop

    .line 582
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DnsNameResolver$SrvRecord;->host:Ljava/lang/String;

    .line 583
    const-string v2, "host"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lio/grpc/internal/DnsNameResolver$SrvRecord;->port:I

    .line 584
    const-string v2, "port"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 585
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    return-object v0
.end method
