.class public final Lcom/google/firebase/firestore/remote/BloomFilter;
.super Ljava/lang/Object;
.source "BloomFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;
    }
.end annotation


# instance fields
.field private final bitCount:I

.field private final bitmap:Lcom/google/protobuf/ByteString;

.field private final hashCount:I

.field private final md5HashMessageDigest:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/ByteString;II)V
    .locals 3
    .param p1, "bitmap"    # Lcom/google/protobuf/ByteString;
    .param p2, "padding"    # I
    .param p3, "hashCount"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-ltz p2, :cond_5

    const/16 v0, 0x8

    if-ge p2, v0, :cond_5

    .line 43
    const-string v1, "Invalid hash count: "

    if-ltz p3, :cond_4

    .line 46
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-nez v1, :cond_3

    if-nez p2, :cond_2

    goto :goto_1

    .line 52
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected padding of 0 when bitmap length is 0, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->bitmap:Lcom/google/protobuf/ByteString;

    .line 57
    iput p3, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->hashCount:I

    .line 58
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    mul-int/2addr v1, v0

    sub-int/2addr v1, p2

    iput v1, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->bitCount:I

    .line 59
    invoke-static {}, Lcom/google/firebase/firestore/remote/BloomFilter;->createMd5HashMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->md5HashMessageDigest:Ljava/security/MessageDigest;

    .line 60
    return-void

    .line 44
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/google/protobuf/ByteString;II)Lcom/google/firebase/firestore/remote/BloomFilter;
    .locals 3
    .param p0, "bitmap"    # Lcom/google/protobuf/ByteString;
    .param p1, "padding"    # I
    .param p2, "hashCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;
        }
    .end annotation

    .line 69
    if-ltz p1, :cond_5

    const/16 v0, 0x8

    if-ge p1, v0, :cond_5

    .line 72
    const-string v0, "Invalid hash count: "

    if-ltz p2, :cond_4

    .line 75
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    if-nez v0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 81
    :cond_2
    new-instance v0, Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected padding of 0 when bitmap length is 0, but got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3
    :goto_1
    new-instance v0, Lcom/google/firebase/firestore/remote/BloomFilter;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/firestore/remote/BloomFilter;-><init>(Lcom/google/protobuf/ByteString;II)V

    return-object v0

    .line 73
    :cond_4
    new-instance v1, Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_5
    new-instance v0, Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid padding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/remote/BloomFilter$BloomFilterCreateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createMd5HashMessageDigest()Ljava/security/MessageDigest;
    .locals 3

    .line 141
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Missing MD5 MessageDigest provider: "

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getBitIndex(JJI)I
    .locals 5
    .param p1, "hash1"    # J
    .param p3, "hash2"    # J
    .param p5, "hashIndex"    # I

    .line 164
    int-to-long v0, p5

    mul-long/2addr v0, p3

    add-long/2addr v0, p1

    .line 165
    .local v0, "combinedHash":J
    iget v2, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->bitCount:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/firebase/firestore/remote/BloomFilter;->unsignedRemainder(JJ)J

    move-result-wide v2

    .line 166
    .local v2, "modulo":J
    long-to-int v4, v2

    return v4
.end method

.method private static getLongLittleEndian([BI)J
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I

    .line 149
    const-wide/16 v0, 0x0

    .line 150
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    .line 151
    add-int v3, p1, v2

    aget-byte v3, p0, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    mul-int/lit8 v5, v2, 0x8

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 150
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method private isBitSet(I)Z
    .locals 4
    .param p1, "index"    # I

    .line 187
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->bitmap:Lcom/google/protobuf/ByteString;

    div-int/lit8 v1, p1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v0

    .line 188
    .local v0, "byteAtIndex":B
    rem-int/lit8 v1, p1, 0x8

    .line 189
    .local v1, "offset":I
    const/4 v2, 0x1

    shl-int v3, v2, v1

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private md5HashDigest(Ljava/lang/String;)[B
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 135
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->md5HashMessageDigest:Ljava/security/MessageDigest;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method private static unsignedRemainder(JJ)J
    .locals 6
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J

    .line 179
    const/4 v0, 0x1

    ushr-long v1, p0, v0

    div-long/2addr v1, p2

    shl-long v0, v1, v0

    .line 180
    .local v0, "quotient":J
    mul-long v2, v0, p2

    sub-long v2, p0, v2

    .line 181
    .local v2, "remainder":J
    cmp-long v4, v2, p2

    if-ltz v4, :cond_0

    move-wide v4, p2

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    sub-long v4, v2, v4

    return-wide v4
.end method


# virtual methods
.method getBitCount()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->bitCount:I

    return v0
.end method

.method public mightContain(Ljava/lang/String;)Z
    .locals 13
    .param p1, "value"    # Ljava/lang/String;

    .line 110
    iget v0, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->bitCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 111
    return v1

    .line 114
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/remote/BloomFilter;->md5HashDigest(Ljava/lang/String;)[B

    move-result-object v0

    .line 115
    .local v0, "hashedValue":[B
    array-length v2, v0

    const/16 v3, 0x10

    if-ne v2, v3, :cond_3

    .line 120
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/remote/BloomFilter;->getLongLittleEndian([BI)J

    move-result-wide v2

    .line 121
    .local v2, "hash1":J
    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/google/firebase/firestore/remote/BloomFilter;->getLongLittleEndian([BI)J

    move-result-wide v10

    .line 123
    .local v10, "hash2":J
    const/4 v4, 0x0

    move v12, v4

    .local v12, "i":I
    :goto_0
    iget v4, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->hashCount:I

    if-ge v12, v4, :cond_2

    .line 124
    move-object v4, p0

    move-wide v5, v2

    move-wide v7, v10

    move v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/firestore/remote/BloomFilter;->getBitIndex(JJI)I

    move-result v4

    .line 125
    .local v4, "index":I
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/remote/BloomFilter;->isBitSet(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    return v1

    .line 123
    .end local v4    # "index":I
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 129
    .end local v12    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 116
    .end local v2    # "hash1":J
    .end local v10    # "hash2":J
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid md5 hash array length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected 16)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BloomFilter{hashCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->hashCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->bitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bitmap=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/BloomFilter;->bitmap:Lcom/google/protobuf/ByteString;

    .line 200
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    return-object v0
.end method
