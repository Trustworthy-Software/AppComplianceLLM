.class public final Lcom/google/firebase/firestore/proto/Target;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Target.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/TargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/proto/Target$Builder;,
        Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firebase/firestore/proto/Target;",
        "Lcom/google/firebase/firestore/proto/Target$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/TargetOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x6

.field public static final LAST_LIMBO_FREE_SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x7

.field public static final LAST_LISTEN_SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/Target;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x5

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x3

.field public static final SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x2

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

.field private lastListenSequenceNumber_:J

.field private resumeToken_:Lcom/google/protobuf/ByteString;

.field private snapshotVersion_:Lcom/google/protobuf/Timestamp;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1197
    new-instance v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/Target;-><init>()V

    .line 1200
    .local v0, "defaultInstance":Lcom/google/firebase/firestore/proto/Target;
    sput-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    .line 1201
    const-class v1, Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1203
    .end local v0    # "defaultInstance":Lcom/google/firebase/firestore/proto/Target;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 22
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    .line 23
    return-void
.end method

.method static synthetic access$000()Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 16
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearTargetType()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearLastListenSequenceNumber()V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearQuery()V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearDocuments()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearLastLimboFreeSnapshotVersion()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/proto/Target;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # I

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setTargetId(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearTargetId()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->mergeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearSnapshotVersion()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firebase/firestore/proto/Target;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 16
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/proto/Target;->setResumeToken(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firebase/firestore/proto/Target;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/Target;->clearResumeToken()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firebase/firestore/proto/Target;J)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/proto/Target;
    .param p1, "x1"    # J

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/proto/Target;->setLastListenSequenceNumber(J)V

    return-void
.end method

.method private clearDocuments()V
    .locals 2

    .line 455
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 456
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 459
    :cond_0
    return-void
.end method

.method private clearLastLimboFreeSnapshotVersion()V
    .locals 1

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 530
    return-void
.end method

.method private clearLastListenSequenceNumber()V
    .locals 2

    .line 318
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    .line 319
    return-void
.end method

.method private clearQuery()V
    .locals 2

    .line 385
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 386
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 389
    :cond_0
    return-void
.end method

.method private clearResumeToken()V
    .locals 1

    .line 253
    invoke-static {}, Lcom/google/firebase/firestore/proto/Target;->getDefaultInstance()Lcom/google/firebase/firestore/proto/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getResumeToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    .line 254
    return-void
.end method

.method private clearSnapshotVersion()V
    .locals 1

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 182
    return-void
.end method

.method private clearTargetId()V
    .locals 1

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    .line 106
    return-void
.end method

.method private clearTargetType()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firebase/firestore/proto/Target;
    .locals 1

    .line 1206
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method private mergeDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 437
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 438
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 439
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 440
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->newBuilder(Lcom/google/firestore/v1/Target$DocumentsTarget;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    move-result-object v0

    .line 441
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 443
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 445
    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 446
    return-void
.end method

.method private mergeLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 514
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 516
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 519
    :goto_0
    return-void
.end method

.method private mergeQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 3
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 367
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 368
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 369
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 370
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$QueryTarget;->newBuilder(Lcom/google/firestore/v1/Target$QueryTarget;)Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    move-result-object v0

    .line 371
    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$QueryTarget$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    goto :goto_0

    .line 373
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 375
    :goto_0
    iput v1, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 376
    return-void
.end method

.method private mergeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 165
    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp;

    iput-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    goto :goto_0

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 170
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1

    .line 607
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firebase/firestore/proto/Target;)Lcom/google/firebase/firestore/proto/Target$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firebase/firestore/proto/Target;

    .line 610
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0, p0}, Lcom/google/firebase/firestore/proto/Target;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 584
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/firebase/firestore/proto/Target;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 590
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/firebase/firestore/proto/Target;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 548
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 555
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 572
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 579
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 535
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 542
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 560
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firebase/firestore/proto/Target;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 567
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/proto/Target;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firebase/firestore/proto/Target;",
            ">;"
        }
    .end annotation

    .line 1212
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/Target;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDocuments(Lcom/google/firestore/v1/Target$DocumentsTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 426
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 427
    const/4 v0, 0x6

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 428
    return-void
.end method

.method private setLastLimboFreeSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 496
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 497
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 499
    return-void
.end method

.method private setLastListenSequenceNumber(J)V
    .locals 0
    .param p1, "value"    # J

    .line 298
    iput-wide p1, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    .line 299
    return-void
.end method

.method private setQuery(Lcom/google/firestore/v1/Target$QueryTarget;)V
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target$QueryTarget;

    .line 355
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 356
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    .line 357
    const/4 v0, 0x5

    iput v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    .line 358
    return-void
.end method

.method private setResumeToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 229
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 231
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    .line 232
    return-void
.end method

.method private setSnapshotVersion(Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 146
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    iput-object p1, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    .line 149
    return-void
.end method

.method private setTargetId(I)V
    .locals 0
    .param p1, "value"    # I

    .line 93
    iput p1, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    .line 94
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1140
    sget-object v0, Lcom/google/firebase/firestore/proto/Target$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1190
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1187
    :pswitch_0
    return-object v1

    .line 1184
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1169
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 1170
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/Target;>;"
    if-nez v0, :cond_1

    .line 1171
    const-class v1, Lcom/google/firebase/firestore/proto/Target;

    monitor-enter v1

    .line 1172
    :try_start_0
    sget-object v2, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1173
    if-nez v0, :cond_0

    .line 1174
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1177
    sput-object v0, Lcom/google/firebase/firestore/proto/Target;->PARSER:Lcom/google/protobuf/Parser;

    .line 1179
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1181
    :cond_1
    :goto_0
    return-object v0

    .line 1166
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firebase/firestore/proto/Target;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    return-object v0

    .line 1148
    :pswitch_4
    const-string v1, "targetType_"

    const-string v2, "targetTypeCase_"

    const-string v3, "targetId_"

    const-string v4, "snapshotVersion_"

    const-string v5, "resumeToken_"

    const-string v6, "lastListenSequenceNumber_"

    const-class v7, Lcom/google/firestore/v1/Target$QueryTarget;

    const-class v8, Lcom/google/firestore/v1/Target$DocumentsTarget;

    const-string v9, "lastLimboFreeSnapshotVersion_"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    .line 1159
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0004\u0002\t\u0003\n\u0004\u0002\u0005<\u0000\u0006<\u0000\u0007\t"

    .line 1162
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firebase/firestore/proto/Target;->DEFAULT_INSTANCE:Lcom/google/firebase/firestore/proto/Target;

    invoke-static {v2, v1, v0}, Lcom/google/firebase/firestore/proto/Target;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1145
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firebase/firestore/proto/Target$Builder;

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/proto/Target$Builder;-><init>(Lcom/google/firebase/firestore/proto/Target$1;)V

    return-object v0

    .line 1142
    :pswitch_6
    new-instance v0, Lcom/google/firebase/firestore/proto/Target;

    invoke-direct {v0}, Lcom/google/firebase/firestore/proto/Target;-><init>()V

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

    .line 412
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 413
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    return-object v0

    .line 415
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v0

    return-object v0
.end method

.method public getLastLimboFreeSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLastListenSequenceNumber()J
    .locals 2

    .line 277
    iget-wide v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastListenSequenceNumber_:J

    return-wide v0
.end method

.method public getQuery()Lcom/google/firestore/v1/Target$QueryTarget;
    .locals 2

    .line 342
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetType_:Ljava/lang/Object;

    check-cast v0, Lcom/google/firestore/v1/Target$QueryTarget;

    return-object v0

    .line 345
    :cond_0
    invoke-static {}, Lcom/google/firestore/v1/Target$QueryTarget;->getDefaultInstance()Lcom/google/firestore/v1/Target$QueryTarget;

    move-result-object v0

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->resumeToken_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSnapshotVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetId_:I

    return v0
.end method

.method public getTargetTypeCase()Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->forNumber(I)Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasDocuments()Z
    .locals 2

    .line 401
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLastLimboFreeSnapshotVersion()Z
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->lastLimboFreeSnapshotVersion_:Lcom/google/protobuf/Timestamp;

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

    .line 331
    iget v0, p0, Lcom/google/firebase/firestore/proto/Target;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSnapshotVersion()Z
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/Target;->snapshotVersion_:Lcom/google/protobuf/Timestamp;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
