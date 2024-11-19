.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$KeySet;,
        Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;,
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ABSENT:B = -0x1t

.field private static final BYTE_MASK:I = 0xff

.field private static final BYTE_MAX_SIZE:I = 0x80

.field static final EMPTY:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_MAX_SIZE:I = 0x8000

.field private static final serialVersionUID:J


# instance fields
.field final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient hashTable:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 50
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0
    .param p1, "hashTable"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p3, "size"    # I

    .line 296
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 297
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    .line 298
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 299
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    .line 300
    return-void
.end method

.method static create(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableMap;
    .locals 1
    .param p0, "n"    # I
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 92
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/common/collect/RegularImmutableMap;->create(I[Ljava/lang/Object;Lcom/google/common/collect/ImmutableMap$Builder;)Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method static create(I[Ljava/lang/Object;Lcom/google/common/collect/ImmutableMap$Builder;)Lcom/google/common/collect/RegularImmutableMap;
    .locals 6
    .param p0, "n"    # I
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 102
    .local p2, "builder":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    if-nez p0, :cond_0

    .line 104
    sget-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    .line 105
    .local v0, "empty":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    return-object v0

    .line 106
    .end local v0    # "empty":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 108
    aget-object v0, p1, v0

    .line 109
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aget-object v2, p1, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 108
    invoke-static {v0, v2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 112
    :cond_1
    array-length v2, p1

    shr-int/2addr v2, v1

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 113
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v2

    .line 119
    .local v2, "tableSize":I
    invoke-static {p1, p0, v2, v0}, Lcom/google/common/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v3

    .line 121
    .local v3, "hashTablePlus":Ljava/lang/Object;
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 122
    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    .line 123
    .local v4, "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    const/4 v5, 0x2

    aget-object v5, v4, v5

    check-cast v5, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 124
    .local v5, "duplicateKey":Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;
    if-eqz p2, :cond_2

    .line 127
    iput-object v5, p2, Lcom/google/common/collect/ImmutableMap$Builder;->duplicateKey:Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 128
    aget-object v0, v4, v0

    .line 129
    .local v0, "hashTable":Ljava/lang/Object;
    aget-object v1, v4, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 130
    mul-int/lit8 v1, p0, 0x2

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    .line 131
    .end local v4    # "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    .end local v5    # "duplicateKey":Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;
    goto :goto_0

    .line 125
    .end local v0    # "hashTable":Ljava/lang/Object;
    .restart local v4    # "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    .restart local v5    # "duplicateKey":Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;
    :cond_2
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 132
    .end local v4    # "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    .end local v5    # "duplicateKey":Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;
    :cond_3
    move-object v0, v3

    .line 134
    .restart local v0    # "hashTable":Ljava/lang/Object;
    :goto_0
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v1
.end method

.method private static createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 16
    .param p0, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p1, "n"    # I
    .param p2, "tableSize"    # I
    .param p3, "keyOffset"    # I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 153
    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 156
    aget-object v2, p0, p3

    .line 157
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    xor-int/lit8 v3, p3, 0x1

    aget-object v3, p0, v3

    .line 158
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    invoke-static {v2, v3}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 159
    const/4 v2, 0x0

    return-object v2

    .line 161
    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 162
    .local v2, "mask":I
    const/4 v3, 0x0

    .line 163
    .local v3, "duplicateKey":Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;
    const/16 v4, 0x80

    const/4 v5, -0x1

    if-gt v1, v4, :cond_6

    .line 170
    new-array v4, v1, [B

    .line 171
    .local v4, "hashTable":[B
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([BB)V

    .line 173
    const/4 v5, 0x0

    .line 175
    .local v5, "outI":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_4

    .line 176
    mul-int/lit8 v7, v6, 0x2

    add-int v7, v7, p3

    .line 177
    .local v7, "keyIndex":I
    mul-int/lit8 v8, v5, 0x2

    add-int v8, v8, p3

    .line 179
    .local v8, "outKeyIndex":I
    aget-object v9, p0, v7

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 180
    .local v9, "key":Ljava/lang/Object;
    xor-int/lit8 v10, v7, 0x1

    aget-object v10, p0, v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 181
    .local v10, "value":Ljava/lang/Object;
    invoke-static {v9, v10}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v11

    .line 183
    .local v11, "h":I
    :goto_1
    and-int/2addr v11, v2

    .line 184
    aget-byte v12, v4, v11

    const/16 v13, 0xff

    and-int/2addr v12, v13

    .line 185
    .local v12, "previousKeyIndex":I
    if-ne v12, v13, :cond_2

    .line 186
    int-to-byte v13, v8

    aput-byte v13, v4, v11

    .line 187
    nop

    .line 196
    .end local v11    # "h":I
    .end local v12    # "previousKeyIndex":I
    if-ge v5, v6, :cond_1

    .line 197
    aput-object v9, p0, v8

    .line 198
    xor-int/lit8 v11, v8, 0x1

    aput-object v10, p0, v11

    .line 200
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 188
    .restart local v11    # "h":I
    .restart local v12    # "previousKeyIndex":I
    :cond_2
    aget-object v13, p0, v12

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 189
    new-instance v13, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v14, v12, 0x1

    aget-object v14, p0, v14

    .line 191
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v13, v9, v10, v14}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v13

    .line 192
    xor-int/lit8 v13, v12, 0x1

    aput-object v10, p0, v13

    .line 193
    nop

    .line 175
    .end local v7    # "keyIndex":I
    .end local v8    # "outKeyIndex":I
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    .end local v11    # "h":I
    .end local v12    # "previousKeyIndex":I
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 182
    .restart local v7    # "keyIndex":I
    .restart local v8    # "outKeyIndex":I
    .restart local v9    # "key":Ljava/lang/Object;
    .restart local v10    # "value":Ljava/lang/Object;
    .restart local v11    # "h":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 202
    .end local v6    # "i":I
    .end local v7    # "keyIndex":I
    .end local v8    # "outKeyIndex":I
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    .end local v11    # "h":I
    :cond_4
    if-ne v5, v0, :cond_5

    move-object v6, v4

    goto :goto_3

    :cond_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6, v3}, [Ljava/lang/Object;

    move-result-object v6

    :goto_3
    return-object v6

    .line 203
    .end local v4    # "hashTable":[B
    .end local v5    # "outI":I
    :cond_6
    const v4, 0x8000

    if-gt v1, v4, :cond_c

    .line 210
    new-array v4, v1, [S

    .line 211
    .local v4, "hashTable":[S
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([SS)V

    .line 213
    const/4 v5, 0x0

    .line 215
    .restart local v5    # "outI":I
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    if-ge v6, v0, :cond_a

    .line 216
    mul-int/lit8 v7, v6, 0x2

    add-int v7, v7, p3

    .line 217
    .restart local v7    # "keyIndex":I
    mul-int/lit8 v8, v5, 0x2

    add-int v8, v8, p3

    .line 219
    .restart local v8    # "outKeyIndex":I
    aget-object v9, p0, v7

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 220
    .restart local v9    # "key":Ljava/lang/Object;
    xor-int/lit8 v10, v7, 0x1

    aget-object v10, p0, v10

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 221
    .restart local v10    # "value":Ljava/lang/Object;
    invoke-static {v9, v10}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-static {v11}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v11

    .line 223
    .restart local v11    # "h":I
    :goto_5
    and-int/2addr v11, v2

    .line 224
    aget-short v12, v4, v11

    const v13, 0xffff

    and-int/2addr v12, v13

    .line 225
    .restart local v12    # "previousKeyIndex":I
    if-ne v12, v13, :cond_8

    .line 226
    int-to-short v13, v8

    aput-short v13, v4, v11

    .line 227
    nop

    .line 236
    .end local v11    # "h":I
    .end local v12    # "previousKeyIndex":I
    if-ge v5, v6, :cond_7

    .line 237
    aput-object v9, p0, v8

    .line 238
    xor-int/lit8 v11, v8, 0x1

    aput-object v10, p0, v11

    .line 240
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 228
    .restart local v11    # "h":I
    .restart local v12    # "previousKeyIndex":I
    :cond_8
    aget-object v13, p0, v12

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 229
    new-instance v13, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v14, v12, 0x1

    aget-object v14, p0, v14

    .line 231
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v13, v9, v10, v14}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v13

    .line 232
    xor-int/lit8 v13, v12, 0x1

    aput-object v10, p0, v13

    .line 233
    nop

    .line 215
    .end local v7    # "keyIndex":I
    .end local v8    # "outKeyIndex":I
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    .end local v11    # "h":I
    .end local v12    # "previousKeyIndex":I
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 222
    .restart local v7    # "keyIndex":I
    .restart local v8    # "outKeyIndex":I
    .restart local v9    # "key":Ljava/lang/Object;
    .restart local v10    # "value":Ljava/lang/Object;
    .restart local v11    # "h":I
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 242
    .end local v6    # "i":I
    .end local v7    # "keyIndex":I
    .end local v8    # "outKeyIndex":I
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    .end local v11    # "h":I
    :cond_a
    if-ne v5, v0, :cond_b

    move-object v6, v4

    goto :goto_7

    :cond_b
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v4, v6, v3}, [Ljava/lang/Object;

    move-result-object v6

    :goto_7
    return-object v6

    .line 247
    .end local v4    # "hashTable":[S
    .end local v5    # "outI":I
    :cond_c
    new-array v4, v1, [I

    .line 248
    .local v4, "hashTable":[I
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    .line 250
    const/4 v6, 0x0

    .line 252
    .local v6, "outI":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8
    if-ge v7, v0, :cond_10

    .line 253
    mul-int/lit8 v8, v7, 0x2

    add-int v8, v8, p3

    .line 254
    .local v8, "keyIndex":I
    mul-int/lit8 v9, v6, 0x2

    add-int v9, v9, p3

    .line 256
    .local v9, "outKeyIndex":I
    aget-object v10, p0, v8

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 257
    .local v10, "key":Ljava/lang/Object;
    xor-int/lit8 v11, v8, 0x1

    aget-object v11, p0, v11

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 258
    .local v11, "value":Ljava/lang/Object;
    invoke-static {v10, v11}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 259
    invoke-virtual {v10}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v12

    .line 260
    .local v12, "h":I
    :goto_9
    and-int/2addr v12, v2

    .line 261
    aget v13, v4, v12

    .line 262
    .local v13, "previousKeyIndex":I
    if-ne v13, v5, :cond_e

    .line 263
    aput v9, v4, v12

    .line 264
    nop

    .line 273
    .end local v12    # "h":I
    .end local v13    # "previousKeyIndex":I
    if-ge v6, v7, :cond_d

    .line 274
    aput-object v10, p0, v9

    .line 275
    xor-int/lit8 v12, v9, 0x1

    aput-object v11, p0, v12

    .line 277
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 265
    .restart local v12    # "h":I
    .restart local v13    # "previousKeyIndex":I
    :cond_e
    aget-object v14, p0, v13

    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 266
    new-instance v14, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    xor-int/lit8 v15, v13, 0x1

    aget-object v15, p0, v15

    .line 268
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v14, v10, v11, v15}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v14

    .line 269
    xor-int/lit8 v14, v13, 0x1

    aput-object v11, p0, v14

    .line 270
    nop

    .line 252
    .end local v8    # "keyIndex":I
    .end local v9    # "outKeyIndex":I
    .end local v10    # "key":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "h":I
    .end local v13    # "previousKeyIndex":I
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 259
    .restart local v8    # "keyIndex":I
    .restart local v9    # "outKeyIndex":I
    .restart local v10    # "key":Ljava/lang/Object;
    .restart local v11    # "value":Ljava/lang/Object;
    .restart local v12    # "h":I
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 279
    .end local v7    # "i":I
    .end local v8    # "keyIndex":I
    .end local v9    # "outKeyIndex":I
    .end local v10    # "key":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;
    .end local v12    # "h":I
    :cond_10
    if-ne v6, v0, :cond_11

    move-object v5, v4

    goto :goto_b

    :cond_11
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v5

    :goto_b
    return-object v5
.end method

.method static createHashTableOrThrow([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 4
    .param p0, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p1, "n"    # I
    .param p2, "tableSize"    # I
    .param p3, "keyOffset"    # I
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 286
    invoke-static {p0, p1, p2, p3}, Lcom/google/common/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 287
    .local v0, "hashTablePlus":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 292
    return-object v0

    .line 288
    :cond_0
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    .line 289
    .local v1, "hashTableAndSizeAndDuplicate":[Ljava/lang/Object;
    const/4 v2, 0x2

    aget-object v2, v1, v2

    check-cast v2, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;

    .line 290
    .local v2, "duplicateKey":Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder$DuplicateKey;->exception()Ljava/lang/IllegalArgumentException;

    move-result-object v3

    throw v3
.end method

.method static get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "hashTableObject"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "keyOffset"    # I
    .param p4, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 330
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 331
    return-object v0

    .line 332
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 334
    aget-object v1, p1, p3

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    xor-int/lit8 v0, p3, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 336
    :cond_1
    nop

    .line 334
    :goto_0
    return-object v0

    .line 337
    :cond_2
    if-nez p0, :cond_3

    .line 338
    return-object v0

    .line 340
    :cond_3
    instance-of v2, p0, [B

    if-eqz v2, :cond_6

    .line 341
    move-object v2, p0

    check-cast v2, [B

    .line 342
    .local v2, "hashTable":[B
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 343
    .local v3, "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 344
    .local v1, "h":I
    :goto_1
    and-int/2addr v1, v3

    .line 345
    aget-byte v4, v2, v1

    const/16 v5, 0xff

    and-int/2addr v4, v5

    .line 346
    .local v4, "keyIndex":I
    if-ne v4, v5, :cond_4

    .line 347
    return-object v0

    .line 348
    :cond_4
    aget-object v5, p1, v4

    invoke-virtual {p4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 349
    xor-int/lit8 v0, v4, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 343
    .end local v4    # "keyIndex":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 352
    .end local v1    # "h":I
    .end local v2    # "hashTable":[B
    .end local v3    # "mask":I
    :cond_6
    instance-of v2, p0, [S

    if-eqz v2, :cond_9

    .line 353
    move-object v2, p0

    check-cast v2, [S

    .line 354
    .local v2, "hashTable":[S
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 355
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 356
    .restart local v1    # "h":I
    :goto_2
    and-int/2addr v1, v3

    .line 357
    aget-short v4, v2, v1

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 358
    .restart local v4    # "keyIndex":I
    if-ne v4, v5, :cond_7

    .line 359
    return-object v0

    .line 360
    :cond_7
    aget-object v5, p1, v4

    invoke-virtual {p4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 361
    xor-int/lit8 v0, v4, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 355
    .end local v4    # "keyIndex":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 365
    .end local v1    # "h":I
    .end local v2    # "hashTable":[S
    .end local v3    # "mask":I
    :cond_9
    move-object v2, p0

    check-cast v2, [I

    .line 366
    .local v2, "hashTable":[I
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 367
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 368
    .restart local v1    # "h":I
    :goto_3
    and-int/2addr v1, v3

    .line 369
    aget v4, v2, v1

    .line 370
    .restart local v4    # "keyIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 371
    return-object v0

    .line 372
    :cond_a
    aget-object v5, p1, v4

    invoke-virtual {p4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 373
    xor-int/lit8 v0, v4, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 367
    .end local v4    # "keyIndex":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 381
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 465
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 467
    .local v0, "keyList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 542
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 311
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    .local v0, "result":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 317
    const/4 v1, 0x0

    return-object v1

    .line 319
    :cond_0
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 547
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 304
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    return v0
.end method
