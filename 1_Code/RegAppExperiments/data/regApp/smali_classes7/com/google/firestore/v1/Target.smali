.class public final Lcom/google/firestore/v1/Target;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/Target$Builder;,
        Lcom/google/firestore/v1/Target$ResumeTypeCase;,
        Lcom/google/firestore/v1/Target$TargetTypeCase;,
        Lcom/google/firestore/v1/Target$QueryTarget;,
        Lcom/google/firestore/v1/Target$QueryTargetOrBuilder;,
        Lcom/google/firestore/v1/Target$DocumentsTarget;,
        Lcom/google/firestore/v1/Target$DocumentsTargetOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/Target;",
        "Lcom/google/firestore/v1/Target$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x3

.field public static final EXPECTED_COUNT_FIELD_NUMBER:I = 0xc

.field public static final ONCE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x2

.field public static final READ_TIME_FIELD_NUMBER:I = 0xb

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x5


# instance fields
.field private expectedCount_:Lcom/google/protobuf/Int32Value;

.field private once_:Z

.field private resumeTypeCase_:I

.field private resumeType_:Ljava/lang/Object;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2397
    new-instance v0, Lcom/google/firestore/v1/Target;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target;-><init>()V

    .line 2400
    .local v0, "defaultInstance":Lcom/google/firestore/v1/Target;
    sput-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    .line 2401
    const-class v1, Lcom/google/firestore/v1/Target;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2403
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/Target;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1204
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1247
    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 19
    return-void
.end method

.method static synthetic access$1600()Lcom/google/firestore/v1/Target;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearTargetType()V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearResumeType()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearQuery()V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearDocuments()V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setResumeToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearResumeToken()V

    return-void
.end method

