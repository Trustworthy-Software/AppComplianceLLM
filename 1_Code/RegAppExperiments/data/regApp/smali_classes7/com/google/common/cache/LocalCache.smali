.class Lcom/google/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/LocalCache$LocalLoadingCache;,
        Lcom/google/common/cache/LocalCache$LocalManualCache;,
        Lcom/google/common/cache/LocalCache$LoadingSerializationProxy;,
        Lcom/google/common/cache/LocalCache$ManualSerializationProxy;,
        Lcom/google/common/cache/LocalCache$EntrySet;,
        Lcom/google/common/cache/LocalCache$Values;,
        Lcom/google/common/cache/LocalCache$KeySet;,
        Lcom/google/common/cache/LocalCache$AbstractCacheSet;,
        Lcom/google/common/cache/LocalCache$EntryIterator;,
        Lcom/google/common/cache/LocalCache$WriteThroughEntry;,
        Lcom/google/common/cache/LocalCache$ValueIterator;,
        Lcom/google/common/cache/LocalCache$KeyIterator;,
        Lcom/google/common/cache/LocalCache$HashIterator;,
        Lcom/google/common/cache/LocalCache$AccessQueue;,
        Lcom/google/common/cache/LocalCache$WriteQueue;,
        Lcom/google/common/cache/LocalCache$LoadingValueReference;,
        Lcom/google/common/cache/LocalCache$Segment;,
        Lcom/google/common/cache/LocalCache$WeightedStrongValueReference;,
        Lcom/google/common/cache/LocalCache$WeightedSoftValueReference;,
        Lcom/google/common/cache/LocalCache$WeightedWeakValueReference;,
        Lcom/google/common/cache/LocalCache$StrongValueReference;,
        Lcom/google/common/cache/LocalCache$SoftValueReference;,
        Lcom/google/common/cache/LocalCache$WeakValueReference;,
        Lcom/google/common/cache/LocalCache$WeakAccessWriteEntry;,
        Lcom/google/common/cache/LocalCache$WeakWriteEntry;,
        Lcom/google/common/cache/LocalCache$WeakAccessEntry;,
        Lcom/google/common/cache/LocalCache$WeakEntry;,
        Lcom/google/common/cache/LocalCache$StrongAccessWriteEntry;,
        Lcom/google/common/cache/LocalCache$StrongWriteEntry;,
        Lcom/google/common/cache/LocalCache$StrongAccessEntry;,
        Lcom/google/common/cache/LocalCache$StrongEntry;,
        Lcom/google/common/cache/LocalCache$AbstractReferenceEntry;,
        Lcom/google/common/cache/LocalCache$NullEntry;,
        Lcom/google/common/cache/LocalCache$ValueReference;,
        Lcom/google/common/cache/LocalCache$EntryFactory;,
        Lcom/google/common/cache/LocalCache$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final CONTAINS_VALUE_RETRIES:I = 0x3

.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "*>;"
        }
    .end annotation
.end field

.field static final DRAIN_MAX:I = 0x10

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET:Lcom/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LocalCache$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field final concurrencyLevel:I

.field final defaultLoader:Lcom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

.field final keyEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final keyStrength:Lcom/google/common/cache/LocalCache$Strength;

.field final maxWeight:J

.field final refreshNanos:J

.field final removalListener:Lcom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/common/cache/RemovalNotification<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lcom/google/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lcom/google/common/base/Ticker;

