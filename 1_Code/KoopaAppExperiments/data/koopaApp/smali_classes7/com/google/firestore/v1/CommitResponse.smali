.class public final Lcom/google/firestore/v1/CommitResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "CommitResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/CommitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/CommitResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/CommitResponse;",
        "Lcom/google/firestore/v1/CommitResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/CommitResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final COMMIT_TIME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/CommitResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRITE_RESULTS_FIELD_NUMBER:I = 0x1


# instance fields
.field private commitTime_:Lcom/google/protobuf/Timestamp;

.field private writeResults_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 649
    new-instance v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/CommitResponse;-><init>()V

    .line 652
    .local v0, "defaultInstance":Lcom/google/firestore/v1/CommitResponse;
    sput-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    .line 653
    const-class v1, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 655
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/CommitResponse;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    invoke-static {}, Lcom/google/firestore/v1/CommitResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/CommitResponse;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CommitResponse;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/WriteResult;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/CommitResponse;->setWriteResults(ILcom/google/firestore/v1/WriteResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/CommitResponse;Lcom/google/firestore/v1/WriteResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CommitResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/WriteResult;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CommitResponse;->addWriteResults(Lcom/google/firestore/v1/WriteResult;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CommitResponse;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/WriteResult;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/CommitResponse;->addWriteResults(ILcom/google/firestore/v1/WriteResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/CommitResponse;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CommitResponse;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CommitResponse;->addAllWriteResults(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/CommitResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CommitResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitResponse;->clearWriteResults()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/CommitResponse;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CommitResponse;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CommitResponse;->removeWriteResults(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/CommitResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CommitResponse;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CommitResponse;->setCommitTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/CommitResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CommitResponse;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/CommitResponse;->mergeCommitTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/CommitResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/CommitResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitResponse;->clearCommitTime()V

    return-void
.end method

.method private addAllWriteResults(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;)V"
        }
    .end annotation

    .line 151
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/WriteResult;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitResponse;->ensureWriteResultsIsMutable()V

    .line 152
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 154
    return-void
.end method

.method private addWriteResults(ILcom/google/firestore/v1/WriteResult;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/WriteResult;

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitResponse;->ensureWriteResultsIsMutable()V

    .line 138
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method private addWriteResults(Lcom/google/firestore/v1/WriteResult;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/WriteResult;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitResponse;->ensureWriteResultsIsMutable()V

    .line 123
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method private clearCommitTime()V
    .locals 1

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->commitTime_:Lcom/google/protobuf/Timestamp;

    .line 245
    return-void
.end method

.method private clearWriteResults()V
    .locals 1

    .line 165
    invoke-static {}, Lcom/google/firestore/v1/CommitResponse;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 166
    return-void
.end method

.method private ensureWriteResultsIsMutable()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 90
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/WriteResult;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    nop

    .line 92
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 94
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/CommitResponse;
    .locals 1

    .line 658
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method private mergeCommitTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 226
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 227
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->commitTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->commitTime_:Lcom/google/protobuf/Timestamp;

    .line 230
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->commitTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 232
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/CommitResponse;->commitTime_:Lcom/google/protobuf/Timestamp;

    .line 235
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 322
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/CommitResponse;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/CommitResponse;

    .line 325
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/CommitResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/CommitResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/CommitResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 263
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 270
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 257
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 275
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/CommitResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 282
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/CommitResponse;",
            ">;"
        }
    .end annotation

    .line 664
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeWriteResults(I)V
    .locals 1
    .param p1, "index"    # I

    .line 177
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitResponse;->ensureWriteResultsIsMutable()V

    .line 178
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 179
    return-void
.end method

.method private setCommitTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    iput-object p1, p0, Lcom/google/firestore/v1/CommitResponse;->commitTime_:Lcom/google/protobuf/Timestamp;

    .line 216
    return-void
.end method

.method private setWriteResults(ILcom/google/firestore/v1/WriteResult;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/WriteResult;

    .line 107
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitResponse;->ensureWriteResultsIsMutable()V

    .line 109
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 598
    sget-object v0, Lcom/google/firestore/v1/CommitResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 642
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 639
    :pswitch_0
    return-object v1

    .line 636
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 621
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 622
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/CommitResponse;>;"
    if-nez v0, :cond_1

    .line 623
    const-class v1, Lcom/google/firestore/v1/CommitResponse;

    monitor-enter v1

    .line 624
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/CommitResponse;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 625
    if-nez v0, :cond_0

    .line 626
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 629
    sput-object v0, Lcom/google/firestore/v1/CommitResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 631
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 633
    :cond_1
    :goto_0
    return-object v0

    .line 618
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/CommitResponse;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    return-object v0

    .line 606
    :pswitch_4
    const-string v0, "writeResults_"

    const-class v1, Lcom/google/firestore/v1/WriteResult;

    const-string v2, "commitTime_"

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 611
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\t"

    .line 614
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/CommitResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/CommitResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 603
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/CommitResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/CommitResponse$Builder;-><init>(Lcom/google/firestore/v1/CommitResponse$1;)V

    return-object v0

    .line 600
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/CommitResponse;-><init>()V

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

.method public getCommitTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->commitTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWriteResults(I)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p1, "index"    # I

    .line 73
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResult;

    return-object v0
.end method

.method public getWriteResultsCount()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getWriteResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getWriteResultsOrBuilder(I)Lcom/google/firestore/v1/WriteResultOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 86
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteResultOrBuilder;

    return-object v0
.end method

.method public getWriteResultsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/WriteResultOrBuilder;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->writeResults_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasCommitTime()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse;->commitTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
