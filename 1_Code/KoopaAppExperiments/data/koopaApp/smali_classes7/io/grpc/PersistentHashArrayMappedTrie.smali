.class final Lio/grpc/PersistentHashArrayMappedTrie;
.super Ljava/lang/Object;
.source "PersistentHashArrayMappedTrie.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/PersistentHashArrayMappedTrie$Node;,
        Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;,
        Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;,
        Lio/grpc/PersistentHashArrayMappedTrie$Leaf;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static get(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;TK;)TV;"
        }
    .end annotation

    .line 40
    .local p0, "root":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static put(Lio/grpc/PersistentHashArrayMappedTrie$Node;Ljava/lang/Object;Ljava/lang/Object;)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;TK;TV;)",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 50
    .local p0, "root":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_0

    .line 51
    new-instance v0, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    invoke-direct {v0, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 53
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, p2, v0, v1}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->put(Ljava/lang/Object;Ljava/lang/Object;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v0

    return-object v0
.end method
