.class public final Lcom/google/firestore/v1/BloomFilter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BloomFilter.java"

# interfaces
.implements Lcom/google/firestore/v1/BloomFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/BloomFilter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/BloomFilter;",
        "Lcom/google/firestore/v1/BloomFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BloomFilterOrBuilder;"
    }
.end annotation


# static fields
.field public static final BITS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

.field public static final HASH_COUNT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BloomFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bits_:Lcom/google/firestore/v1/BitSequence;

.field private hashCount_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 407
    new-instance v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-direct {v0}, Lcom/google/firestore/v1/BloomFilter;-><init>()V

    .line 410
    .local v0, "defaultInstance":Lcom/google/firestore/v1/BloomFilter;
    sput-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    .line 411
    const-class v1, Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 413
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/BloomFilter;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/BloomFilter;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/BloomFilter;Lcom/google/firestore/v1/BitSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BloomFilter;
    .param p1, "x1"    # Lcom/google/firestore/v1/BitSequence;

    .line 21
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BloomFilter;->setBits(Lcom/google/firestore/v1/BitSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/BloomFilter;Lcom/google/firestore/v1/BitSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BloomFilter;
    .param p1, "x1"    # Lcom/google/firestore/v1/BitSequence;

    .line 21
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BloomFilter;->mergeBits(Lcom/google/firestore/v1/BitSequence;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/BloomFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BloomFilter;

    .line 21
    invoke-direct {p0}, Lcom/google/firestore/v1/BloomFilter;->clearBits()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/BloomFilter;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BloomFilter;
    .param p1, "x1"    # I

    .line 21
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BloomFilter;->setHashCount(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/BloomFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BloomFilter;

    .line 21
    invoke-direct {p0}, Lcom/google/firestore/v1/BloomFilter;->clearHashCount()V

    return-void
.end method

.method private clearBits()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BloomFilter;->bits_:Lcom/google/firestore/v1/BitSequence;

    .line 92
    return-void
.end method

.method private clearHashCount()V
    .locals 1

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BloomFilter;->hashCount_:I

    .line 130
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/BloomFilter;
    .locals 1

    .line 416
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method private mergeBits(Lcom/google/firestore/v1/BitSequence;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/BitSequence;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter;->bits_:Lcom/google/firestore/v1/BitSequence;

    if-eqz v0, :cond_0

    .line 75
    invoke-static {}, Lcom/google/firestore/v1/BitSequence;->getDefaultInstance()Lcom/google/firestore/v1/BitSequence;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter;->bits_:Lcom/google/firestore/v1/BitSequence;

    .line 77
    invoke-static {v0}, Lcom/google/firestore/v1/BitSequence;->newBuilder(Lcom/google/firestore/v1/BitSequence;)Lcom/google/firestore/v1/BitSequence$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/BitSequence$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BitSequence$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BitSequence$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BitSequence;

    iput-object v0, p0, Lcom/google/firestore/v1/BloomFilter;->bits_:Lcom/google/firestore/v1/BitSequence;

    goto :goto_0

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/BloomFilter;->bits_:Lcom/google/firestore/v1/BitSequence;

    .line 82
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/BloomFilter$Builder;
    .locals 1

    .line 207
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/BloomFilter;)Lcom/google/firestore/v1/BloomFilter$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/BloomFilter;

    .line 210
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/BloomFilter;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/BloomFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/BloomFilter;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 148
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 142
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BloomFilter;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BloomFilter;",
            ">;"
        }
    .end annotation

    .line 422
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBits(Lcom/google/firestore/v1/BitSequence;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/BitSequence;

    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    iput-object p1, p0, Lcom/google/firestore/v1/BloomFilter;->bits_:Lcom/google/firestore/v1/BitSequence;

    .line 63
    return-void
.end method

.method private setHashCount(I)V
    .locals 0
    .param p1, "value"    # I

    .line 118
    iput p1, p0, Lcom/google/firestore/v1/BloomFilter;->hashCount_:I

    .line 119
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 357
    sget-object v0, Lcom/google/firestore/v1/BloomFilter$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 400
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 397
    :pswitch_0
    return-object v1

    .line 394
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 379
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->PARSER:Lcom/google/protobuf/Parser;

    .line 380
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/BloomFilter;>;"
    if-nez v0, :cond_1

    .line 381
    const-class v1, Lcom/google/firestore/v1/BloomFilter;

    monitor-enter v1

    .line 382
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/BloomFilter;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 383
    if-nez v0, :cond_0

    .line 384
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 387
    sput-object v0, Lcom/google/firestore/v1/BloomFilter;->PARSER:Lcom/google/protobuf/Parser;

    .line 389
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 391
    :cond_1
    :goto_0
    return-object v0

    .line 376
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/BloomFilter;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    return-object v0

    .line 365
    :pswitch_4
    const-string v0, "bits_"

    const-string v1, "hashCount_"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 369
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u0004"

    .line 372
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/BloomFilter;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/BloomFilter;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 362
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/BloomFilter$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/BloomFilter$Builder;-><init>(Lcom/google/firestore/v1/BloomFilter$1;)V

    return-object v0

    .line 359
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-direct {v0}, Lcom/google/firestore/v1/BloomFilter;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBits()Lcom/google/firestore/v1/BitSequence;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter;->bits_:Lcom/google/firestore/v1/BitSequence;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/BitSequence;->getDefaultInstance()Lcom/google/firestore/v1/BitSequence;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHashCount()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/google/firestore/v1/BloomFilter;->hashCount_:I

    return v0
.end method

.method public hasBits()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter;->bits_:Lcom/google/firestore/v1/BitSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
