.class public final Lio/grpc/Attributes;
.super Ljava/lang/Object;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Attributes$Builder;,
        Lio/grpc/Attributes$Key;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final EMPTY:Lio/grpc/Attributes;

.field private static final EMPTY_MAP:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/grpc/Attributes$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lio/grpc/Attributes$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    nop

    .line 51
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    sput-object v0, Lio/grpc/Attributes;->EMPTY_MAP:Ljava/util/IdentityHashMap;

    .line 53
    new-instance v1, Lio/grpc/Attributes;

    invoke-direct {v1, v0}, Lio/grpc/Attributes;-><init>(Ljava/util/IdentityHashMap;)V

    sput-object v1, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    return-void
.end method

.method private constructor <init>(Ljava/util/IdentityHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap<",
            "Lio/grpc/Attributes$Key<",
            "*>;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p1, "data":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lio/grpc/Attributes$Key<*>;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    iput-object p1, p0, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    .line 58
    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/util/IdentityHashMap;Lio/grpc/Attributes$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/IdentityHashMap;
    .param p2, "x1"    # Lio/grpc/Attributes$1;

    .line 47
    invoke-direct {p0, p1}, Lio/grpc/Attributes;-><init>(Ljava/util/IdentityHashMap;)V

    return-void
.end method

.method static synthetic access$100(Lio/grpc/Attributes;)Ljava/util/IdentityHashMap;
    .locals 1
    .param p0, "x0"    # Lio/grpc/Attributes;

    .line 47
    iget-object v0, p0, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method public static newBuilder()Lio/grpc/Attributes$Builder;
    .locals 3

    .line 101
    new-instance v0, Lio/grpc/Attributes$Builder;

    sget-object v1, Lio/grpc/Attributes;->EMPTY:Lio/grpc/Attributes;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/grpc/Attributes$Builder;-><init>(Lio/grpc/Attributes;Lio/grpc/Attributes$1;)V

    return-object v0
.end method

.method public static newBuilder(Lio/grpc/Attributes;)Lio/grpc/Attributes$Builder;
    .locals 2
    .param p0, "base"    # Lio/grpc/Attributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    const-string v0, "base"

    invoke-static {p0, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance v0, Lio/grpc/Attributes$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/Attributes$Builder;-><init>(Lio/grpc/Attributes;Lio/grpc/Attributes$1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 174
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 175
    return v0

    .line 177
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 180
    :cond_1
    move-object v2, p1

    check-cast v2, Lio/grpc/Attributes;

    .line 181
    .local v2, "that":Lio/grpc/Attributes;
    iget-object v3, p0, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->size()I

    move-result v3

    iget-object v4, v2, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v4}, Ljava/util/IdentityHashMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 182
    return v1

    .line 184
    :cond_2
    iget-object v3, p0, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 185
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/Attributes$Key<*>;Ljava/lang/Object;>;"
    iget-object v5, v2, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 186
    return v1

    .line 188
    :cond_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, v2, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 189
    return v1

    .line 191
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/Attributes$Key<*>;Ljava/lang/Object;>;"
    :cond_4
    goto :goto_0

    .line 192
    :cond_5
    return v0

    .line 178
    .end local v2    # "that":Lio/grpc/Attributes;
    :cond_6
    :goto_1
    return v1
.end method

.method public get(Lio/grpc/Attributes$Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Attributes$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 66
    .local p1, "key":Lio/grpc/Attributes$Key;, "Lio/grpc/Attributes$Key<TT;>;"
    iget-object v0, p0, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "hashCode":I
    iget-object v1, p0, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 208
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/Attributes$Key<*>;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    .line 209
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lio/grpc/Attributes$Key<*>;Ljava/lang/Object;>;"
    goto :goto_0

    .line 210
    :cond_0
    return v0
.end method

.method public keys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/grpc/Attributes$Key<",
            "*>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    iget-object v0, p0, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method keysForTest()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lio/grpc/Attributes$Key<",
            "*>;>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/grpc/Attributes$Builder;
    .locals 2

    .line 109
    new-instance v0, Lio/grpc/Attributes$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/Attributes$Builder;-><init>(Lio/grpc/Attributes;Lio/grpc/Attributes$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 157
    iget-object v0, p0, Lio/grpc/Attributes;->data:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
