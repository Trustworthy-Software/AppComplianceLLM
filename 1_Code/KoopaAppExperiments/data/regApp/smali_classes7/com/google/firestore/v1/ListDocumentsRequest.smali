.class public final Lcom/google/firestore/v1/ListDocumentsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ListDocumentsRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/ListDocumentsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/ListDocumentsRequest$Builder;,
        Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/google/firestore/v1/ListDocumentsRequest;",
        "Lcom/google/firestore/v1/ListDocumentsRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListDocumentsRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLLECTION_ID_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

.field public static final MASK_FIELD_NUMBER:I = 0x7

.field public static final ORDER_BY_FIELD_NUMBER:I = 0x6

.field public static final PAGE_SIZE_FIELD_NUMBER:I = 0x3

.field public static final PAGE_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListDocumentsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0xa

.field public static final SHOW_MISSING_FIELD_NUMBER:I = 0xc

.field public static final TRANSACTION_FIELD_NUMBER:I = 0x8


# instance fields
.field private collectionId_:Ljava/lang/String;

.field private consistencySelectorCase_:I

.field private consistencySelector_:Ljava/lang/Object;

.field private mask_:Lcom/google/firestore/v1/DocumentMask;

.field private orderBy_:Ljava/lang/String;

.field private pageSize_:I

.field private pageToken_:Ljava/lang/String;

.field private parent_:Ljava/lang/String;

.field private showMissing_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1452
    new-instance v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;-><init>()V

    .line 1455
    .local v0, "defaultInstance":Lcom/google/firestore/v1/ListDocumentsRequest;
    sput-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 1456
    const-class v1, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1458
    .end local v0    # "defaultInstance":Lcom/google/firestore/v1/ListDocumentsRequest;
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    .line 23
    return-void
.end method

