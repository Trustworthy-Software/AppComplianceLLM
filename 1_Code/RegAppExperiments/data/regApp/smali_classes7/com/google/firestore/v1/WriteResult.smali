.class public final Lcom/google/firestore/v1/WriteResult;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WriteResult.java"

# interfaces
.implements Lcom/google/firestore/v1/WriteResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/WriteResult$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/WriteResult;",
        "Lcom/google/firestore/v1/WriteResult$Builder;",
        ">;",
        "Lcom/google/firestore/v1/WriteResultOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSFORM_RESULTS_FIELD_NUMBER:I = 0x2

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x1


# instance fields
.field private transformResults_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation
.end field

.field private updateTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 659
    new-instance v0, Lcom/google/firestore/v1/WriteResult;

    invoke-direct {v0}, Lcom/google/firestore/v1/WriteResult;-><init>()V

    .line 662
    .local v0, "defaultInstance":Lcom/google/firestore/v1/WriteResult;
    sput-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    .line 663
    const-class v1, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 665
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/WriteResult;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/firestore/v1/WriteResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/WriteResult;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/WriteResult;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteResult;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteResult;->setUpdateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/WriteResult;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteResult;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteResult;->mergeUpdateTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/WriteResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteResult;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteResult;->clearUpdateTime()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/WriteResult;ILcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteResult;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/WriteResult;->setTransformResults(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/WriteResult;Lcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteResult;
    .param p1, "x1"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteResult;->addTransformResults(Lcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/WriteResult;ILcom/google/firestore/v1/Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteResult;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Value;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/WriteResult;->addTransformResults(ILcom/google/firestore/v1/Value;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/WriteResult;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteResult;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteResult;->addAllTransformResults(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/WriteResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteResult;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteResult;->clearTransformResults()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/WriteResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteResult;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteResult;->removeTransformResults(I)V

    return-void
.end method

.method private addAllTransformResults(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteResult;->ensureTransformResultsIsMutable()V

    .line 224
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 226
    return-void
.end method

.method private addTransformResults(ILcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 209
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 210
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteResult;->ensureTransformResultsIsMutable()V

    .line 211
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 212
    return-void
.end method

.method private addTransformResults(Lcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteResult;->ensureTransformResultsIsMutable()V

    .line 197
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 198
    return-void
.end method

.method private clearTransformResults()V
    .locals 1

    .line 236
    invoke-static {}, Lcom/google/firestore/v1/WriteResult;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 237
    return-void
.end method

.method private clearUpdateTime()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteResult;->updateTime_:Lcom/google/protobuf/Timestamp;

    .line 100
    return-void
.end method

.method private ensureTransformResultsIsMutable()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 166
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    nop

    .line 168
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 170
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/WriteResult;
    .locals 1

    .line 668
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method private mergeUpdateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->updateTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->updateTime_:Lcom/google/protobuf/Timestamp;

    .line 82
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/v1/WriteResult;->updateTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/WriteResult;->updateTime_:Lcom/google/protobuf/Timestamp;

    .line 87
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1

    .line 326
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResult;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/WriteResult$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/WriteResult;

    .line 329
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/WriteResult;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/WriteResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/WriteResult;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 267
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 274
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 254
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 261
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 279
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 286
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;"
        }
    .end annotation

    .line 674
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResult;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTransformResults(I)V
    .locals 1
    .param p1, "index"    # I

    .line 247
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteResult;->ensureTransformResultsIsMutable()V

    .line 248
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 249
    return-void
.end method

.method private setTransformResults(ILcom/google/firestore/v1/Value;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 182
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 183
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteResult;->ensureTransformResultsIsMutable()V

    .line 184
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 185
    return-void
.end method

.method private setUpdateTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    iput-object p1, p0, Lcom/google/firestore/v1/WriteResult;->updateTime_:Lcom/google/protobuf/Timestamp;

    .line 65
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 608
    sget-object v0, Lcom/google/firestore/v1/WriteResult$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 652
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 649
    :pswitch_0
    return-object v1

    .line 646
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 631
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 632
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/WriteResult;>;"
    if-nez v0, :cond_1

    .line 633
    const-class v1, Lcom/google/firestore/v1/WriteResult;

    monitor-enter v1

    .line 634
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/WriteResult;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 635
    if-nez v0, :cond_0

    .line 636
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 639
    sput-object v0, Lcom/google/firestore/v1/WriteResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 641
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 643
    :cond_1
    :goto_0
    return-object v0

    .line 628
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/WriteResult;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    return-object v0

    .line 616
    :pswitch_4
    const-string v0, "updateTime_"

    const-string v1, "transformResults_"

    const-class v2, Lcom/google/firestore/v1/Value;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 621
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\t\u0002\u001b"

    .line 624
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/WriteResult;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteResult;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/WriteResult;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 613
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/WriteResult$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/WriteResult$Builder;-><init>(Lcom/google/firestore/v1/WriteResult$1;)V

    return-object v0

    .line 610
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/WriteResult;

    invoke-direct {v0}, Lcom/google/firestore/v1/WriteResult;-><init>()V

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

.method public getTransformResults(I)Lcom/google/firestore/v1/Value;
    .locals 1
    .param p1, "index"    # I

    .line 150
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    return-object v0
.end method

.method public getTransformResultsCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTransformResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTransformResultsOrBuilder(I)Lcom/google/firestore/v1/ValueOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 162
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ValueOrBuilder;

    return-object v0
.end method

.method public getTransformResultsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/ValueOrBuilder;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->transformResults_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getUpdateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->updateTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasUpdateTime()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResult;->updateTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
