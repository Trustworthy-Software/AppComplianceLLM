.class public final Lcom/google/firestore/v1/AggregationResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "AggregationResult.java"

# interfaces
.implements Lcom/google/firestore/v1/AggregationResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/AggregationResult$Builder;,
        Lcom/google/firestore/v1/AggregationResult$AggregateFieldsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/AggregationResult;",
        "Lcom/google/firestore/v1/AggregationResult$Builder;",
        ">;",
        "Lcom/google/firestore/v1/AggregationResultOrBuilder;"
    }
.end annotation


# static fields
.field public static final AGGREGATE_FIELDS_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/AggregationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private aggregateFields_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 456
    new-instance v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-direct {v0}, Lcom/google/firestore/v1/AggregationResult;-><init>()V

    .line 459
    .local v0, "defaultInstance":Lcom/google/firestore/v1/AggregationResult;
    sput-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    .line 460
    const-class v1, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 462
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/AggregationResult;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 34
    nop

    .line 36
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    .line 22
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/AggregationResult;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firestore/v1/AggregationResult;

    .line 16
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->getMutableAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/AggregationResult;
    .locals 1

    .line 465
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method private getMutableAggregateFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetMutableAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableAggregateFields()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult;->aggregateFields_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1

    .line 226
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/AggregationResult;)Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/AggregationResult;

    .line 229
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/AggregationResult;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/AggregationResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/AggregationResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 174
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 154
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 161
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 179
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/AggregationResult;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/AggregationResult;",
            ">;"
        }
    .end annotation

    .line 471
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public containsAggregateFields(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 68
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 407
    sget-object v0, Lcom/google/firestore/v1/AggregationResult$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 449
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 446
    :pswitch_0
    return-object v1

    .line 443
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 428
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 429
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/AggregationResult;>;"
    if-nez v0, :cond_1

    .line 430
    const-class v1, Lcom/google/firestore/v1/AggregationResult;

    monitor-enter v1

    .line 431
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/AggregationResult;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 432
    if-nez v0, :cond_0

    .line 433
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 436
    sput-object v0, Lcom/google/firestore/v1/AggregationResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 438
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 440
    :cond_1
    :goto_0
    return-object v0

    .line 425
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/AggregationResult;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    return-object v0

    .line 415
    :pswitch_4
    const-string v0, "aggregateFields_"

    sget-object v1, Lcom/google/firestore/v1/AggregationResult$AggregateFieldsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 419
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0001\u0000\u0000\u00022"

    .line 421
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/AggregationResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/AggregationResult;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 412
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/AggregationResult$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/AggregationResult$Builder;-><init>(Lcom/google/firestore/v1/AggregationResult$1;)V

    return-object v0

    .line 409
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-direct {v0}, Lcom/google/firestore/v1/AggregationResult;-><init>()V

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

.method public getAggregateFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateFieldsCount()I
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getAggregateFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 91
    nop

    .line 92
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 91
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/firestore/v1/Value;

    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 110
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 111
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 112
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getAggregateFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 129
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 130
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult;->internalGetAggregateFields()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 131
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    return-object v2

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method