.field final valueEquivalence:Lcom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lcom/google/common/cache/LocalCache$Strength;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final weigher:Lcom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    const-class v0, Lcom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    .line 681
    new-instance v0, Lcom/google/common/cache/LocalCache$1;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$1;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->UNSET:Lcom/google/common/cache/LocalCache$ValueReference;

    .line 898
    new-instance v0, Lcom/google/common/cache/LocalCache$2;

    invoke-direct {v0}, Lcom/google/common/cache/LocalCache$2;-><init>()V

    sput-object v0, Lcom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lcom/google/common/cache/CacheBuilder;Lcom/google/common/cache/CacheLoader;)V
    .locals 17
    .param p2    # Lcom/google/common/cache/CacheLoader;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/CacheBuilder<",
            "-TK;-TV;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 241
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "builder":Lcom/google/common/cache/CacheBuilder;, "Lcom/google/common/cache/CacheBuilder<-TK;-TV;>;"
    .local p2, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    .line 242
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getConcurrencyLevel()I

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/google/common/cache/LocalCache;->concurrencyLevel:I

    .line 244
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getKeyStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/cache/LocalCache;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 245
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getValueStrength()Lcom/google/common/cache/LocalCache$Strength;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    .line 247
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getKeyEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    .line 248
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getValueEquivalence()Lcom/google/common/base/Equivalence;

    move-result-object v2

    iput-object v2, v0, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getMaximumWeight()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getWeigher()Lcom/google/common/cache/Weigher;

    move-result-object v4

    iput-object v4, v0, Lcom/google/common/cache/LocalCache;->weigher:Lcom/google/common/cache/Weigher;

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getExpireAfterAccessNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getExpireAfterWriteNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    .line 254
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getRefreshNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    .line 256
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getRemovalListener()Lcom/google/common/cache/RemovalListener;

    move-result-object v4

    iput-object v4, v0, Lcom/google/common/cache/LocalCache;->removalListener:Lcom/google/common/cache/RemovalListener;

    .line 257
    nop

    .line 258
    sget-object v5, Lcom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lcom/google/common/cache/CacheBuilder$NullListener;

    if-ne v4, v5, :cond_0

    .line 259
    invoke-static {}, Lcom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v4

    goto :goto_0

    .line 260
    :cond_0
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v4, v0, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->recordsTime()Z

    move-result v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lcom/google/common/cache/CacheBuilder;->getTicker(Z)Lcom/google/common/base/Ticker;

    move-result-object v4

    iput-object v4, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    .line 263
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->usesAccessEntries()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->usesWriteEntries()Z

    move-result v6

    invoke-static {v1, v4, v6}, Lcom/google/common/cache/LocalCache$EntryFactory;->getFactory(Lcom/google/common/cache/LocalCache$Strength;ZZ)Lcom/google/common/cache/LocalCache$EntryFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/google/common/cache/LocalCache;->entryFactory:Lcom/google/common/cache/LocalCache$EntryFactory;

    .line 264
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v1, v0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    .line 265
    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    .line 267
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getInitialCapacity()I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 268
    .local v4, "initialCapacity":I
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->customWeigher()Z

    move-result v6

    if-nez v6, :cond_1

    .line 269
    int-to-long v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v4, v2

    .line 277
    :cond_1
    const/4 v2, 0x0

    .line 278
    .local v2, "segmentShift":I
    const/4 v3, 0x1

    .line 279
    .local v3, "segmentCount":I
    :goto_1
    iget v6, v0, Lcom/google/common/cache/LocalCache;->concurrencyLevel:I

    if-ge v3, v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v6

    if-eqz v6, :cond_2

    mul-int/lit8 v6, v3, 0x14

    int-to-long v6, v6

    iget-wide v8, v0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_3

    .line 280
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 281
    shl-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 283
    :cond_3
    rsub-int/lit8 v6, v2, 0x20

    iput v6, v0, Lcom/google/common/cache/LocalCache;->segmentShift:I

    .line 284
    add-int/lit8 v6, v3, -0x1

    iput v6, v0, Lcom/google/common/cache/LocalCache;->segmentMask:I

    .line 286
    invoke-virtual {v0, v3}, Lcom/google/common/cache/LocalCache;->newSegmentArray(I)[Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v6

    iput-object v6, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .line 288
    div-int v6, v4, v3

    .line 289
    .local v6, "segmentCapacity":I
    mul-int v7, v6, v3

    if-ge v7, v4, :cond_4

    .line 290
    add-int/lit8 v6, v6, 0x1

    .line 293
    :cond_4
    const/4 v7, 0x1

    .line 294
    .local v7, "segmentSize":I
    :goto_2
    if-ge v7, v6, :cond_5

    .line 295
    shl-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 298
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 300
    iget-wide v8, v0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    int-to-long v10, v3

    div-long v10, v8, v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 301
    .local v10, "maxSegmentWeight":J
    int-to-long v14, v3

    rem-long/2addr v8, v14

    .line 302
    .local v8, "remainder":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    iget-object v15, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v12, v15

    if-ge v14, v12, :cond_7

    .line 303
    int-to-long v12, v14

    cmp-long v12, v12, v8

    if-nez v12, :cond_6

    .line 304
    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    goto :goto_4

    .line 303
    :cond_6
    const-wide/16 v12, 0x1

    .line 306
    :goto_4
    nop

    .line 307
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lcom/google/common/base/Supplier;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v7, v10, v11, v12}, Lcom/google/common/cache/LocalCache;->createSegment(IJLcom/google/common/cache/AbstractCache$StatsCounter;)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v12

    aput-object v12, v15, v14

    .line 302
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v12, 0x1

    goto :goto_3

    .line 309
    .end local v8    # "remainder":J
    .end local v10    # "maxSegmentWeight":J
    .end local v14    # "i":I
    :cond_7
    goto :goto_6

    .line 310
    :cond_8
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    iget-object v9, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v10, v9

    if-ge v8, v10, :cond_9

    .line 311
    nop

    .line 312
    invoke-virtual/range {p1 .. p1}, Lcom/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lcom/google/common/base/Supplier;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/common/cache/AbstractCache$StatsCounter;

    const-wide/16 v11, -0x1

    invoke-virtual {v0, v7, v11, v12, v10}, Lcom/google/common/cache/LocalCache;->createSegment(IJLcom/google/common/cache/AbstractCache$StatsCounter;)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v10

    aput-object v10, v9, v8

    .line 310
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 315
    .end local v8    # "i":I
    :cond_9
    :goto_6
    return-void