.method static synthetic access$2700(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearReadTime()V

    return-void
.end method

.method static synthetic access$3000(Lcom/google/firestore/v1/Target;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setTargetId(I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearTargetId()V

    return-void
.end method

.method static synthetic access$3200(Lcom/google/firestore/v1/Target;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Z

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setOnce(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearOnce()V

    return-void
.end method

.method static synthetic access$3400(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Int32Value;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->setExpectedCount(Lcom/google/protobuf/Int32Value;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/google/firestore/v1/Target;Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Int32Value;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/Target;->mergeExpectedCount(Lcom/google/protobuf/Int32Value;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/google/firestore/v1/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/Target;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/Target;->clearExpectedCount()V

    return-void
.end method

.method private clearDocuments()V
    .locals 2

    .line 1424
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1425
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1428
    :cond_0
    return-void
.end method

.method private clearExpectedCount()V
    .locals 1

    .line 1737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    .line 1739
    return-void
.end method

.method private clearOnce()V
    .locals 1

    .line 1652
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firestore/v1/Target;->once_:Z

    .line 1653
    return-void
.end method

.method private clearQuery()V
    .locals 2

    .line 1354
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1355
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1358
    :cond_0
    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 1558
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1559
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1562
    :cond_0
    return-void
.end method

.method private clearResumeToken()V
    .locals 2

    .line 1483
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1484
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1487
    :cond_0
    return-void
.end method

.method private clearResumeType()V
    .locals 1

    .line 1286
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1288
    return-void
.end method

.method private clearTargetId()V
    .locals 1

    .line 1614
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    .line 1615
    return-void
.end method

.method private clearTargetType()V
    .locals 1

    .line 1243
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1245
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/Target;
    .locals 1

    .line 2406
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method private mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 1406
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1407
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1408
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->newBuilder(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    move-result-object v0

    .line 1410
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 1412
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1414
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1415
    return-void
.end method

.method private mergeExpectedCount(Lcom/google/protobuf/Int32Value;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 1716
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1717
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    if-eqz v0, :cond_0

    .line 1718
    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDefaultInstance()Lcom/google/protobuf/Int32Value;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    .line 1720
    invoke-static {v0}, Lcom/google/protobuf/Int32Value;->newBuilder(Lcom/google/protobuf/Int32Value;)Lcom/google/protobuf/Int32Value$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Int32Value$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int32Value$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Int32Value$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Int32Value;

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    goto :goto_0

    .line 1722
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    .line 1725
    :goto_0
    return-void
.end method

.method private mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1336
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1337
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1338
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->newBuilder(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    move-result-object v0

    .line 1340
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 1342
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1344
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1345
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1539
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1540
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1541
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 1542
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 1543
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    goto :goto_0

    .line 1545
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1547
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1548
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/Target$Builder;
    .locals 1

    .line 1816
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/Target;)Lcom/google/firestore/v1/Target$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/Target;

    .line 1819
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/Target;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1793
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/Target;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1799
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/Target;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1757
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1764
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1804
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1811
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1781
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1788
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1744
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1751
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1769
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/Target;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1776
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/Target;",
            ">;"
        }
    .end annotation

    .line 2412
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 1394
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1395
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1396
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1397
    return-void
.end method

.method private setExpectedCount(Lcom/google/protobuf/Int32Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 1699
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1700
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    .line 1702
    return-void
.end method

.method private setOnce(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 1641
    iput-boolean p1, p0, Lcom/google/firestore/v1/Target;->once_:Z

    .line 1642
    return-void
.end method

.method private setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 1324
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1325
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    .line 1326
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    .line 1327
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1526
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1527
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1528
    const/16 v0, 0xb

    iput v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1529
    return-void
.end method

.method private setResumeToken(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1470
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1471
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x4

    iput v1, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    .line 1472
    iput-object p1, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    .line 1473
    return-void
.end method

.method private setTargetId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 1598
    iput p1, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    .line 1599
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 2339
    sget-object v0, Lcom/google/firestore/v1/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2390
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2387
    :pswitch_0
    return-object v1

    .line 2384
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 2369
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 2370
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Target;>;"
    if-nez v0, :cond_1

    .line 2371
    const-class v1, Lcom/google/firestore/v1/Target;

    monitor-enter v1

    .line 2372
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 2373
    if-nez v0, :cond_0

    .line 2374
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 2377
    sput-object v0, Lcom/google/firestore/v1/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 2379
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2381
    :cond_1
    :goto_0
    return-object v0

    .line 2366
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/Target;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    return-object v0

    .line 2347
    :pswitch_4
    const-string v1, "targetType_"

    const-string v2, "targetTypeCase_"

    const-string v3, "resumeType_"

    const-string v4, "resumeTypeCase_"

    const-class v5, Lcom/google/firestore/v1/Target$QueryTarget;

    const-class v6, Lcom/google/firestore/v1/Target$DocumentsTarget;

    const-string v7, "targetId_"

    const-string v8, "once_"

    const-class v9, Lcom/google/protobuf/Timestamp;

    const-string v10, "expectedCount_"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 2359
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0007\u0002\u0000\u0002\u000c\u0007\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004=\u0001\u0005\u0004\u0006\u0007\u000b<\u0001\u000c\t"

    .line 2362
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/Target;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/Target;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/Target;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 2344
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/Target$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/Target$Builder;-><init>(Lcom/google/firestore/v1/Target$1;)V

    return-object v0

    .line 2341
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/Target;

    invoke-direct {v0}, Lcom/google/firestore/v1/Target;-><init>()V

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

.method public getDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget;
    .locals 2

    .line 1381
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0

    .line 1384
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedCount()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 1685
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Int32Value;->getDefaultInstance()Lcom/google/protobuf/Int32Value;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOnce()Z
    .locals 1

    .line 1629
    iget-boolean v0, p0, Lcom/google/firestore/v1/Target;->once_:Z

    return v0
.end method

.method public getQuery()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 2

    .line 1311
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0

    .line 1314
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 1512
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 1515
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1455
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->resumeType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 1458
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getResumeTypeCase()Lcom/google/firestore/v1/Target$ResumeTypeCase;
    .locals 1

    .line 1281
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Target$ResumeTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$ResumeTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 1581
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetId_:I

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firestore/v1/Target$TargetTypeCase;
    .locals 1

    .line 1238
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/Target$TargetTypeCase;->forNumber(I)Lcom/google/firestore/v1/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDocuments()Z
    .locals 2

    .line 1370
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExpectedCount()Z
    .locals 1

    .line 1670
    iget-object v0, p0, Lcom/google/firestore/v1/Target;->expectedCount_:Lcom/google/protobuf/Int32Value;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasQuery()Z
    .locals 2

    .line 1300
    iget v0, p0, Lcom/google/firestore/v1/Target;->targetTypeCase_:I

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
    .locals 2

    .line 1500
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasResumeToken()Z
    .locals 2

    .line 1442
    iget v0, p0, Lcom/google/firestore/v1/Target;->resumeTypeCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
