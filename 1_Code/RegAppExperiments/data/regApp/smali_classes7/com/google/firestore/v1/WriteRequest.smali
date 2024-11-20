.class public final Lcom/google/firestore/v1/WriteRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WriteRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/WriteRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/WriteRequest$Builder;,
        Lcom/google/firestore/v1/WriteRequest$LabelsDefaultEntryHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/WriteRequest;",
        "Lcom/google/firestore/v1/WriteRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/WriteRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

.field public static final LABELS_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/WriteRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_ID_FIELD_NUMBER:I = 0x2

.field public static final STREAM_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final WRITES_FIELD_NUMBER:I = 0x3


# instance fields
.field private database_:Ljava/lang/String;

.field private labels_:Lcom/google/protobuf/MapFieldLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private streamId_:Ljava/lang/String;

.field private streamToken_:Lcom/google/protobuf/ByteString;

.field private writes_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1261
    new-instance v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/WriteRequest;-><init>()V

    .line 1264
    .local v0, "defaultInstance":Lcom/google/firestore/v1/WriteRequest;
    sput-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    .line 1265
    const-class v1, Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1267
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/WriteRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 443
    nop

    .line 445
    invoke-static {}, Lcom/google/protobuf/MapFieldLite;->emptyMapField()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->database_:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->streamId_:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 28
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->streamToken_:Lcom/google/protobuf/ByteString;

    .line 29
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/WriteRequest;
    .locals 1

    .line 19
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/WriteRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteRequest;->setDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/WriteRequest;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteRequest;->addAllWrites(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/WriteRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;

    .line 19
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->clearWrites()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/WriteRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # I

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteRequest;->removeWrites(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/WriteRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteRequest;->setStreamToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/WriteRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;

    .line 19
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->clearStreamToken()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/WriteRequest;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;

    .line 19
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->getMutableLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/WriteRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;

    .line 19
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->clearDatabase()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/WriteRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteRequest;->setDatabaseBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/WriteRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteRequest;->setStreamId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/WriteRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;

    .line 19
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->clearStreamId()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/WriteRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteRequest;->setStreamIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/WriteRequest;ILcom/google/firestore/v1/Write;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Write;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/WriteRequest;->setWrites(ILcom/google/firestore/v1/Write;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/WriteRequest;Lcom/google/firestore/v1/Write;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/Write;

    .line 19
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/WriteRequest;->addWrites(Lcom/google/firestore/v1/Write;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/WriteRequest;ILcom/google/firestore/v1/Write;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/WriteRequest;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Write;

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/WriteRequest;->addWrites(ILcom/google/firestore/v1/Write;)V

    return-void
.end method

.method private addAllWrites(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Write;",
            ">;)V"
        }
    .end annotation

    .line 332
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Write;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->ensureWritesIsMutable()V

    .line 333
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 335
    return-void
.end method

.method private addWrites(ILcom/google/firestore/v1/Write;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 315
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 316
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->ensureWritesIsMutable()V

    .line 317
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 318
    return-void
.end method

.method private addWrites(Lcom/google/firestore/v1/Write;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Write;

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 299
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->ensureWritesIsMutable()V

    .line 300
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method private clearDatabase()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->getDefaultInstance()Lcom/google/firestore/v1/WriteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->database_:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private clearStreamId()V
    .locals 1

    .line 165
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->getDefaultInstance()Lcom/google/firestore/v1/WriteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getStreamId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->streamId_:Ljava/lang/String;

    .line 166
    return-void
.end method

.method private clearStreamToken()V
    .locals 1

    .line 429
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->getDefaultInstance()Lcom/google/firestore/v1/WriteRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->streamToken_:Lcom/google/protobuf/ByteString;

    .line 430
    return-void
.end method

.method private clearWrites()V
    .locals 1

    .line 348
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 349
    return-void
.end method

.method private ensureWritesIsMutable()V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 263
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/Write;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    nop

    .line 265
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 267
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/WriteRequest;
    .locals 1

    .line 1270
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method private getMutableLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 542
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    return-object v0
.end method

.method private internalGetLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method private internalGetMutableLabels()Lcom/google/protobuf/MapFieldLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/MapFieldLite<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->isMutable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->mutableCopy()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->labels_:Lcom/google/protobuf/MapFieldLite;

    return-object v0
.end method

.method public static newBuilder()Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1

    .line 620
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/WriteRequest;)Lcom/google/firestore/v1/WriteRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/WriteRequest;

    .line 623
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/WriteRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/WriteRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 603
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/WriteRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 561
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 568
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 615
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 585
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 573
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/WriteRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 580
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/WriteRequest;",
            ">;"
        }
    .end annotation

    .line 1276
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeWrites(I)V
    .locals 1
    .param p1, "index"    # I

    .line 362
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->ensureWritesIsMutable()V

    .line 363
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 364
    return-void
.end method

.method private setDatabase(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/WriteRequest;->database_:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private setDatabaseBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 102
    invoke-static {p1}, Lcom/google/firestore/v1/WriteRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 103
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->database_:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private setStreamId(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 152
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/WriteRequest;->streamId_:Ljava/lang/String;

    .line 153
    return-void
.end method

.method private setStreamIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 179
    invoke-static {p1}, Lcom/google/firestore/v1/WriteRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 180
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->streamId_:Ljava/lang/String;

    .line 182
    return-void
.end method

.method private setStreamToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 407
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 409
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/WriteRequest;->streamToken_:Lcom/google/protobuf/ByteString;

    .line 410
    return-void
.end method

.method private setWrites(ILcom/google/firestore/v1/Write;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 282
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 283
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->ensureWritesIsMutable()V

    .line 284
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 285
    return-void
.end method


# virtual methods
.method public containsLabels(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 474
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/protobuf/MapFieldLite;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1206
    sget-object v0, Lcom/google/firestore/v1/WriteRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1251
    :pswitch_0
    return-object v1

    .line 1248
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1233
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1234
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/WriteRequest;>;"
    if-nez v0, :cond_1

    .line 1235
    const-class v1, Lcom/google/firestore/v1/WriteRequest;

    monitor-enter v1

    .line 1236
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/WriteRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1237
    if-nez v0, :cond_0

    .line 1238
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1241
    sput-object v0, Lcom/google/firestore/v1/WriteRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1243
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1245
    :cond_1
    :goto_0
    return-object v0

    .line 1230
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/WriteRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    return-object v0

    .line 1214
    :pswitch_4
    const-string v1, "database_"

    const-string v2, "streamId_"

    const-string v3, "writes_"

    const-class v4, Lcom/google/firestore/v1/Write;

    const-string v5, "streamToken_"

    const-string v6, "labels_"

    sget-object v7, Lcom/google/firestore/v1/WriteRequest$LabelsDefaultEntryHolder;->defaultEntry:Lcom/google/protobuf/MapEntryLite;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 1223
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0001\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u001b\u0004\n\u00052"

    .line 1226
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/WriteRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/WriteRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/WriteRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1211
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/WriteRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/WriteRequest$Builder;-><init>(Lcom/google/firestore/v1/WriteRequest$1;)V

    return-object v0

    .line 1208
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/WriteRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/WriteRequest;-><init>()V

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

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->database_:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->database_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 482
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 460
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/MapFieldLite;->size()I

    move-result v0

    return v0
.end method

.method public getLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 494
    nop

    .line 495
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v0

    .line 494
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 509
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 510
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 511
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 512
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 525
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 526
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 527
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteRequest;->internalGetLabels()Lcom/google/protobuf/MapFieldLite;

    move-result-object v1

    .line 528
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 529
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->streamId_:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->streamId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->streamToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getWrites(I)Lcom/google/firestore/v1/Write;
    .locals 1
    .param p1, "index"    # I

    .line 244
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Write;

    return-object v0
.end method

.method public getWritesCount()I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getWritesOrBuilder(I)Lcom/google/firestore/v1/WriteOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 259
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteOrBuilder;

    return-object v0
.end method

.method public getWritesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firestore/v1/WriteOrBuilder;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/firestore/v1/WriteRequest;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
