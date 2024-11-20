.class public final Lcom/google/firestore/bundle/BundledDocumentMetadata;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BundledDocumentMetadata.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundledDocumentMetadataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/bundle/BundledDocumentMetadata;",
        "Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundledDocumentMetadataOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

.field public static final EXISTS_FIELD_NUMBER:I = 0x3

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundledDocumentMetadata;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERIES_FIELD_NUMBER:I = 0x4

.field public static final READ_TIME_FIELD_NUMBER:I = 0x2


# instance fields
.field private exists_:Z

.field private name_:Ljava/lang/String;

.field private queries_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private readTime_:Lcom/google/protobuf/Timestamp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 788
    new-instance v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;-><init>()V

    .line 791
    .local v0, "defaultInstance":Lcom/google/firestore/bundle/BundledDocumentMetadata;
    sput-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 792
    const-class v1, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 794
    .end local v0    # "defaultInstance":Lcom/google/firestore/bundle/BundledDocumentMetadata;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/bundle/BundledDocumentMetadata;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/bundle/BundledDocumentMetadata;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->addQueries(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/bundle/BundledDocumentMetadata;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->addAllQueries(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->clearQueries()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->addQueriesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->clearName()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/bundle/BundledDocumentMetadata;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->clearReadTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/bundle/BundledDocumentMetadata;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .param p1, "x1"    # Z

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setExists(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/bundle/BundledDocumentMetadata;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->clearExists()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/bundle/BundledDocumentMetadata;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->setQueries(ILjava/lang/String;)V

    return-void
.end method

.method private addAllQueries(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->ensureQueriesIsMutable()V

    .line 294
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 296
    return-void
.end method

.method private addQueries(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 280
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->ensureQueriesIsMutable()V

    .line 281
    iget-object v1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 282
    return-void
.end method

.method private addQueriesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 317
    invoke-static {p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 318
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->ensureQueriesIsMutable()V

    .line 319
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method private clearExists()V
    .locals 1

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->exists_:Z

    .line 191
    return-void
.end method

.method private clearName()V
    .locals 1

    .line 72
    invoke-static {}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getDefaultInstance()Lcom/google/firestore/bundle/BundledDocumentMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    .line 73
    return-void
.end method

.method private clearQueries()V
    .locals 1

    .line 305
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 306
    return-void
.end method

.method private clearReadTime()V
    .locals 1

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 153
    return-void
.end method

.method private ensureQueriesIsMutable()V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 249
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 250
    nop

    .line 251
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 253
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1

    .line 797
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 138
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 140
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 143
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1

    .line 397
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/bundle/BundledDocumentMetadata;)Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/bundle/BundledDocumentMetadata;

    .line 400
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0, p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 374
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 338
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 385
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 325
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 332
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 350
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/bundle/BundledDocumentMetadata;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/bundle/BundledDocumentMetadata;",
            ">;"
        }
    .end annotation

    .line 803
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setExists(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 179
    iput-boolean p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->exists_:Z

    .line 180
    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 61
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 84
    invoke-static {p1}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 85
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    .line 87
    return-void
.end method

.method private setQueries(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 265
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 266
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->ensureQueriesIsMutable()V

    .line 267
    iget-object v1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 268
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    iput-object p1, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 124
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 736
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 781
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 778
    :pswitch_0
    return-object v1

    .line 775
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 760
    :pswitch_2
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 761
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/BundledDocumentMetadata;>;"
    if-nez v0, :cond_1

    .line 762
    const-class v1, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    monitor-enter v1

    .line 763
    :try_start_0
    sget-object v2, Lcom/google/firestore/bundle/BundledDocumentMetadata;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 764
    if-nez v0, :cond_0

    .line 765
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 768
    sput-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->PARSER:Lcom/google/protobuf/Parser;

    .line 770
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 772
    :cond_1
    :goto_0
    return-object v0

    .line 757
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/bundle/BundledDocumentMetadata;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    return-object v0

    .line 744
    :pswitch_4
    const-string v0, "name_"

    const-string v1, "readTime_"

    const-string v2, "exists_"

    const-string v3, "queries_"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 750
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u0208\u0002\t\u0003\u0007\u0004\u021a"

    .line 753
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/bundle/BundledDocumentMetadata;->DEFAULT_INSTANCE:Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 741
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/bundle/BundledDocumentMetadata$Builder;-><init>(Lcom/google/firestore/bundle/BundledDocumentMetadata$1;)V

    return-object v0

    .line 738
    :pswitch_6
    new-instance v0, Lcom/google/firestore/bundle/BundledDocumentMetadata;

    invoke-direct {v0}, Lcom/google/firestore/bundle/BundledDocumentMetadata;-><init>()V

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

.method public getExists()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->exists_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueries(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 230
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQueriesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 244
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 245
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 244
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueriesCount()I
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getQueriesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->queries_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledDocumentMetadata;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
