.class public final Lio/grpc/EquivalentAddressGroup;
.super Ljava/lang/Object;
.source "EquivalentAddressGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/EquivalentAddressGroup$Attr;
    }
.end annotation


# static fields
.field public static final ATTR_AUTHORITY_OVERRIDE:Lio/grpc/Attributes$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Attributes$Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final addrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final attrs:Lio/grpc/Attributes;

.field private final hashCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    nop

    .line 52
    const-string v0, "io.grpc.EquivalentAddressGroup.ATTR_AUTHORITY_OVERRIDE"

    invoke-static {v0}, Lio/grpc/Attributes$Key;->create(Ljava/lang/String;)Lio/grpc/Attributes$Key;

    move-result-object v0

    sput-object v0, Lio/grpc/EquivalentAddressGroup;->ATTR_AUTHORITY_OVERRIDE:Lio/grpc/Attributes$Key;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/SocketAddress;

    .line 84
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    invoke-direct {p0, p1, v0}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/net/SocketAddress;Lio/grpc/Attributes;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/net/SocketAddress;Lio/grpc/Attributes;)V
    .locals 1
    .param p1, "addr"    # Ljava/net/SocketAddress;
    .param p2, "attrs"    # Lio/grpc/Attributes;

    .line 91
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/util/List;Lio/grpc/Attributes;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    sget-object v0, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    invoke-direct {p0, p1, v0}, Lio/grpc/EquivalentAddressGroup;-><init>(Ljava/util/List;Lio/grpc/Attributes;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lio/grpc/Attributes;)V
    .locals 2
    .param p2, "attrs"    # Lio/grpc/Attributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;",
            "Lio/grpc/Attributes;",
            ")V"
        }
    .end annotation

    .line 71
    .local p1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/SocketAddress;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "addrs is empty"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/EquivalentAddressGroup;->addrs:Ljava/util/List;

    .line 74
    const-string v1, "attrs"

    invoke-static {p2, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/grpc/Attributes;

    iput-object v1, p0, Lio/grpc/EquivalentAddressGroup;->attrs:Lio/grpc/Attributes;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lio/grpc/EquivalentAddressGroup;->hashCode:I

    .line 78
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 131
    instance-of v0, p1, Lio/grpc/EquivalentAddressGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 132
    return v1

    .line 134
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/grpc/EquivalentAddressGroup;

    .line 135
    .local v0, "that":Lio/grpc/EquivalentAddressGroup;
    iget-object v2, p0, Lio/grpc/EquivalentAddressGroup;->addrs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, v0, Lio/grpc/EquivalentAddressGroup;->addrs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 136
    return v1

    .line 139
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lio/grpc/EquivalentAddressGroup;->addrs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 140
    iget-object v3, p0, Lio/grpc/EquivalentAddressGroup;->addrs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/SocketAddress;

    iget-object v4, v0, Lio/grpc/EquivalentAddressGroup;->addrs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 141
    return v1

    .line 139
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    .end local v2    # "i":I
    :cond_3
    iget-object v2, p0, Lio/grpc/EquivalentAddressGroup;->attrs:Lio/grpc/Attributes;

    iget-object v3, v0, Lio/grpc/EquivalentAddressGroup;->attrs:Lio/grpc/Attributes;

    invoke-virtual {v2, v3}, Lio/grpc/Attributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 145
    return v1

    .line 147
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public getAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lio/grpc/EquivalentAddressGroup;->addrs:Ljava/util/List;

    return-object v0
.end method

.method public getAttributes()Lio/grpc/Attributes;
    .locals 1

    .line 106
    iget-object v0, p0, Lio/grpc/EquivalentAddressGroup;->attrs:Lio/grpc/Attributes;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 118
    iget v0, p0, Lio/grpc/EquivalentAddressGroup;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/EquivalentAddressGroup;->addrs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/EquivalentAddressGroup;->attrs:Lio/grpc/Attributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