.end method

.method static synthetic access$200(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .line 104
    invoke-static {p0}, Lcom/google/common/cache/LocalCache;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static connectAccessOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1781
    .local p0, "previous":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/google/common/cache/ReferenceEntry;->setNextInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 1782
    invoke-interface {p1, p0}, Lcom/google/common/cache/ReferenceEntry;->setPreviousInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 1783
    return-void
.end method

.method static connectWriteOrder(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1794
    .local p0, "previous":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lcom/google/common/cache/ReferenceEntry;->setNextInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 1795
    invoke-interface {p1, p0}, Lcom/google/common/cache/ReferenceEntry;->setPreviousInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 1796
    return-void
.end method

.method static discardingQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 929
    sget-object v0, Lcom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static nullEntry()Lcom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 895
    sget-object v0, Lcom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lcom/google/common/cache/LocalCache$NullEntry;

    return-object v0
.end method

.method static nullifyAccessOrder(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1787
    .local p0, "nulled":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1788
    .local v0, "nullEntry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lcom/google/common/cache/ReferenceEntry;->setNextInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 1789
    invoke-interface {p0, v0}, Lcom/google/common/cache/ReferenceEntry;->setPreviousInAccessQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 1790
    return-void
.end method

.method static nullifyWriteOrder(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1800
    .local p0, "nulled":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lcom/google/common/cache/LocalCache;->nullEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1801
    .local v0, "nullEntry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lcom/google/common/cache/ReferenceEntry;->setNextInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 1802
    invoke-interface {p0, v0}, Lcom/google/common/cache/ReferenceEntry;->setPreviousInWriteQueue(Lcom/google/common/cache/ReferenceEntry;)V

    .line 1803
    return-void
.end method

.method static rehash(I)I
    .locals 2
    .param p0, "h"    # I

    .line 1657
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 1658
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 1659
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 1660
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 1661
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 1662
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 4401
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4402
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 4403
    return-object v0
.end method

.method static unset()Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 728
    sget-object v0, Lcom/google/common/cache/LocalCache;->UNSET:Lcom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .line 3792
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3793
    .local v3, "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<**>;"
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3792
    .end local v3    # "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<**>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3795
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .line 4142
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4143
    .local v3, "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v3}, Lcom/google/common/cache/LocalCache$Segment;->clear()V

    .line 4142
    .end local v3    # "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4145
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 4033
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4034
    const/4 v0, 0x0

    return v0

    .line 4036
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4037
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 20
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 4043
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4044
    return v2

    .line 4052
    :cond_0
    iget-object v3, v0, Lcom/google/common/cache/LocalCache;->ticker:Lcom/google/common/base/Ticker;

    invoke-virtual {v3}, Lcom/google/common/base/Ticker;->read()J

    move-result-wide v3

    .line 4053
    .local v3, "now":J
    iget-object v5, v0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .line 4054
    .local v5, "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v6, -0x1

    .line 4055
    .local v6, "last":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_7

    .line 4056
    const-wide/16 v9, 0x0

    .line 4057
    .local v9, "sum":J
    array-length v11, v5

    move v12, v2

    :goto_1
    if-ge v12, v11, :cond_5

    aget-object v13, v5, v12

    .line 4059
    .local v13, "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget v14, v13, Lcom/google/common/cache/LocalCache$Segment;->count:I

    .line 4061
    .local v14, "unused":I
    iget-object v15, v13, Lcom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4062
    .local v15, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "j":I
    :goto_2
    move-object/from16 v16, v5

    .end local v5    # "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local v16, "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 4063
    invoke-virtual {v15, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/common/cache/ReferenceEntry;

    .local v5, "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_3
    if-eqz v5, :cond_3

    .line 4064
    move/from16 v17, v11

    invoke-virtual {v13, v5, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v11

    .line 4065
    .local v11, "v":Ljava/lang/Object;, "TV;"
    if-eqz v11, :cond_1

    move-wide/from16 v18, v3

    .end local v3    # "now":J
    .local v18, "now":J
    iget-object v3, v0, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v3, v1, v11}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4066
    const/4 v3, 0x1

    return v3

    .line 4065
    .end local v18    # "now":J
    .restart local v3    # "now":J
    :cond_1
    move-wide/from16 v18, v3

    .line 4063
    .end local v3    # "now":J
    .end local v11    # "v":Ljava/lang/Object;, "TV;"
    .restart local v18    # "now":J
    :cond_2
    invoke-interface {v5}, Lcom/google/common/cache/ReferenceEntry;->getNext()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v5

    move/from16 v11, v17

    move-wide/from16 v3, v18

    goto :goto_3

    .end local v18    # "now":J
    .restart local v3    # "now":J
    :cond_3
    move-wide/from16 v18, v3

    move/from16 v17, v11

    .line 4062
    .end local v3    # "now":J
    .end local v5    # "e":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v18    # "now":J
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v16

    goto :goto_2

    .end local v18    # "now":J
    .restart local v3    # "now":J
    :cond_4
    move-wide/from16 v18, v3

    move/from16 v17, v11

    .line 4070
    .end local v2    # "j":I
    .end local v3    # "now":J
    .restart local v18    # "now":J
    iget v2, v13, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v2, v2

    add-long/2addr v9, v2

    .line 4057
    .end local v13    # "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v14    # "unused":I
    .end local v15    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lcom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v16

    move-wide/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_1

    .line 4072
    .end local v16    # "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v18    # "now":J
    .restart local v3    # "now":J
    .local v5, "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_5
    move-wide/from16 v18, v3

    move-object/from16 v16, v5

    .end local v3    # "now":J
    .end local v5    # "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .restart local v16    # "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .restart local v18    # "now":J
    cmp-long v2, v9, v6

    if-nez v2, :cond_6

    .line 4073
    goto :goto_4

    .line 4075
    :cond_6
    move-wide v6, v9

    .line 4055
    .end local v9    # "sum":J
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v16

    move-wide/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_0

    .end local v16    # "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v18    # "now":J
    .restart local v3    # "now":J
    .restart local v5    # "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_7
    move-wide/from16 v18, v3

    move-object/from16 v16, v5

    .line 4077
    .end local v3    # "now":J
    .end local v5    # "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v8    # "i":I
    .restart local v16    # "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .restart local v18    # "now":J
    :goto_4
    const/4 v2, 0x0

    return v2
.end method

.method copyEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1686
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "original":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "newNext":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1687
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/common/cache/LocalCache$Segment;->copyEntry(Lcom/google/common/cache/ReferenceEntry;Lcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    return-object v1
.end method

.method createSegment(IJLcom/google/common/cache/AbstractCache$StatsCounter;)Lcom/google/common/cache/LocalCache$Segment;
    .locals 7
    .param p1, "initialCapacity"    # I
    .param p2, "maxSegmentWeight"    # J
    .param p4, "statsCounter"    # Lcom/google/common/cache/AbstractCache$StatsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/google/common/cache/AbstractCache$StatsCounter;",
            ")",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1738
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    new-instance v6, Lcom/google/common/cache/LocalCache$Segment;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/common/cache/LocalCache$Segment;-><init>(Lcom/google/common/cache/LocalCache;IJLcom/google/common/cache/AbstractCache$StatsCounter;)V

    return-object v6
.end method

.method customWeigher()Z
    .locals 2

    .line 322
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->weigher:Lcom/google/common/cache/Weigher;

    sget-object v1, Lcom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lcom/google/common/cache/CacheBuilder$OneWeigher;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4178
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    .line 4179
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/cache/LocalCache$EntrySet;

    invoke-direct {v1, p0}, Lcom/google/common/cache/LocalCache$EntrySet;-><init>(Lcom/google/common/cache/LocalCache;)V

    iput-object v1, p0, Lcom/google/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method evictsBySize()Z
    .locals 4

    .line 318
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->maxWeight:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method expires()Z
    .locals 1

    .line 326
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method expiresAfterAccess()Z
    .locals 4

    .line 334
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method expiresAfterWrite()Z
    .locals 4

    .line 330
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3846
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 3847
    const/4 v0, 0x0

    return-object v0

    .line 3849
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3850
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method get(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3854
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3855
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method getAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3904
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    const/4 v0, 0x0

    .line 3905
    .local v0, "hits":I
    const/4 v1, 0x0

    .line 3907
    .local v1, "misses":I
    invoke-static {}, Lcom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 3908
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lcom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 3909
    .local v3, "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3910
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v5}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3911
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3912
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3913
    if-nez v6, :cond_0

    .line 3914
    add-int/lit8 v1, v1, 0x1

    .line 3915
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3917
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3920
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 3923
    :cond_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 3925
    :try_start_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v4, v5}, Lcom/google/common/cache/LocalCache;->loadAll(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object v4

    .line 3926
    .local v4, "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 3927
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3928
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_3

    .line 3931
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3932
    nop

    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_2

    .line 3929
    .restart local v6    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    new-instance v5, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x25

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "loadAll failed to return a value for "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    .end local v0    # "hits":I
    .end local v1    # "misses":I
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v3    # "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .end local p1    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    throw v5
    :try_end_1
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3939
    .end local v4    # "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    .restart local v0    # "hits":I
    .restart local v1    # "misses":I
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local v3    # "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .restart local p1    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    :cond_4
    goto :goto_4

    .line 3933
    :catch_0
    move-exception v4

    .line 3935
    .local v4, "e":Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    :try_start_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 3936
    .restart local v6    # "key":Ljava/lang/Object;, "TK;"
    add-int/lit8 v1, v1, -0x1

    .line 3937
    iget-object v7, p0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v6, v7}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3938
    nop

    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_3

    .line 3941
    .end local v4    # "e":Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    :cond_5
    :goto_4
    invoke-static {v2}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3943
    iget-object v5, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3944
    iget-object v5, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3941
    return-object v4

    .line 3943
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3944
    iget-object v5, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3945
    throw v4
.end method

.method getAllPresent(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3882
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    .line 3883
    .local v0, "hits":I
    const/4 v1, 0x0

    .line 3885
    .local v1, "misses":I
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v2

    .line 3886
    .local v2, "result":Lcom/google/common/collect/ImmutableMap$Builder;, "Lcom/google/common/collect/ImmutableMap$Builder<TK;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3887
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3888
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_0

    .line 3889
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3893
    :cond_0
    move-object v6, v4

    .line 3894
    .local v6, "castKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {v2, v6, v5}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 3895
    add-int/lit8 v0, v0, 0x1

    .line 3897
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "castKey":Ljava/lang/Object;, "TK;"
    :goto_1
    goto :goto_0

    .line 3898
    :cond_1
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v0}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3899
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3900
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableMap$Builder;->buildKeepingLast()Lcom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method getEntry(Ljava/lang/Object;)Lcom/google/common/cache/ReferenceEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4018
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4019
    const/4 v0, 0x0

    return-object v0

    .line 4021
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4022
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1

    return-object v1
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3860
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3861
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 3862
    .local v1, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3863
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    goto :goto_0

    .line 3865
    :cond_0
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v2}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3867
    :goto_0
    return-object v1
.end method

.method getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;
    .locals 3
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 1749
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1750
    return-object v1

    .line 1752
    :cond_0
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getValueReference()Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1753
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .line 1754
    return-object v1

    .line 1757
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/cache/LocalCache;->isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1758
    return-object v1

    .line 1760
    :cond_2
    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3873
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3874
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method getOrLoad(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3878
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lcom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 1701
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lcom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1702
    .local v0, "h":I
    invoke-static {v0}, Lcom/google/common/cache/LocalCache;->rehash(I)I

    move-result v1

    return v1
.end method

.method invalidateAll(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 4149
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4150
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4151
    .end local v1    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 4152
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 10

    .line 3808
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 3809
    .local v0, "sum":J
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .line 3810
    .local v2, "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 3811
    aget-object v4, v2, v3

    iget v4, v4, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v4, :cond_0

    .line 3812
    return v5

    .line 3814
    :cond_0
    aget-object v4, v2, v3

    iget v4, v4, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 3810
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3817
    .end local v3    # "i":I
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v6, v0, v3

    const/4 v7, 0x1

    if-eqz v6, :cond_5

    .line 3818
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v8, v2

    if-ge v6, v8, :cond_3

    .line 3819
    aget-object v8, v2, v6

    iget v8, v8, Lcom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v8, :cond_2

    .line 3820
    return v5

    .line 3822
    :cond_2
    aget-object v8, v2, v6

    iget v8, v8, Lcom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v8, v8

    sub-long/2addr v0, v8

    .line 3818
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3824
    .end local v6    # "i":I
    :cond_3
    cmp-long v3, v0, v3

    if-nez v3, :cond_4

    move v5, v7

    :cond_4
    return v5

    .line 3826
    :cond_5
    return v7
.end method

.method isExpired(Lcom/google/common/cache/ReferenceEntry;J)Z
    .locals 6
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1767
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getAccessTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 1769
    return v1

    .line 1771
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 1772
    return v1

    .line 1774
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isLive(Lcom/google/common/cache/ReferenceEntry;J)Z
    .locals 1
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1722
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->getLiveValue(Lcom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 4159
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->keySet:Ljava/util/Set;

    .line 4160
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/cache/LocalCache$KeySet;

    invoke-direct {v1, p0}, Lcom/google/common/cache/LocalCache$KeySet;-><init>(Lcom/google/common/cache/LocalCache;)V

    iput-object v1, p0, Lcom/google/common/cache/LocalCache;->keySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method loadAll(Ljava/util/Set;Lcom/google/common/cache/CacheLoader;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TK;>;",
            "Lcom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 3955
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3956
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3957
    invoke-static {}, Lcom/google/common/base/Stopwatch;->createStarted()Lcom/google/common/base/Stopwatch;

    move-result-object v0

    .line 3959
    .local v0, "stopwatch":Lcom/google/common/base/Stopwatch;
    const/4 v1, 0x0

    .line 3962
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3963
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v3, v2

    .line 3964
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x1

    .line 3978
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez v1, :cond_0

    .line 3979
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3983
    :cond_0
    if-eqz v3, :cond_5

    .line 3988
    invoke-virtual {v0}, Lcom/google/common/base/Stopwatch;->stop()Lcom/google/common/base/Stopwatch;

    .line 3990
    const/4 v2, 0x0

    .line 3991
    .local v2, "nullsPresent":Z
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3992
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3993
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 3994
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_2

    if-nez v7, :cond_1

    goto :goto_1

    .line 3998
    :cond_1
    invoke-virtual {p0, v6, v7}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3996
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 4000
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :goto_2
    goto :goto_0

    .line 4002
    :cond_3
    if-nez v2, :cond_4

    .line 4008
    iget-object v4, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 4009
    return-object v3

    .line 4003
    :cond_4
    iget-object v4, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4004
    new-instance v4, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2a

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned null keys or values from loadAll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3984
    .end local v2    # "nullsPresent":Z
    :cond_5
    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3985
    new-instance v2, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned null map from loadAll"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3978
    .end local v3    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 3975
    :catch_0
    move-exception v2

    .line 3976
    .local v2, "e":Ljava/lang/Error;
    :try_start_1
    new-instance v3, Lcom/google/common/util/concurrent/ExecutionError;

    invoke-direct {v3, v2}, Lcom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    .end local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 3973
    .end local v2    # "e":Ljava/lang/Error;
    .restart local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_1
    move-exception v2

    .line 3974
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 3971
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_2
    move-exception v2

    .line 3972
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lcom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v3, v2}, Lcom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 3968
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_3
    move-exception v2

    .line 3969
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 3970
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 3965
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_4
    move-exception v2

    .line 3966
    .local v2, "e":Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    const/4 v1, 0x1

    .line 3967
    nop

    .end local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3978
    .end local v2    # "e":Lcom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    .restart local v0    # "stopwatch":Lcom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lcom/google/common/cache/CacheLoader;, "Lcom/google/common/cache/CacheLoader<-TK;TV;>;"
    :goto_3
    if-nez v1, :cond_6

    .line 3979
    iget-object v3, p0, Lcom/google/common/cache/LocalCache;->globalStatsCounter:Lcom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lcom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3981
    :cond_6
    throw v2
.end method

.method longSize()J
    .locals 6

    .line 3830
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    .line 3831
    .local v0, "segments":[Lcom/google/common/cache/LocalCache$Segment;, "[Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v1, 0x0

    .line 3832
    .local v1, "sum":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3833
    aget-object v4, v0, v3

    iget v4, v4, Lcom/google/common/cache/LocalCache$Segment;->count:I

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3832
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3835
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;
    .locals 2
    .param p2, "hash"    # I
    .param p3    # Lcom/google/common/cache/ReferenceEntry;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1670
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, p2}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    .line 1671
    .local v0, "segment":Lcom/google/common/cache/LocalCache$Segment;, "Lcom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$Segment;->lock()V

    .line 1673
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILcom/google/common/cache/ReferenceEntry;)Lcom/google/common/cache/ReferenceEntry;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 1673
    return-object v1

    .line 1675
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 1676
    throw v1
.end method

.method final newSegmentArray(I)[Lcom/google/common/cache/LocalCache$Segment;
    .locals 1
    .param p1, "ssize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1823
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    new-array v0, p1, [Lcom/google/common/cache/LocalCache$Segment;

    return-object v0
.end method

.method newValueReference(Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;
    .locals 4
    .param p3, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Lcom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1696
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1697
    .local v0, "hash":I
    iget-object v1, p0, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, p3}, Lcom/google/common/cache/LocalCache$Strength;->referenceValue(Lcom/google/common/cache/LocalCache$Segment;Lcom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lcom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    return-object v1
.end method

.method processPendingNotifications()V
    .locals 5

    .line 1812
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    nop

    :goto_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/cache/RemovalNotification;

    move-object v1, v0

    .local v1, "notification":Lcom/google/common/cache/RemovalNotification;, "Lcom/google/common/cache/RemovalNotification<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1814
    :try_start_0
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->removalListener:Lcom/google/common/cache/RemovalListener;

    invoke-interface {v0, v1}, Lcom/google/common/cache/RemovalListener;->onRemoval(Lcom/google/common/cache/RemovalNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1815
    :catchall_0
    move-exception v0

    .line 1816
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lcom/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception thrown by removal listener"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1817
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 1819
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4082
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4083
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4084
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4085
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4098
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4099
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4100
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 4101
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4090
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4091
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4092
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4093
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method reclaimKey(Lcom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1712
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1713
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->reclaimKey(Lcom/google/common/cache/ReferenceEntry;I)Z

    .line 1714
    return-void
.end method

.method reclaimValue(Lcom/google/common/cache/LocalCache$ValueReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1706
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "valueReference":Lcom/google/common/cache/LocalCache$ValueReference;, "Lcom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p1}, Lcom/google/common/cache/LocalCache$ValueReference;->getEntry()Lcom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1707
    .local v0, "entry":Lcom/google/common/cache/ReferenceEntry;, "Lcom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    .line 1708
    .local v1, "hash":I
    invoke-virtual {p0, v1}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1}, Lcom/google/common/cache/LocalCache$Segment;->reclaimValue(Ljava/lang/Object;ILcom/google/common/cache/LocalCache$ValueReference;)Z

    .line 1709
    return-void
.end method

.method recordsAccess()Z
    .locals 1

    .line 354
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    return v0
.end method

.method recordsTime()Z
    .locals 1

    .line 358
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method recordsWrite()Z
    .locals 1

    .line 350
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method refresh(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 4026
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4027
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/cache/LocalCache;->defaultLoader:Lcom/google/common/cache/CacheLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILcom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    .line 4028
    return-void
.end method

.method refreshes()Z
    .locals 4

    .line 338
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lcom/google/common/cache/LocalCache;->refreshNanos:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 4105
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4106
    const/4 v0, 0x0

    return-object v0

    .line 4108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4109
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 4114
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4117
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4118
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 4115
    .end local v0    # "hash":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4134
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4135
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4136
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4137
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 4123
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4124
    invoke-static {p3}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4125
    if-nez p2, :cond_0

    .line 4126
    const/4 v0, 0x0

    return v0

    .line 4128
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4129
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lcom/google/common/cache/LocalCache;->segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method segmentFor(I)Lcom/google/common/cache/LocalCache$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1733
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->segments:[Lcom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lcom/google/common/cache/LocalCache;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lcom/google/common/cache/LocalCache;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 3840
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->longSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method usesAccessEntries()Z
    .locals 1

    .line 366
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesAccessQueue()Z
    .locals 1

    .line 342
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesKeyReferences()Z
    .locals 2

    .line 370
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->keyStrength:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method usesValueReferences()Z
    .locals 2

    .line 374
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->valueStrength:Lcom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lcom/google/common/cache/LocalCache$Strength;->STRONG:Lcom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method usesWriteEntries()Z
    .locals 1

    .line 362
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesWriteQueue()Z
    .locals 1

    .line 346
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 4168
    .local p0, "this":Lcom/google/common/cache/LocalCache;, "Lcom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/cache/LocalCache;->values:Ljava/util/Collection;

    .line 4169
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/common/cache/LocalCache$Values;

    invoke-direct {v1, p0}, Lcom/google/common/cache/LocalCache$Values;-><init>(Lcom/google/common/cache/LocalCache;)V

    iput-object v1, p0, Lcom/google/common/cache/LocalCache;->values:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method
