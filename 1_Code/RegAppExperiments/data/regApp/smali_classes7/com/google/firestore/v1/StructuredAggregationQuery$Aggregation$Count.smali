.class public final Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$CountOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Count"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$CountOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;",
            ">;"
        }
    .end annotation
.end field

.field public static final UP_TO_FIELD_NUMBER:I = 0x1


# instance fields
.field private upTo_:Lcom/google/protobuf/Int64Value;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 559
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;-><init>()V

    .line 562
    .local v0, "defaultInstance":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    .line 563
    const-class v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 565
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 176
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1

    .line 171
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;Lcom/google/protobuf/Int64Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .param p1, "x1"    # Lcom/google/protobuf/Int64Value;

    .line 171
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->setUpTo(Lcom/google/protobuf/Int64Value;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;Lcom/google/protobuf/Int64Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .param p1, "x1"    # Lcom/google/protobuf/Int64Value;

    .line 171
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->mergeUpTo(Lcom/google/protobuf/Int64Value;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    .line 171
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->clearUpTo()V

    return-void
.end method

.method private clearUpTo()V
    .locals 1

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->upTo_:Lcom/google/protobuf/Int64Value;

    .line 282
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1

    .line 568
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method private mergeUpTo(Lcom/google/protobuf/Int64Value;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Int64Value;

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 256
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->upTo_:Lcom/google/protobuf/Int64Value;

    if-eqz v0, :cond_0

    .line 257
    invoke-static {}, Lcom/google/protobuf/Int64Value;->getDefaultInstance()Lcom/google/protobuf/Int64Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->upTo_:Lcom/google/protobuf/Int64Value;

    .line 259
    invoke-static {v0}, Lcom/google/protobuf/Int64Value;->newBuilder(Lcom/google/protobuf/Int64Value;)Lcom/google/protobuf/Int64Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Int64Value$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int64Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Int64Value$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int64Value;

    iput-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->upTo_:Lcom/google/protobuf/Int64Value;

    goto :goto_0

    .line 261
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->upTo_:Lcom/google/protobuf/Int64Value;

    .line 264
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;
    .locals 1

    .line 359
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    .line 362
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 336
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 300
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 307
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 354
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 324
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 312
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 319
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;",
            ">;"
        }
    .end annotation

    .line 574
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setUpTo(Lcom/google/protobuf/Int64Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Int64Value;

    .line 234
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    iput-object p1, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->upTo_:Lcom/google/protobuf/Int64Value;

    .line 237
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 552
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 549
    :pswitch_0
    return-object v1

    .line 546
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 531
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->PARSER:Lcom/google/protobuf/Parser;

    .line 532
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;>;"
    if-nez v0, :cond_1

    .line 533
    const-class v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    monitor-enter v1

    .line 534
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 535
    if-nez v0, :cond_0

    .line 536
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 539
    sput-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->PARSER:Lcom/google/protobuf/Parser;

    .line 541
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 543
    :cond_1
    :goto_0
    return-object v0

    .line 528
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    return-object v0

    .line 519
    :pswitch_4
    const-string v0, "upTo_"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 522
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 524
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 516
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;-><init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V

    return-object v0

    .line 513
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-direct {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;-><init>()V

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

.method public getUpTo()Lcom/google/protobuf/Int64Value;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->upTo_:Lcom/google/protobuf/Int64Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Int64Value;->getDefaultInstance()Lcom/google/protobuf/Int64Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasUpTo()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;->upTo_:Lcom/google/protobuf/Int64Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
