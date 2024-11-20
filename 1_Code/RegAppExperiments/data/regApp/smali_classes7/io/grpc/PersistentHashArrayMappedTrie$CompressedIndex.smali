.class final Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;
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
    name = "CompressedIndex"
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
.field static final synthetic $assertionsDisabled:Z = false

.field private static final BITS:I = 0x5

.field private static final BITS_MASK:I = 0x1f


# instance fields
.field final bitmap:I

.field private final size:I

.field final values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 187
    const-class v0, Lio/grpc/PersistentHashArrayMappedTrie;

    return-void
.end method

.method private constructor <init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V
    .locals 0
    .param p1, "bitmap"    # I
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;I)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;, "Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex<TK;TV;>;"
    .local p2, "values":[Lio/grpc/PersistentHashArrayMappedTrie$Node;, "[Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput p1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    .line 197
    iput-object p2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 198
    iput p3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->size:I

    .line 199
    return-void
.end method

.method static combine(Lio/grpc/PersistentHashArrayMappedTrie$Node;ILio/grpc/PersistentHashArrayMappedTrie$Node;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 7
    .param p1, "hash1"    # I
    .param p3, "hash2"    # I
    .param p4, "bitsConsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;I",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;II)",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 248
    .local p0, "node1":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    .local p2, "node2":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    if-eq p1, p3, :cond_2

    .line 249
    invoke-static {p1, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->indexBit(II)I

    move-result v0

    .line 250
    .local v0, "indexBit1":I
    invoke-static {p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->indexBit(II)I

    move-result v1

    .line 251
    .local v1, "indexBit2":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 252
    add-int/lit8 v4, p4, 0x5

    invoke-static {p0, p1, p2, p3, v4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->combine(Lio/grpc/PersistentHashArrayMappedTrie$Node;ILio/grpc/PersistentHashArrayMappedTrie$Node;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v4

    .line 254
    .local v4, "node":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    new-array v3, v3, [Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aput-object v4, v3, v2

    move-object v2, v3

    .line 255
    .local v2, "values":[Lio/grpc/PersistentHashArrayMappedTrie$Node;, "[Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    new-instance v3, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    invoke-interface {v4}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result v5

    invoke-direct {v3, v0, v2, v5}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;-><init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V

    return-object v3

    .line 258
    .end local v2    # "values":[Lio/grpc/PersistentHashArrayMappedTrie$Node;, "[Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    .end local v4    # "node":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    :cond_0
    invoke-static {p1, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->uncompressedIndex(II)I

    move-result v4

    invoke-static {p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->uncompressedIndex(II)I

    move-result v5

    if-le v4, v5, :cond_1

    .line 259
    move-object v4, p0

    .line 260
    .local v4, "nodeCopy":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    move-object p0, p2

    .line 261
    move-object p2, v4

    .line 264
    .end local v4    # "nodeCopy":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aput-object p0, v4, v2

    aput-object p2, v4, v3

    move-object v2, v4

    .line 265
    .restart local v2    # "values":[Lio/grpc/PersistentHashArrayMappedTrie$Node;, "[Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    new-instance v3, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    or-int v4, v0, v1

    invoke-interface {p0}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result v5

    invoke-interface {p2}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v3, v4, v2, v5}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;-><init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V

    return-object v3

    .line 248
    .end local v0    # "indexBit1":I
    .end local v1    # "indexBit2":I
    .end local v2    # "values":[Lio/grpc/PersistentHashArrayMappedTrie$Node;, "[Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private compressedIndex(I)I
    .locals 2
    .param p1, "indexBit"    # I

    .line 281
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;, "Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex<TK;TV;>;"
    iget v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    add-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method private static indexBit(II)I
    .locals 2
    .param p0, "hash"    # I
    .param p1, "bitsConsumed"    # I

    .line 289
    invoke-static {p0, p1}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->uncompressedIndex(II)I

    move-result v0

    .line 290
    .local v0, "uncompressedIndex":I
    const/4 v1, 0x1

    shl-int/2addr v1, v0

    return v1
.end method

.method private static uncompressedIndex(II)I
    .locals 1
    .param p0, "hash"    # I
    .param p1, "bitsConsumed"    # I

    .line 285
    ushr-int v0, p0, p1

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method


# virtual methods
.method public get(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 4
    .param p2, "hash"    # I
    .param p3, "bitsConsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)TV;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;, "Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p2, p3}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->indexBit(II)I

    move-result v0

    .line 209
    .local v0, "indexBit":I
    iget v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    and-int/2addr v1, v0

    if-nez v1, :cond_0

    .line 210
    const/4 v1, 0x0

    return-object v1

    .line 212
    :cond_0
    invoke-direct {p0, v0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->compressedIndex(I)I

    move-result v1

    .line 213
    .local v1, "compressedIndex":I
    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aget-object v2, v2, v1

    add-int/lit8 v3, p3, 0x5

    invoke-interface {v2, p1, p2, v3}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->get(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;
    .locals 7
    .param p3, "hash"    # I
    .param p4, "bitsConsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;II)",
            "Lio/grpc/PersistentHashArrayMappedTrie$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 218
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;, "Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p3, p4}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->indexBit(II)I

    move-result v0

    .line 219
    .local v0, "indexBit":I
    invoke-direct {p0, v0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->compressedIndex(I)I

    move-result v1

    .line 220
    .local v1, "compressedIndex":I
    iget v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    and-int v3, v2, v0

    if-nez v3, :cond_0

    .line 222
    or-int/2addr v2, v0

    .line 224
    .local v2, "newBitmap":I
    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 225
    .local v4, "newValues":[Lio/grpc/PersistentHashArrayMappedTrie$Node;, "[Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    const/4 v5, 0x0

    invoke-static {v3, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    new-instance v3, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;

    invoke-direct {v3, p1, p2}, Lio/grpc/PersistentHashArrayMappedTrie$Leaf;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v4, v1

    .line 227
    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    add-int/lit8 v5, v1, 0x1

    array-length v6, v3

    sub-int/2addr v6, v1

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    new-instance v3, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    invoke-virtual {p0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->size()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v2, v4, v5}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;-><init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V

    return-object v3

    .line 236
    .end local v2    # "newBitmap":I
    .end local v4    # "newValues":[Lio/grpc/PersistentHashArrayMappedTrie$Node;, "[Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    :cond_0
    iget-object v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    array-length v3, v2

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/grpc/PersistentHashArrayMappedTrie$Node;

    .line 237
    .local v2, "newValues":[Lio/grpc/PersistentHashArrayMappedTrie$Node;, "[Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    iget-object v3, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aget-object v3, v3, v1

    add-int/lit8 v4, p4, 0x5

    .line 238
    invoke-interface {v3, p1, p2, p3, v4}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->put(Ljava/lang/Object;Ljava/lang/Object;II)Lio/grpc/PersistentHashArrayMappedTrie$Node;

    move-result-object v3

    aput-object v3, v2, v1

    .line 239
    invoke-virtual {p0}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->size()I

    move-result v3

    .line 240
    .local v3, "newSize":I
    aget-object v4, v2, v1

    invoke-interface {v4}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result v4

    add-int/2addr v3, v4

    .line 241
    iget-object v4, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    aget-object v4, v4, v1

    invoke-interface {v4}, Lio/grpc/PersistentHashArrayMappedTrie$Node;->size()I

    move-result v4

    sub-int/2addr v3, v4

    .line 242
    new-instance v4, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;

    iget v5, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    invoke-direct {v4, v5, v2, v3}, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;-><init>(I[Lio/grpc/PersistentHashArrayMappedTrie$Node;I)V

    return-object v4
.end method

.method public size()I
    .locals 1

    .line 203
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;, "Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex<TK;TV;>;"
    iget v0, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 271
    .local p0, "this":Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;, "Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "valuesSb":Ljava/lang/StringBuilder;
    const-string v1, "CompressedIndex("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->bitmap:I

    .line 273
    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "bitmap=%s "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-object v1, p0, Lio/grpc/PersistentHashArrayMappedTrie$CompressedIndex;->values:[Lio/grpc/PersistentHashArrayMappedTrie$Node;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 275
    .local v4, "value":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .end local v4    # "value":Lio/grpc/PersistentHashArrayMappedTrie$Node;, "Lio/grpc/PersistentHashArrayMappedTrie$Node<TK;TV;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
