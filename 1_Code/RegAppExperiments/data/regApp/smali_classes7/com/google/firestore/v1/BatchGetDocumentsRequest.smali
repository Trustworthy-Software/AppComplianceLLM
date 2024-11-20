.class public final Lcom/google/firestore/v1/BatchGetDocumentsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BatchGetDocumentsRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/BatchGetDocumentsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;,
        Lcom/google/firestore/v1/BatchGetDocumentsRequest$ConsistencySelectorCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/BatchGetDocumentsRequest;",
        "Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BatchGetDocumentsRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATABASE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x2

.field public static final MASK_FIELD_NUMBER:I = 0x3

.field public static final NEW_TRANSACTION_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BatchGetDocumentsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x7

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x4


# instance fields
.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;

.field private database_:Ljava/lang/String;

.field private documents_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mask_:Lcom/google/firestore/v1/DocumentMask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1291
    new-instance v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;-><init>()V

    .line 1294
    .local v0, "defaultInstance":Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    sput-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 1295
    const-class v1, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1297
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->database_:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 21
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->clearConsistencySelector()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->setMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mergeMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->clearMask()V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->clearTransaction()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->clearNewTransaction()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->setDatabase(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->clearReadTime()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->clearDatabase()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->setDatabaseBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/BatchGetDocumentsRequest;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->setDocuments(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->addDocuments(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->addAllDocuments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->clearDocuments()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->addDocumentsBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllDocuments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 260
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->ensureDocumentsIsMutable()V

    .line 261
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 263
    return-void
.end method

.method private addDocuments(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 244
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->ensureDocumentsIsMutable()V

    .line 245
    iget-object v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 246
    return-void
.end method

.method private addDocumentsBytes(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 290
    invoke-static {p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 291
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->ensureDocumentsIsMutable()V

    .line 292
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method private clearConsistencySelector()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private clearDatabase()V
    .locals 1

    .line 121
    invoke-static {}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->database_:Ljava/lang/String;

    .line 122
    return-void
.end method

.method private clearDocuments()V
    .locals 1

    .line 275
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 276
    return-void
.end method

.method private clearMask()V
    .locals 1

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 369
    return-void
.end method

.method private clearNewTransaction()V
    .locals 2

    .line 505
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 507
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 509
    :cond_0
    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 580
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 581
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 584
    :cond_0
    return-void
.end method

.method private clearTransaction()V
    .locals 2

    .line 420
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 421
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 424
    :cond_0
    return-void
.end method

.method private ensureDocumentsIsMutable()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 207
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Ljava/lang/String;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    nop

    .line 209
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 211
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1

    .line 1300
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method private mergeMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 348
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    .line 350
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 352
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 354
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 357
    :goto_0
    return-void
.end method

.method private mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 484
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 485
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 486
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 487
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions;->newBuilder(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/TransactionOptions$Builder;

    move-result-object v0

    .line 488
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 490
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 492
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 493
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 561
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 562
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 563
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 564
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 565
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 567
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 569
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 570
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1

    .line 661
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 664
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 638
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 644
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 602
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 609
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 649
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 626
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 633
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 589
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 596
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 614
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 621
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/BatchGetDocumentsRequest;",
            ">;"
        }
    .end annotation

    .line 1306
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDatabase(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->database_:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private setDatabaseBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 134
    invoke-static {p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 135
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->database_:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private setDocuments(ILjava/lang/String;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 226
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 227
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->ensureDocumentsIsMutable()V

    .line 228
    iget-object v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method private setMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 333
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 336
    return-void
.end method

.method private setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 470
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 471
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 472
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 548
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 549
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 550
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 551
    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 409
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    .line 410
    iput-object p1, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 411
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1236
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1281
    :pswitch_0
    return-object v1

    .line 1278
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1263
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1264
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/BatchGetDocumentsRequest;>;"
    if-nez v0, :cond_1

    .line 1265
    const-class v1, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    monitor-enter v1

    .line 1266
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1267
    if-nez v0, :cond_0

    .line 1268
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1271
    sput-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1273
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1275
    :cond_1
    :goto_0
    return-object v0

    .line 1260
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/BatchGetDocumentsRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    return-object v0

    .line 1244
    :pswitch_4
    const-string v1, "consistencySelector_"

    const-string v2, "consistencySelectorCase_"

    const-string v3, "database_"

    const-string v4, "documents_"

    const-string v5, "mask_"

    const-class v6, Lcom/google/firestore/v1/TransactionOptions;

    const-class v7, Lcom/google/protobuf/Timestamp;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 1253
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0006\u0001\u0000\u0001\u0007\u0006\u0000\u0001\u0000\u0001\u0208\u0002\u021a\u0003\t\u0004=\u0000\u0005<\u0000\u0007<\u0000"

    .line 1256
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1241
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;-><init>(Lcom/google/firestore/v1/BatchGetDocumentsRequest$1;)V

    return-object v0

    .line 1238
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;-><init>()V

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

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/BatchGetDocumentsRequest$ConsistencySelectorCase;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/BatchGetDocumentsRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->database_:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->database_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDocuments(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 185
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDocumentsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 202
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 203
    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 202
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsCount()I
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getDocumentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->documents_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
    .locals 2

    .line 453
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions;

    return-object v0

    .line 456
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions;->getDefaultInstance()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 534
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 535
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 537
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 394
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 397
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasMask()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNewTransaction()Z
    .locals 2

    .line 439
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadTime()Z
    .locals 2

    .line 522
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTransaction()Z
    .locals 2

    .line 382
    iget v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->consistencySelectorCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
