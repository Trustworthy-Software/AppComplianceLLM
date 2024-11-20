.class final Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;
.super Ljava/lang/Object;
.source "PersistentHashArrayMappedTrie.java"

# interfaces
.implements Lio/grpc/PersistentHashArrayMappedTrie$Node;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/PersistentHashArrayMappedTrie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CollisionLeaf"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private final values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    const-class v0, Lio/grpc/PersistentHashArrayMappedTrie;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TK;TV;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "key1":Ljava/lang/Object;, "TK;"
    .local p2, "value1":Ljava/lang/Object;, "TV;"
    .local p3, "key2":Ljava/lang/Object;, "TK;"
    .local p4, "value2":Ljava/lang/Object;, "TV;"
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 115
    if-eq p1, p3, :cond_1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 117
    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TK;[TV;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "keys":[Ljava/lang/Object;, "[TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    .line 121
    iput-object p2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    .line 122
    return-void
.end method

.method private indexOfKey(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 166
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 167
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 168
    return v0

    .line 166
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    .end local v0    # "i":I
    :cond_1
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .param p2, "hash"    # I
    .param p3, "bitsConsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 132
    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 133
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 6
    .param p3, "hash"    # I
    .param p4, "bitsConsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 143
    .local v0, "thisHash":I
    if-eq v0, p3, :cond_0

    .line 145
    new-instance v1, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    invoke-direct {v1, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, p3, p0, v0, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->combine(Lio/grpc/PersistentHashArrayMappedTrie$Node;ILio/grpc/PersistentHashArrayMappedTrie$Node;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v1

    return-object v1

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    move v2, v1

    .local v2, "keyIndex":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 149
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 150
    .local v1, "newKeys":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    iget-object v4, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 151
    .local v3, "newValues":[Ljava/lang/Object;, "[TV;"
    aput-object p1, v1, v2

    .line 152
    aput-object p2, v3, v2

    .line 153
    new-instance v4, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;

    invoke-direct {v4, v1, v3}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v4

    .line 156
    .end local v1    # "newKeys":[Ljava/lang/Object;, "[TK;"
    .end local v3    # "newValues":[Ljava/lang/Object;, "[TV;"
    :cond_1
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 157
    .restart local v1    # "newKeys":[Ljava/lang/Object;, "[TK;"
    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    iget-object v4, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 158
    .restart local v3    # "newValues":[Ljava/lang/Object;, "[TV;"
    iget-object v4, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    array-length v5, v4

    aput-object p1, v1, v5

    .line 159
    array-length v4, v4

    aput-object p2, v3, v4

    .line 160
    new-instance v4, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;

    invoke-direct {v4, v1, v3}, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    return-object v4
.end method

.method public size()I
    .locals 1

    .line 126
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    iget-object v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 176
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;, "Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .local v0, "valuesSb":Ljava/lang/StringBuilder;
    const-string v1, "CollisionLeaf("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 179
    const-string v2, "(key="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->keys:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CollisionLeaf;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
