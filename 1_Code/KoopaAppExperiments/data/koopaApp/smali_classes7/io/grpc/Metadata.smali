.class public final Lio/grpc/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/Metadata$TrustedAsciiMarshaller;,
        Lio/grpc/Metadata$TrustedAsciiKey;,
        Lio/grpc/Metadata$AsciiKey;,
        Lio/grpc/Metadata$LazyValue;,
        Lio/grpc/Metadata$LazyStreamBinaryKey;,
        Lio/grpc/Metadata$BinaryKey;,
        Lio/grpc/Metadata$Key;,
        Lio/grpc/Metadata$BinaryStreamMarshaller;,
        Lio/grpc/Metadata$AsciiMarshaller;,
        Lio/grpc/Metadata$BinaryMarshaller;,
        Lio/grpc/Metadata$IterableAt;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$AsciiMarshaller<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

.field public static final BINARY_BYTE_MARSHALLER:Lio/grpc/Metadata$BinaryMarshaller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/Metadata$BinaryMarshaller<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final BINARY_HEADER_SUFFIX:Ljava/lang/String; = "-bin"

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private namesAndValues:[Ljava/lang/Object;

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    nop

    .line 59
    const-class v0, Lio/grpc/Metadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/Metadata;->logger:Ljava/util/logging/Logger;

    .line 79
    new-instance v0, Lio/grpc/Metadata$1;

    invoke-direct {v0}, Lio/grpc/Metadata$1;-><init>()V

    sput-object v0, Lio/grpc/Metadata;->BINARY_BYTE_MARSHALLER:Lio/grpc/Metadata$BinaryMarshaller;

    .line 100
    new-instance v0, Lio/grpc/Metadata$2;

    invoke-direct {v0}, Lio/grpc/Metadata$2;-><init>()V

    sput-object v0, Lio/grpc/Metadata;->ASCII_STRING_MARSHALLER:Lio/grpc/Metadata$AsciiMarshaller;

    .line 114
    invoke-static {}, Lcom/google/common/io/BaseEncoding;->base64()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/io/BaseEncoding;->omitPadding()Lcom/google/common/io/BaseEncoding;

    move-result-object v0

    sput-object v0, Lio/grpc/Metadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 3
    .param p1, "usedNames"    # I
    .param p2, "namesAndValues"    # [Ljava/lang/Object;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    array-length v0, p2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 146
    iput p1, p0, Lio/grpc/Metadata;->size:I

    .line 147
    iput-object p2, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    .line 148
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Odd number of key-value pairs "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method varargs constructor <init>(I[[B)V
    .locals 1
    .param p1, "usedNames"    # I
    .param p2, "binaryValues"    # [[B

    .line 131
    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lio/grpc/Metadata;-><init>(I[Ljava/lang/Object;)V

    .line 132
    return-void
.end method

.method varargs constructor <init>([[B)V
    .locals 1
    .param p1, "binaryValues"    # [[B

    .line 121
    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;-><init>(I[[B)V

    .line 122
    return-void
.end method

.method static synthetic access$100(Lio/grpc/Metadata;)I
    .locals 1
    .param p0, "x0"    # Lio/grpc/Metadata;

    .line 58
    iget v0, p0, Lio/grpc/Metadata;->size:I

    return v0
.end method

.method static synthetic access$1100()Ljava/util/logging/Logger;
    .locals 1

    .line 58
    sget-object v0, Lio/grpc/Metadata;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$1300(Ljava/io/InputStream;)[B
    .locals 1
    .param p0, "x0"    # Ljava/io/InputStream;

    .line 58
    invoke-static {p0}, Lio/grpc/Metadata;->streamToBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/grpc/Metadata;I)[B
    .locals 1
    .param p0, "x0"    # Lio/grpc/Metadata;
    .param p1, "x1"    # I

    .line 58
    invoke-direct {p0, p1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lio/grpc/Metadata;[B[B)Z
    .locals 1
    .param p0, "x0"    # Lio/grpc/Metadata;
    .param p1, "x1"    # [B
    .param p2, "x2"    # [B

    .line 58
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lio/grpc/Metadata;ILio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lio/grpc/Metadata;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lio/grpc/Metadata$Key;

    .line 58
    invoke-direct {p0, p1, p2}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private bytesEqual([B[B)Z
    .locals 1
    .param p1, "left"    # [B
    .param p2, "right"    # [B

    .line 564
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method private cap()I
    .locals 1

    .line 206
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private expand(I)V
    .locals 4
    .param p1, "newCapacity"    # I

    .line 363
    new-array v0, p1, [Ljava/lang/Object;

    .line 364
    .local v0, "newNamesAndValues":[Ljava/lang/Object;
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    iget-object v1, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 367
    :cond_0
    iput-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    .line 368
    return-void
.end method

.method private isEmpty()Z
    .locals 1

    .line 216
    iget v0, p0, Lio/grpc/Metadata;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private len()I
    .locals 1

    .line 211
    iget v0, p0, Lio/grpc/Metadata;->size:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private maybeExpand()V
    .locals 2

    .line 356
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/Metadata;->cap()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 357
    :cond_0
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->expand(I)V

    .line 359
    :cond_1
    return-void
.end method

.method private name(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "name"    # [B

    .line 159
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    aput-object p2, v0, v1

    .line 160
    return-void
.end method

.method private name(I)[B
    .locals 2
    .param p1, "i"    # I

    .line 155
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    check-cast v0, [B

    return-object v0
.end method

.method private static streamToBytes(Ljava/io/InputStream;)[B
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;

    .line 1043
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1044
    :catch_0
    move-exception v0

    .line 1045
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "failure reading serialized stream"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private value(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I

    .line 163
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private value(ILjava/lang/Object;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    instance-of v0, v0, [[B

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lio/grpc/Metadata;->cap()I

    move-result v0

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->expand(I)V

    .line 175
    :cond_0
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 176
    return-void
.end method

.method private value(I[B)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # [B

    .line 167
    iget-object v0, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 168
    return-void
.end method

.method private valueAsBytes(I)[B
    .locals 2
    .param p1, "i"    # I

    .line 179
    invoke-direct {p0, p1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v0

    .line 180
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 181
    move-object v1, v0

    check-cast v1, [B

    return-object v1

    .line 183
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/grpc/Metadata$LazyValue;

    invoke-virtual {v1}, Lio/grpc/Metadata$LazyValue;->toBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private valueAsBytesOrStream(I)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I

    .line 188
    invoke-direct {p0, p1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v0

    .line 189
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 190
    return-object v0

    .line 192
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/grpc/Metadata$LazyValue;

    invoke-virtual {v1}, Lio/grpc/Metadata$LazyValue;->toStream()Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method private valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 197
    .local p2, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    invoke-direct {p0, p1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v0

    .line 198
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 199
    move-object v1, v0

    check-cast v1, [B

    invoke-virtual {p2, v1}, Lio/grpc/Metadata$Key;->parseBytes([B)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 201
    :cond_0
    move-object v1, v0

    check-cast v1, Lio/grpc/Metadata$LazyValue;

    invoke-virtual {v1, p2}, Lio/grpc/Metadata$LazyValue;->toObject(Lio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public containsKey(Lio/grpc/Metadata$Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata$Key<",
            "*>;)Z"
        }
    .end annotation

    .line 234
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<*>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/grpc/Metadata;->size:I

    if-ge v0, v1, :cond_1

    .line 235
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const/4 v1, 0x1

    return v1

    .line 234
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public discardAll(Lio/grpc/Metadata$Key;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)V"
        }
    .end annotation

    .line 432
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    return-void

    .line 435
    :cond_0
    const/4 v0, 0x0

    .line 436
    .local v0, "writeIdx":I
    const/4 v1, 0x0

    .line 437
    .local v1, "readIdx":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_2

    .line 438
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 439
    goto :goto_1

    .line 441
    :cond_1
    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lio/grpc/Metadata;->name(I[B)V

    .line 442
    invoke-direct {p0, v1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    .line 443
    add-int/lit8 v0, v0, 0x1

    .line 437
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 445
    :cond_2
    move v2, v0

    .line 447
    .local v2, "newSize":I
    iget-object v3, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v4, v0, 0x2

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 448
    iput v2, p0, Lio/grpc/Metadata;->size:I

    .line 449
    return-void
.end method

.method public get(Lio/grpc/Metadata$Key;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 249
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    iget v0, p0, Lio/grpc/Metadata;->size:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 250
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 249
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 254
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 310
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/grpc/Metadata;->size:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 311
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    new-instance v1, Lio/grpc/Metadata$IterableAt;

    invoke-direct {v1, p0, p1, v0, v2}, Lio/grpc/Metadata$IterableAt;-><init>(Lio/grpc/Metadata;Lio/grpc/Metadata$Key;ILio/grpc/Metadata$1;)V

    return-object v1

    .line 310
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method headerCount()I
    .locals 1

    .line 224
    iget v0, p0, Lio/grpc/Metadata;->size:I

    return v0
.end method

.method public keys()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 325
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 328
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget v1, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 329
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_1

    .line 330
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BI)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 333
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public merge(Lio/grpc/Metadata;)V
    .locals 6
    .param p1, "other"    # Lio/grpc/Metadata;

    .line 508
    invoke-direct {p1}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    return-void

    .line 511
    :cond_0
    invoke-direct {p0}, Lio/grpc/Metadata;->cap()I

    move-result v0

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v1

    sub-int/2addr v0, v1

    .line 512
    .local v0, "remaining":I
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p1}, Lio/grpc/Metadata;->len()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 513
    :cond_1
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v1

    invoke-direct {p1}, Lio/grpc/Metadata;->len()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->expand(I)V

    .line 515
    :cond_2
    iget-object v1, p1, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    iget-object v2, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v3

    invoke-direct {p1}, Lio/grpc/Metadata;->len()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 516
    iget v1, p0, Lio/grpc/Metadata;->size:I

    iget v2, p1, Lio/grpc/Metadata;->size:I

    add-int/2addr v1, v2

    iput v1, p0, Lio/grpc/Metadata;->size:I

    .line 517
    return-void
.end method

.method public merge(Lio/grpc/Metadata;Ljava/util/Set;)V
    .locals 5
    .param p1, "other"    # Lio/grpc/Metadata;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/Metadata;",
            "Ljava/util/Set<",
            "Lio/grpc/Metadata$Key<",
            "*>;>;)V"
        }
    .end annotation

    .line 527
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<Lio/grpc/Metadata$Key<*>;>;"
    const-string v0, "other"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 530
    .local v0, "asciiKeys":Ljava/util/Map;, "Ljava/util/Map<Ljava/nio/ByteBuffer;Lio/grpc/Metadata$Key<*>;>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/grpc/Metadata$Key;

    .line 531
    .local v2, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<*>;"
    invoke-virtual {v2}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    .end local v2    # "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<*>;"
    goto :goto_0

    .line 533
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p1, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_2

    .line 534
    invoke-direct {p1, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 535
    .local v2, "wrappedNamed":Ljava/nio/ByteBuffer;
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 536
    invoke-direct {p0}, Lio/grpc/Metadata;->maybeExpand()V

    .line 537
    iget v3, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {p1, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lio/grpc/Metadata;->name(I[B)V

    .line 538
    iget v3, p0, Lio/grpc/Metadata;->size:I

    invoke-direct {p1, v1}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    .line 539
    iget v3, p0, Lio/grpc/Metadata;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lio/grpc/Metadata;->size:I

    .line 533
    .end local v2    # "wrappedNamed":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 542
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public put(Lio/grpc/Metadata$Key;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 343
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-direct {p0}, Lio/grpc/Metadata;->maybeExpand()V

    .line 346
    iget v0, p0, Lio/grpc/Metadata;->size:I

    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/Metadata;->name(I[B)V

    .line 347
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->serializesToStreams()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget v0, p0, Lio/grpc/Metadata;->size:I

    invoke-static {p1, p2}, Lio/grpc/Metadata$LazyValue;->create(Lio/grpc/Metadata$Key;Ljava/lang/Object;)Lio/grpc/Metadata$LazyValue;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    goto :goto_0

    .line 350
    :cond_0
    iget v0, p0, Lio/grpc/Metadata;->size:I

    invoke-virtual {p1, p2}, Lio/grpc/Metadata$Key;->toBytes(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/grpc/Metadata;->value(I[B)V

    .line 352
    :goto_0
    iget v0, p0, Lio/grpc/Metadata;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/grpc/Metadata;->size:I

    .line 353
    return-void
.end method

.method public remove(Lio/grpc/Metadata$Key;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 379
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    const-string v0, "key"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/grpc/Metadata;->size:I

    if-ge v0, v1, :cond_2

    .line 382
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v1

    invoke-direct {p0, v0}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    goto :goto_1

    .line 385
    :cond_0
    invoke-direct {p0, v0, p1}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v1

    .line 386
    .local v1, "stored":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 387
    nop

    .line 381
    .end local v1    # "stored":Ljava/lang/Object;, "TT;"
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    .restart local v1    # "stored":Ljava/lang/Object;, "TT;"
    :cond_1
    mul-int/lit8 v2, v0, 0x2

    .line 390
    .local v2, "writeIdx":I
    add-int/lit8 v3, v0, 0x1

    mul-int/lit8 v3, v3, 0x2

    .line 391
    .local v3, "readIdx":I
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v4

    sub-int/2addr v4, v3

    .line 392
    .local v4, "readLen":I
    iget-object v5, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    invoke-static {v5, v3, v5, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    iget v5, p0, Lio/grpc/Metadata;->size:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    iput v5, p0, Lio/grpc/Metadata;->size:I

    .line 394
    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lio/grpc/Metadata;->name(I[B)V

    .line 395
    iget v5, p0, Lio/grpc/Metadata;->size:I

    move-object v8, v7

    check-cast v8, [B

    invoke-direct {p0, v5, v7}, Lio/grpc/Metadata;->value(I[B)V

    .line 396
    return v6

    .line 398
    .end local v0    # "i":I
    .end local v1    # "stored":Ljava/lang/Object;, "TT;"
    .end local v2    # "writeIdx":I
    .end local v3    # "readIdx":I
    .end local v4    # "readLen":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Lio/grpc/Metadata$Key;)Ljava/lang/Iterable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/Metadata$Key<",
            "TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 403
    .local p1, "key":Lio/grpc/Metadata$Key;, "Lio/grpc/Metadata$Key<TT;>;"
    invoke-direct {p0}, Lio/grpc/Metadata;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 404
    return-object v1

    .line 406
    :cond_0
    const/4 v0, 0x0

    .line 407
    .local v0, "writeIdx":I
    const/4 v2, 0x0

    .line 408
    .local v2, "readIdx":I
    const/4 v3, 0x0

    .line 409
    .local v3, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    iget v4, p0, Lio/grpc/Metadata;->size:I

    if-ge v2, v4, :cond_3

    .line 410
    invoke-virtual {p1}, Lio/grpc/Metadata$Key;->asciiName()[B

    move-result-object v4

    invoke-direct {p0, v2}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lio/grpc/Metadata;->bytesEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 411
    if-eqz v3, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    move-object v3, v4

    .line 412
    invoke-direct {p0, v2, p1}, Lio/grpc/Metadata;->valueAsT(ILio/grpc/Metadata$Key;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    goto :goto_2

    .line 415
    :cond_2
    invoke-direct {p0, v2}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lio/grpc/Metadata;->name(I[B)V

    .line 416
    invoke-direct {p0, v2}, Lio/grpc/Metadata;->value(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lio/grpc/Metadata;->value(ILjava/lang/Object;)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    .line 409
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_3
    move v4, v0

    .line 421
    .local v4, "newSize":I
    iget-object v5, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    mul-int/lit8 v6, v0, 0x2

    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v7

    invoke-static {v5, v6, v7, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 422
    iput v4, p0, Lio/grpc/Metadata;->size:I

    .line 423
    return-object v3
.end method

.method serialize()[[B
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 468
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    new-array v0, v0, [[B

    .line 469
    .local v0, "serialized":[[B
    iget-object v1, p0, Lio/grpc/Metadata;->namesAndValues:[Ljava/lang/Object;

    instance-of v2, v1, [[B

    if-eqz v2, :cond_0

    .line 470
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 472
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_1

    .line 473
    mul-int/lit8 v2, v1, 0x2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 474
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytes(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 472
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method serializePartial()[Ljava/lang/Object;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 493
    invoke-direct {p0}, Lio/grpc/Metadata;->len()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 494
    .local v0, "serialized":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_0

    .line 495
    mul-int/lit8 v2, v1, 0x2

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    aput-object v3, v0, v2

    .line 496
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytesOrStream(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v2

    .line 494
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Metadata("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lio/grpc/Metadata;->size:I

    if-ge v1, v2, :cond_2

    .line 548
    if-eqz v1, :cond_0

    .line 549
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->name(I)[B

    move-result-object v3

    sget-object v4, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 552
    .local v2, "headerName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 553
    const-string v3, "-bin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 554
    sget-object v3, Lio/grpc/Metadata;->BASE64_ENCODING_OMIT_PADDING:Lcom/google/common/io/BaseEncoding;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytes(I)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/io/BaseEncoding;->encode([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 556
    :cond_1
    new-instance v3, Ljava/lang/String;

    invoke-direct {p0, v1}, Lio/grpc/Metadata;->valueAsBytes(I)[B

    move-result-object v4

    sget-object v5, Lcom/google/common/base/Charsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 557
    .local v3, "headerValue":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .end local v2    # "headerName":Ljava/lang/String;
    .end local v3    # "headerValue":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 560
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
