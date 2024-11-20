.class public final Lcom/google/firebase/firestore/proto/WriteBatch;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "WriteBatch.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/WriteBatchOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/firestore/proto/WriteBatch;",
        "Lcom/google/firebase/firestore/proto/WriteBatch$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/WriteBatchOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_WRITES_FIELD_NUMBER:I = 0x4

.field public static final BATCH_ID_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

.field public static final LOCAL_WRITE_TIME_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/WriteBatch;",
            ">;"
        }
    .end annotation
.end field

.field public static final WRITES_FIELD_NUMBER:I = 0x2


# instance fields
.field private baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation
.end field

.field private batchId_:I

.field private localWriteTime_:Lcom/google/protobuf/Timestamp;

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

    .line 1167
    new-instance v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;-><init>()V

    .line 1170
    .local v0, "defaultInstance":Lcom/google/firebase/firestore/proto/WriteBatch;
    sput-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 1171
    const-class v1, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1173
    .end local v0    # "defaultInstance":Lcom/google/firebase/firestore/proto/WriteBatch;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 21
    invoke-static {}, Lcom/google/firebase/firestore/proto/WriteBatch;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 22
    invoke-static {}, Lcom/google/firebase/firestore/proto/WriteBatch;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 23
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1

    .line 15
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/proto/WriteBatch;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->setBatchId(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->mergeLocalWriteTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/firestore/proto/WriteBatch;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->clearLocalWriteTime()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Write;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->setBaseWrites(ILcom/google/firestore/v1/Write;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/firestore/v1/Write;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # Lcom/google/firestore/v1/Write;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->addBaseWrites(Lcom/google/firestore/v1/Write;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Write;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->addBaseWrites(ILcom/google/firestore/v1/Write;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firebase/firestore/proto/WriteBatch;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->addAllBaseWrites(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firebase/firestore/proto/WriteBatch;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->clearBaseWrites()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firebase/firestore/proto/WriteBatch;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->removeBaseWrites(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/proto/WriteBatch;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->clearBatchId()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Write;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->setWrites(ILcom/google/firestore/v1/Write;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/firestore/v1/Write;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # Lcom/google/firestore/v1/Write;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->addWrites(Lcom/google/firestore/v1/Write;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/firestore/v1/Write;

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->addWrites(ILcom/google/firestore/v1/Write;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/proto/WriteBatch;Ljava/lang/Iterable;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # Ljava/lang/Iterable;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->addAllWrites(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/firestore/proto/WriteBatch;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 15
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->clearWrites()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/firestore/proto/WriteBatch;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # I

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->removeWrites(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 15
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->setLocalWriteTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method private addAllBaseWrites(Ljava/lang/Iterable;)V
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

    .line 453
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Write;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureBaseWritesIsMutable()V

    .line 454
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 456
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

    .line 177
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Write;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureWritesIsMutable()V

    .line 178
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 180
    return-void
.end method

.method private addBaseWrites(ILcom/google/firestore/v1/Write;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 432
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 433
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureBaseWritesIsMutable()V

    .line 434
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 435
    return-void
.end method

.method private addBaseWrites(Lcom/google/firestore/v1/Write;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Write;

    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 412
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureBaseWritesIsMutable()V

    .line 413
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 414
    return-void
.end method

.method private addWrites(ILcom/google/firestore/v1/Write;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 165
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureWritesIsMutable()V

    .line 166
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    .line 167
    return-void
.end method

.method private addWrites(Lcom/google/firestore/v1/Write;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Write;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureWritesIsMutable()V

    .line 153
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method private clearBaseWrites()V
    .locals 1

    .line 473
    invoke-static {}, Lcom/google/firebase/firestore/proto/WriteBatch;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 474
    return-void
.end method

.method private clearBatchId()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->batchId_:I

    .line 63
    return-void
.end method

.method private clearLocalWriteTime()V
    .locals 1

    .line 265
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->localWriteTime_:Lcom/google/protobuf/Timestamp;

    .line 267
    return-void
.end method

.method private clearWrites()V
    .locals 1

    .line 189
    invoke-static {}, Lcom/google/firebase/firestore/proto/WriteBatch;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 190
    return-void
.end method

.method private ensureBaseWritesIsMutable()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 368
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/Write;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 369
    nop

    .line 370
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 372
    :cond_0
    return-void
.end method

.method private ensureWritesIsMutable()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 124
    .local v0, "tmp":Lcom/google/protobuf/Internal$ProtobufList;, "Lcom/google/protobuf/Internal$ProtobufList<Lcom/google/firestore/v1/Write;>;"
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    nop

    .line 126
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 128
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1

    .line 1176
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method private mergeLocalWriteTime(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 248
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->localWriteTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->localWriteTime_:Lcom/google/protobuf/Timestamp;

    .line 252
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->localWriteTime_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 254
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->localWriteTime_:Lcom/google/protobuf/Timestamp;

    .line 257
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 570
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/WriteBatch;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 573
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 547
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 553
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 511
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 518
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 558
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 565
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 535
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 498
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 505
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 523
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/WriteBatch;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 530
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/WriteBatch;",
            ">;"
        }
    .end annotation

    .line 1182
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeBaseWrites(I)V
    .locals 1
    .param p1, "index"    # I

    .line 491
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureBaseWritesIsMutable()V

    .line 492
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 493
    return-void
.end method

.method private removeWrites(I)V
    .locals 1
    .param p1, "index"    # I

    .line 199
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureWritesIsMutable()V

    .line 200
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method private setBaseWrites(ILcom/google/firestore/v1/Write;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 391
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 392
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureBaseWritesIsMutable()V

    .line 393
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-void
.end method

.method private setBatchId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 50
    iput p1, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->batchId_:I

    .line 51
    return-void
.end method

.method private setLocalWriteTime(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 235
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->localWriteTime_:Lcom/google/protobuf/Timestamp;

    .line 238
    return-void
.end method

.method private setWrites(ILcom/google/firestore/v1/Write;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 139
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch;->ensureWritesIsMutable()V

    .line 141
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 142
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1113
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1160
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1157
    :pswitch_0
    return-object v1

    .line 1154
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1139
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->PARSER:Lcom/google/protobuf/Parser;

    .line 1140
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/WriteBatch;>;"
    if-nez v0, :cond_1

    .line 1141
    const-class v1, Lcom/google/firebase/firestore/proto/WriteBatch;

    monitor-enter v1

    .line 1142
    :try_start_0
    sget-object v2, Lcom/google/firebase/firestore/proto/WriteBatch;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1143
    if-nez v0, :cond_0

    .line 1144
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1147
    sput-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->PARSER:Lcom/google/protobuf/Parser;

    .line 1149
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1151
    :cond_1
    :goto_0
    return-object v0

    .line 1136
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/WriteBatch;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    return-object v0

    .line 1121
    :pswitch_4
    const-string v1, "batchId_"

    const-string v2, "writes_"

    const-class v3, Lcom/google/firestore/v1/Write;

    const-string v4, "localWriteTime_"

    const-string v5, "baseWrites_"

    const-class v6, Lcom/google/firestore/v1/Write;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 1129
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u0004\u0002\u001b\u0003\t\u0004\u001b"

    .line 1132
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/firestore/proto/WriteBatch;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1118
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;-><init>(Lcom/google/firebase/firestore/proto/WriteBatch$1;)V

    return-object v0

    .line 1115
    :pswitch_6
    new-instance v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;-><init>()V

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

.method public getBaseWrites(I)Lcom/google/firestore/v1/Write;
    .locals 1
    .param p1, "index"    # I

    .line 345
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Write;

    return-object v0
.end method

.method public getBaseWritesCount()I
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getBaseWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getBaseWritesOrBuilder(I)Lcom/google/firestore/v1/WriteOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 364
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/WriteOrBuilder;

    return-object v0
.end method

.method public getBaseWritesOrBuilderList()Ljava/util/List;
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

    .line 307
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->baseWrites_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getBatchId()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->batchId_:I

    return v0
.end method

.method public getLocalWriteTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->localWriteTime_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWrites(I)Lcom/google/firestore/v1/Write;
    .locals 1
    .param p1, "index"    # I

    .line 109
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Write;

    return-object v0
.end method

.method public getWritesCount()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 76
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getWritesOrBuilder(I)Lcom/google/firestore/v1/WriteOrBuilder;
    .locals 1
    .param p1, "index"    # I

    .line 120
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

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

    .line 87
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->writes_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasLocalWriteTime()Z
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch;->localWriteTime_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
