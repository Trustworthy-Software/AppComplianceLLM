.class public final Lcom/google/firestore/v1/BatchGetDocumentsResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BatchGetDocumentsResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/BatchGetDocumentsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;,
        Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

.field public static final FOUND_FIELD_NUMBER:I = 0x1

.field public static final MISSING_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x4

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x3


# instance fields
.field private readTime_:Lcom/google/protobuf/Timestamp;

.field private resultCase_:I

.field private result_:Ljava/lang/Object;

.field private transaction_:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 819
    new-instance v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;-><init>()V

    .line 822
    .local v0, "defaultInstance":Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    sput-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 823
    const-class v1, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 825
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 19
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 20
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearResult()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearReadTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setFound(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/firestore/v1/Document;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .param p1, "x1"    # Lcom/google/firestore/v1/Document;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->mergeFound(Lcom/google/firestore/v1/Document;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearFound()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setMissing(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearMissing()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setMissingBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->clearTransaction()V

    return-void
.end method

.method private clearFound()V
    .locals 2

    .line 128
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 132
    :cond_0
    return-void
.end method

.method private clearMissing()V
    .locals 2

    .line 207
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 211
    :cond_0
    return-void
.end method

.method private clearReadTime()V
    .locals 1

    .line 350
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 352
    return-void
.end method

.method private clearResult()V
    .locals 1

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method private clearTransaction()V
    .locals 1

    .line 270
    invoke-static {}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 271
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1

    .line 828
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method private mergeFound(Lcom/google/firestore/v1/Document;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->newBuilder(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Document$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Document$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    goto :goto_0

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 118
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 119
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 330
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 332
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 333
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 334
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 336
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 339
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1

    .line 429
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 432
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 370
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 377
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 417
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 357
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 364
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 382
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 389
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
            ">;"
        }
    .end annotation

    .line 834
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFound(Lcom/google/firestore/v1/Document;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 101
    return-void
.end method

.method private setMissing(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 195
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 196
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 197
    return-void
.end method

.method private setMissingBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 223
    invoke-static {p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 224
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    .line 225
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    .line 226
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 314
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    .line 317
    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 255
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 257
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->transaction_:Lcom/google/protobuf/ByteString;

    .line 258
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 766
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 812
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 809
    :pswitch_0
    return-object v1

    .line 806
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 791
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 792
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/BatchGetDocumentsResponse;>;"
    if-nez v0, :cond_1

    .line 793
    const-class v1, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    monitor-enter v1

    .line 794
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 795
    if-nez v0, :cond_0

    .line 796
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 799
    sput-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 801
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 803
    :cond_1
    :goto_0
    return-object v0

    .line 788
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/BatchGetDocumentsResponse;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    return-object v0

    .line 774
    :pswitch_4
    const-string v0, "result_"

    const-string v1, "resultCase_"

    const-class v2, Lcom/google/firestore/v1/Document;

    const-string v3, "transaction_"

    const-string v4, "readTime_"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    .line 781
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002\u023b\u0000\u0003\n\u0004\t"

    .line 784
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 771
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;-><init>(Lcom/google/firestore/v1/BatchGetDocumentsResponse$1;)V

    return-object v0

    .line 768
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-direct {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;-><init>()V

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

.method public getFound()Lcom/google/firestore/v1/Document;
    .locals 2

    .line 85
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Document;

    return-object v0

    .line 88
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getMissing()Ljava/lang/String;
    .locals 3

    .line 159
    const-string v0, ""

    .line 160
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 161
    iget-object v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 163
    :cond_0
    return-object v0
.end method

.method public getMissingBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .line 177
    const-string v0, ""

    .line 178
    .local v0, "ref":Ljava/lang/String;
    iget v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->result_:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 181
    :cond_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v1

    return-object v1
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResultCase()Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;
    .locals 1

    .line 55
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;->forNumber(I)Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->transaction_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasFound()Z
    .locals 2

    .line 74
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMissing()Z
    .locals 2

    .line 146
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->resultCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->readTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
