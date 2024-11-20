.class public Lcom/google/firebase/firestore/local/IndexBackfiller;
.super Ljava/lang/Object;
.source "IndexBackfiller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;
    }
.end annotation


# static fields
.field private static final INITIAL_BACKFILL_DELAY_MS:J

.field private static final LOG_TAG:Ljava/lang/String; = "IndexBackfiller"

.field private static final MAX_DOCUMENTS_TO_PROCESS:I = 0x32

.field private static final REGULAR_BACKFILL_DELAY_MS:J


# instance fields
.field private final indexManagerOfCurrentUser:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/firebase/firestore/local/IndexManager;",
            ">;"
        }
    .end annotation
.end field

.field private final localDocumentsViewOfCurrentUser:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/firebase/firestore/local/LocalDocumentsView;",
            ">;"
        }
    .end annotation
.end field

.field private maxDocumentsToProcess:I

.field private final persistence:Lcom/google/firebase/firestore/local/Persistence;

.field private final scheduler:Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->INITIAL_BACKFILL_DELAY_MS:J

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->REGULAR_BACKFILL_DELAY_MS:J

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/Persistence;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 1
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/Persistence;
    .param p2, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/local/Persistence;",
            "Lcom/google/firebase/firestore/util/AsyncQueue;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/firebase/firestore/local/IndexManager;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/firebase/firestore/local/LocalDocumentsView;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p3, "indexManagerOfCurrentUser":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/firebase/firestore/local/IndexManager;>;"
    .local p4, "localDocumentsViewOfCurrentUser":Lcom/google/common/base/Supplier;, "Lcom/google/common/base/Supplier<Lcom/google/firebase/firestore/local/LocalDocumentsView;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x32

    iput v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->maxDocumentsToProcess:I

    .line 60
    iput-object p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    .line 61
    new-instance v0, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;

    invoke-direct {v0, p0, p2}, Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;-><init>(Lcom/google/firebase/firestore/local/IndexBackfiller;Lcom/google/firebase/firestore/util/AsyncQueue;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->scheduler:Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;

    .line 62
    iput-object p3, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->indexManagerOfCurrentUser:Lcom/google/common/base/Supplier;

    .line 63
    iput-object p4, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->localDocumentsViewOfCurrentUser:Lcom/google/common/base/Supplier;

    .line 64
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/local/Persistence;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/firebase/firestore/local/LocalStore;)V
    .locals 2
    .param p1, "persistence"    # Lcom/google/firebase/firestore/local/Persistence;
    .param p2, "asyncQueue"    # Lcom/google/firebase/firestore/util/AsyncQueue;
    .param p3, "localStore"    # Lcom/google/firebase/firestore/local/LocalStore;

    .line 48
    nop

    .line 51
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/firebase/firestore/local/IndexBackfiller$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Lcom/google/firebase/firestore/local/IndexBackfiller$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/local/LocalStore;)V

    .line 52
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/firebase/firestore/local/IndexBackfiller$$ExternalSyntheticLambda2;

    invoke-direct {v1, p3}, Lcom/google/firebase/firestore/local/IndexBackfiller$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/local/LocalStore;)V

    .line 48
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/firebase/firestore/local/IndexBackfiller;-><init>(Lcom/google/firebase/firestore/local/Persistence;Lcom/google/firebase/firestore/util/AsyncQueue;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    .line 53
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 31
    sget-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->INITIAL_BACKFILL_DELAY_MS:J

    return-wide v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 31
    sget-wide v0, Lcom/google/firebase/firestore/local/IndexBackfiller;->REGULAR_BACKFILL_DELAY_MS:J

    return-wide v0
.end method

.method private getNewOffset(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Lcom/google/firebase/firestore/local/LocalDocumentsResult;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .locals 5
    .param p1, "existingOffset"    # Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    .param p2, "lookupResult"    # Lcom/google/firebase/firestore/local/LocalDocumentsResult;

    .line 149
    move-object v0, p1

    .line 150
    .local v0, "maxOffset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 151
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/Document;

    invoke-static {v3}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->fromDocument(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v3

    .line 152
    .local v3, "newOffset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    invoke-virtual {v3, v0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->compareTo(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)I

    move-result v4

    if-lez v4, :cond_0

    .line 153
    move-object v0, v3

    .line 155
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .end local v3    # "newOffset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    :cond_0
    goto :goto_0

    .line 156
    :cond_1
    nop

    .line 157
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    .line 159
    invoke-virtual {p2}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getBatchId()I

    move-result v3

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->getLargestBatchId()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 156
    invoke-static {v1, v2, v3}, Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;->create(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/DocumentKey;I)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v1

    return-object v1
.end method

.method private writeEntriesForCollectionGroup(Ljava/lang/String;I)I
    .locals 8
    .param p1, "collectionGroup"    # Ljava/lang/String;
    .param p2, "documentsRemainingUnderCap"    # I

    .line 130
    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->indexManagerOfCurrentUser:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/IndexManager;

    .line 131
    .local v0, "indexManager":Lcom/google/firebase/firestore/local/IndexManager;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->localDocumentsViewOfCurrentUser:Lcom/google/common/base/Supplier;

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/LocalDocumentsView;

    .line 133
    .local v1, "localDocumentsView":Lcom/google/firebase/firestore/local/LocalDocumentsView;
    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/local/IndexManager;->getMinOffset(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v2

    .line 135
    .local v2, "existingOffset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    nop

    .line 136
    invoke-virtual {v1, p1, v2, p2}, Lcom/google/firebase/firestore/local/LocalDocumentsView;->getNextDocuments(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;I)Lcom/google/firebase/firestore/local/LocalDocumentsResult;

    move-result-object v3

    .line 138
    .local v3, "nextBatch":Lcom/google/firebase/firestore/local/LocalDocumentsResult;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/firebase/firestore/local/IndexManager;->updateIndexEntries(Lcom/google/firebase/database/collection/ImmutableSortedMap;)V

    .line 140
    invoke-direct {p0, v2, v3}, Lcom/google/firebase/firestore/local/IndexBackfiller;->getNewOffset(Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;Lcom/google/firebase/firestore/local/LocalDocumentsResult;)Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;

    move-result-object v4

    .line 141
    .local v4, "newOffset":Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;
    const-string v5, "Updating offset: %s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "IndexBackfiller"

    invoke-static {v7, v5, v6}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-interface {v0, p1, v4}, Lcom/google/firebase/firestore/local/IndexManager;->updateCollectionGroup(Ljava/lang/String;Lcom/google/firebase/firestore/model/FieldIndex$IndexOffset;)V

    .line 144
    invoke-virtual {v3}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->size()I

    move-result v5

    return v5
.end method

.method private writeIndexEntries()I
    .locals 7

    .line 110
    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->indexManagerOfCurrentUser:Lcom/google/common/base/Supplier;

    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/local/IndexManager;

    .line 111
    .local v0, "indexManager":Lcom/google/firebase/firestore/local/IndexManager;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 112
    .local v1, "processedCollectionGroups":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget v2, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->maxDocumentsToProcess:I

    .line 113
    .local v2, "documentsRemaining":I
    :goto_0
    if-lez v2, :cond_1

    .line 114
    invoke-interface {v0}, Lcom/google/firebase/firestore/local/IndexManager;->getNextCollectionGroupToUpdate()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "collectionGroup":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    goto :goto_1

    .line 118
    :cond_0
    const-string v4, "Processing collection: %s"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "IndexBackfiller"

    invoke-static {v6, v4, v5}, Lcom/google/firebase/firestore/util/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-direct {p0, v3, v2}, Lcom/google/firebase/firestore/local/IndexBackfiller;->writeEntriesForCollectionGroup(Ljava/lang/String;I)I

    move-result v4

    sub-int/2addr v2, v4

    .line 120
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v3    # "collectionGroup":Ljava/lang/String;
    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    iget v3, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->maxDocumentsToProcess:I

    sub-int/2addr v3, v2

    return v3
.end method


# virtual methods
.method public backfill()I
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->persistence:Lcom/google/firebase/firestore/local/Persistence;

    new-instance v1, Lcom/google/firebase/firestore/local/IndexBackfiller$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/local/IndexBackfiller$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/local/IndexBackfiller;)V

    const-string v2, "Backfill Indexes"

    invoke-virtual {v0, v2, v1}, Lcom/google/firebase/firestore/local/Persistence;->runTransaction(Ljava/lang/String;Lcom/google/firebase/firestore/util/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getScheduler()Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->scheduler:Lcom/google/firebase/firestore/local/IndexBackfiller$Scheduler;

    return-object v0
.end method

.method synthetic lambda$backfill$0$com-google-firebase-firestore-local-IndexBackfiller()Ljava/lang/Integer;
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/google/firebase/firestore/local/IndexBackfiller;->writeIndexEntries()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method setMaxDocumentsToProcess(I)V
    .locals 0
    .param p1, "newMax"    # I

    .line 164
    iput p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller;->maxDocumentsToProcess:I

    .line 165
    return-void
.end method