.method static synthetic access$000()Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1

    .line 13
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearConsistencySelector()V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setPageToken(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearPageToken()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setPageTokenBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setOrderBy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearOrderBy()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setOrderByBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/firestore/v1/DocumentMask;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->mergeMask(Lcom/google/firestore/v1/DocumentMask;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearMask()V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setTransaction(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearTransaction()V

    return-void
.end method

.method static synthetic access$2100(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/Timestamp;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->mergeReadTime(Lcom/google/protobuf/Timestamp;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearReadTime()V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/firestore/v1/ListDocumentsRequest;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Z

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setShowMissing(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearShowMissing()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearParent()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setParentBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setCollectionId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearCollectionId()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # Lcom/google/protobuf/ByteString;

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setCollectionIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/firestore/v1/ListDocumentsRequest;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->setPageSize(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/firestore/v1/ListDocumentsRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 13
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->clearPageSize()V

    return-void
.end method

.method private clearCollectionId()V
    .locals 1

    .line 213
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    .line 214
    return-void
.end method

.method private clearConsistencySelector()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 65
    return-void
.end method

.method private clearMask()V
    .locals 1

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 477
    return-void
.end method

.method private clearOrderBy()V
    .locals 1

    .line 386
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getOrderBy()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    .line 387
    return-void
.end method

.method private clearPageSize()V
    .locals 1

    .line 266
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageSize_:I

    .line 267
    return-void
.end method

.method private clearPageToken()V
    .locals 1

    .line 319
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    .line 320
    return-void
.end method

.method private clearParent()V
    .locals 1

    .line 137
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private clearReadTime()V
    .locals 2

    .line 603
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 604
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 605
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 607
    :cond_0
    return-void
.end method

.method private clearShowMissing()V
    .locals 1

    .line 659
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->showMissing_:Z

    .line 660
    return-void
.end method

.method private clearTransaction()V
    .locals 2

    .line 528
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 529
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 532
    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1

    .line 1461
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method private mergeMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 2
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 460
    invoke-static {v0}, Lcom/google/firestore/v1/DocumentMask;->newBuilder(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/DocumentMask$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask$Builder;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentMask$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/DocumentMask;

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    goto :goto_0

    .line 462
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 465
    :goto_0
    return-void
.end method

.method private mergeReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 3
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 584
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 585
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 586
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 587
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    invoke-static {v0}, Lcom/google/protobuf/Timestamp;->newBuilder(Lcom/google/protobuf/Timestamp;)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v0

    .line 588
    invoke-virtual {v0, p1}, Lcom/google/protobuf/Timestamp$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Timestamp$Builder;

    invoke-virtual {v0}, Lcom/google/protobuf/Timestamp$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    goto :goto_0

    .line 590
    :cond_0
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 592
    :goto_0
    iput v1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 593
    return-void
.end method

.method public static newBuilder()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 737
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/google/firestore/v1/ListDocumentsRequest;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 740
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0, p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/firestore/v1/ListDocumentsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 678
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 685
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 725
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 732
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 702
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 709
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 665
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 672
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 690
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/firestore/v1/ListDocumentsRequest;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 697
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/google/firestore/v1/ListDocumentsRequest;",
            ">;"
        }
    .end annotation

    .line 1467
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCollectionId(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 201
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    .line 202
    return-void
.end method

.method private setCollectionIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 226
    invoke-static {p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 227
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    .line 229
    return-void
.end method

.method private setMask(Lcom/google/firestore/v1/DocumentMask;)V
    .locals 0
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 441
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 442
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    .line 444
    return-void
.end method

.method private setOrderBy(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 373
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 375
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    .line 376
    return-void
.end method

.method private setOrderByBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 398
    invoke-static {p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 399
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    .line 401
    return-void
.end method

.method private setPageSize(I)V
    .locals 0
    .param p1, "value"    # I

    .line 255
    iput p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageSize_:I

    .line 256
    return-void
.end method

.method private setPageToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 308
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    .line 309
    return-void
.end method

.method private setPageTokenBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 331
    invoke-static {p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 332
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    .line 334
    return-void
.end method

.method private setParent(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 121
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    .line 122
    return-void
.end method

.method private setParentBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 154
    invoke-static {p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 155
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    .line 157
    return-void
.end method

.method private setReadTime(Lcom/google/protobuf/Timestamp;)V
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 572
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 573
    const/16 v0, 0xa

    iput v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 574
    return-void
.end method

.method private setShowMissing(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 643
    iput-boolean p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->showMissing_:Z

    .line 644
    return-void
.end method

.method private setTransaction(Lcom/google/protobuf/ByteString;)V
    .locals 2
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 516
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 517
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v1, 0x8

    iput v1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    .line 518
    iput-object p1, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    .line 519
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "method"    # Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1394
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 1445
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1442
    :pswitch_0
    return-object v1

    .line 1439
    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1424
    :pswitch_2
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1425
    .local v0, "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListDocumentsRequest;>;"
    if-nez v0, :cond_1

    .line 1426
    const-class v1, Lcom/google/firestore/v1/ListDocumentsRequest;

    monitor-enter v1

    .line 1427
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/ListDocumentsRequest;->PARSER:Lcom/google/protobuf/Parser;

    move-object v0, v2

    .line 1428
    if-nez v0, :cond_0

    .line 1429
    new-instance v2, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-direct {v2, v3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    move-object v0, v2

    .line 1432
    sput-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 1434
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1436
    :cond_1
    :goto_0
    return-object v0

    .line 1421
    .end local v0    # "parser":Lcom/google/protobuf/Parser;, "Lcom/google/protobuf/Parser<Lcom/google/firestore/v1/ListDocumentsRequest;>;"
    :pswitch_3
    sget-object v0, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    return-object v0

    .line 1402
    :pswitch_4
    const-string v1, "consistencySelector_"

    const-string v2, "consistencySelectorCase_"

    const-string v3, "parent_"

    const-string v4, "collectionId_"

    const-string v5, "pageSize_"

    const-string v6, "pageToken_"

    const-string v7, "orderBy_"

    const-string v8, "mask_"

    const-class v9, Lcom/google/protobuf/Timestamp;

    const-string v10, "showMissing_"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 1414
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0000\t\u0001\u0000\u0001\u000c\t\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0004\u0004\u0208\u0006\u0208\u0007\t\u0008=\u0000\n<\u0000\u000c\u0007"

    .line 1417
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Lcom/google/firestore/v1/ListDocumentsRequest;->DEFAULT_INSTANCE:Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v2, v1, v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1399
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_5
    new-instance v0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;

    invoke-direct {v0, v1}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;-><init>(Lcom/google/firestore/v1/ListDocumentsRequest$1;)V

    return-object v0

    .line 1396
    :pswitch_6
    new-instance v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-direct {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;-><init>()V

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

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getCollectionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->collectionId_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
    .locals 1

    .line 58
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;->forNumber(I)Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/firestore/v1/DocumentMask;->getDefaultInstance()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderByBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->orderBy_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageSize_:I

    return v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->pageToken_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->parent_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 2

    .line 557
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 558
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/Timestamp;

    return-object v0

    .line 560
    :cond_0
    invoke-static {}, Lcom/google/protobuf/Timestamp;->getDefaultInstance()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getShowMissing()Z
    .locals 1

    .line 626
    iget-boolean v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->showMissing_:Z

    return v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 502
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelector_:Ljava/lang/Object;

    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0

    .line 505
    :cond_0
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasMask()Z
    .locals 1

    .line 416
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->mask_:Lcom/google/firestore/v1/DocumentMask;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasReadTime()Z
    .locals 2

    .line 545
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0xa

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

    .line 490
    iget v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest;->consistencySelectorCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
