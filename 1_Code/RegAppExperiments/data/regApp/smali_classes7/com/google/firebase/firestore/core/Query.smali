.class public final Lcom/google/firebase/firestore/core/Query;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/Query$QueryComparator;,
        Lcom/google/firebase/firestore/core/Query$LimitType;
    }
.end annotation


# static fields
.field private static final KEY_ORDERING_ASC:Lcom/google/firebase/firestore/core/OrderBy;

.field private static final KEY_ORDERING_DESC:Lcom/google/firebase/firestore/core/OrderBy;


# instance fields
.field private final collectionGroup:Ljava/lang/String;

.field private final endAt:Lcom/google/firebase/firestore/core/Bound;

.field private final explicitSortOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private final filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation
.end field

.field private final limit:J

.field private final limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

.field private memoizedAggregateTarget:Lcom/google/firebase/firestore/core/Target;

.field private memoizedNormalizedOrderBys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedTarget:Lcom/google/firebase/firestore/core/Target;

.field private final path:Lcom/google/firebase/firestore/model/ResourcePath;

.field private final startAt:Lcom/google/firebase/firestore/core/Bound;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    sget-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    sget-object v1, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    .line 55
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/Query;->KEY_ORDERING_ASC:Lcom/google/firebase/firestore/core/OrderBy;

    .line 56
    sget-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    sget-object v1, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    .line 57
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/Query;->KEY_ORDERING_DESC:Lcom/google/firebase/firestore/core/OrderBy;

    .line 56
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;)V
    .locals 10
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .param p2, "collectionGroup"    # Ljava/lang/String;

    .line 110
    nop

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    const-wide/16 v5, -0x1

    sget-object v7, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .param p2, "collectionGroup"    # Ljava/lang/String;
    .param p5, "limit"    # J
    .param p7, "limitType"    # Lcom/google/firebase/firestore/core/Query$LimitType;
    .param p8, "startAt"    # Lcom/google/firebase/firestore/core/Bound;
    .param p9, "endAt"    # Lcom/google/firebase/firestore/core/Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;J",
            "Lcom/google/firebase/firestore/core/Query$LimitType;",
            "Lcom/google/firebase/firestore/core/Bound;",
            "Lcom/google/firebase/firestore/core/Bound;",
            ")V"
        }
    .end annotation

    .line 94
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    .local p4, "explicitSortOrder":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    .line 96
    iput-object p2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    .line 97
    iput-object p4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    .line 98
    iput-object p3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    .line 99
    iput-wide p5, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    .line 100
    iput-object p7, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    .line 101
    iput-object p8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    .line 102
    iput-object p9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    .line 103
    return-void
.end method

.method public static atPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;
    .locals 2
    .param p0, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 51
    new-instance v0, Lcom/google/firebase/firestore/core/Query;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;)V

    return-object v0
.end method

.method private matchesBounds(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 3
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 404
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/firebase/firestore/core/Bound;->sortsBeforeDocument(Ljava/util/List;Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    return v1

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/google/firebase/firestore/core/Bound;->sortsAfterDocument(Ljava/util/List;Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    return v1

    .line 410
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private matchesFilters(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 3
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 376
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 377
    .local v1, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Filter;->matches(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 378
    const/4 v0, 0x0

    return v0

    .line 380
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 381
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private matchesOrderBy(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 4
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 393
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/OrderBy;

    .line 395
    .local v1, "order":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-interface {p1, v2}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v2

    if-nez v2, :cond_0

    .line 396
    const/4 v0, 0x0

    return v0

    .line 398
    .end local v1    # "order":Lcom/google/firebase/firestore/core/OrderBy;
    :cond_0
    goto :goto_0

    .line 399
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private matchesPathAndCollectionGroup(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 5
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 363
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 364
    .local v0, "docPath":Lcom/google/firebase/firestore/model/ResourcePath;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 367
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/firebase/firestore/model/DocumentKey;->hasCollectionId(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/model/ResourcePath;->isPrefixOf(Lcom/google/firebase/firestore/model/BasePath;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/model/ResourcePath;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/model/ResourcePath;->isPrefixOf(Lcom/google/firebase/firestore/model/BasePath;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ne v1, v4, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method private declared-synchronized toTarget(Ljava/util/List;)Lcom/google/firebase/firestore/core/Target;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;)",
            "Lcom/google/firebase/firestore/core/Target;"
        }
    .end annotation

    .local p1, "orderBys":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    monitor-enter p0

    .line 466
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    sget-object v1, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-ne v0, v1, :cond_0

    .line 467
    new-instance v0, Lcom/google/firebase/firestore/core/Target;

    .line 468
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    .line 469
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getCollectionGroup()Ljava/lang/String;

    move-result-object v4

    .line 470
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getFilters()Ljava/util/List;

    move-result-object v5

    iget-wide v7, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    .line 473
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getStartAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v9

    .line 474
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getEndAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v10

    move-object v2, v0

    move-object v6, p1

    invoke-direct/range {v2 .. v10}, Lcom/google/firebase/firestore/core/Target;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    monitor-exit p0

    return-object v0

    .line 477
    .end local p0    # "this":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v0, "newOrderBy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/OrderBy;

    .line 480
    .local v2, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    if-ne v3, v4, :cond_1

    .line 481
    sget-object v3, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    goto :goto_1

    .line 482
    :cond_1
    sget-object v3, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    :goto_1
    nop

    .line 483
    .local v3, "dir":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    nop

    .end local v2    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v3    # "dir":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    goto :goto_0

    .line 488
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/firebase/firestore/core/Bound;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    move-object v8, v1

    goto :goto_2

    :cond_3
    move-object v8, v2

    .line 490
    .local v8, "newStartAt":Lcom/google/firebase/firestore/core/Bound;
    :goto_2
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v1, :cond_4

    .line 491
    new-instance v1, Lcom/google/firebase/firestore/core/Bound;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    move-object v9, v1

    goto :goto_3

    .line 492
    :cond_4
    move-object v9, v2

    :goto_3
    nop

    .line 494
    .local v9, "newEndAt":Lcom/google/firebase/firestore/core/Bound;
    new-instance v10, Lcom/google/firebase/firestore/core/Target;

    .line 495
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    .line 496
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getCollectionGroup()Ljava/lang/String;

    move-result-object v3

    .line 497
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getFilters()Ljava/util/List;

    move-result-object v4

    iget-wide v6, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    move-object v1, v10

    move-object v5, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/firebase/firestore/core/Target;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    monitor-exit p0

    return-object v10

    .line 465
    .end local v0    # "newOrderBy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/firebase/firestore/core/OrderBy;>;"
    .end local v8    # "newStartAt":Lcom/google/firebase/firestore/core/Bound;
    .end local v9    # "newEndAt":Lcom/google/firebase/firestore/core/Bound;
    .end local p1    # "orderBys":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public asCollectionQueryAtPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;
    .locals 11
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 291
    new-instance v10, Lcom/google/firebase/firestore/core/Query;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v7, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v10
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 424
    new-instance v0, Lcom/google/firebase/firestore/core/Query$QueryComparator;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/core/Query$QueryComparator;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;
    .locals 11
    .param p1, "bound"    # Lcom/google/firebase/firestore/core/Bound;

    .line 281
    new-instance v10, Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v7, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    move-object v0, v10

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v10
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 529
    if-ne p0, p1, :cond_0

    .line 530
    const/4 v0, 0x1

    return v0

    .line 532
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 536
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/core/Query;

    .line 538
    .local v1, "query":Lcom/google/firebase/firestore/core/Query;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v3, v1, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    if-eq v2, v3, :cond_2

    .line 539
    return v0

    .line 542
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/core/Target;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 533
    .end local v1    # "query":Lcom/google/firebase/firestore/core/Query;
    :cond_3
    :goto_0
    return v0
.end method

.method public filter(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Query;
    .locals 12
    .param p1, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 204
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->isDocumentQuery()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No filter is allowed for document query"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 207
    .local v0, "updatedFilter":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v1, Lcom/google/firebase/firestore/core/Query;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    iget-wide v7, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v10, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v11, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    move-object v2, v1

    move-object v5, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v1
.end method

.method public getCanonicalId()Ljava/lang/String;
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->getCanonicalId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|lt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionGroup()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getEndAt()Lcom/google/firebase/firestore/core/Bound;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    return-object v0
.end method

.method public getExplicitOrderBy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getInequalityFilterFields()Ljava/util/SortedSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 186
    .local v0, "result":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 187
    .local v2, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Filter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 188
    .local v4, "subFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/FieldFilter;->isInequality()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v4    # "subFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_0
    goto :goto_1

    .line 192
    .end local v2    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_1
    goto :goto_0

    .line 194
    :cond_2
    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    return-wide v0
.end method

.method public getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    return-object v0
.end method

.method public declared-synchronized getNormalizedOrderBy()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedNormalizedOrderBys:Ljava/util/List;

    if-nez v0, :cond_6

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v0, "res":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 328
    .local v1, "fieldsNormalized":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/OrderBy;

    .line 329
    .local v3, "explicit":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v4, v3, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 331
    nop

    .end local v3    # "explicit":Lcom/google/firebase/firestore/core/OrderBy;
    goto :goto_0

    .line 335
    .end local p0    # "this":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/OrderBy;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v2

    goto :goto_1

    .line 337
    :cond_1
    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    :goto_1
    nop

    .line 345
    .local v2, "lastDirection":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getInequalityFilterFields()Ljava/util/SortedSet;

    move-result-object v3

    .line 346
    .local v3, "inequalityFields":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/model/FieldPath;>;"
    invoke-interface {v3}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/FieldPath;

    .line 347
    .local v5, "field":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v6

    if-nez v6, :cond_2

    .line 348
    invoke-static {v2, v5}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    .end local v5    # "field":Lcom/google/firebase/firestore/model/FieldPath;
    :cond_2
    goto :goto_2

    .line 353
    :cond_3
    sget-object v4, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 354
    sget-object v4, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v2, v4}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lcom/google/firebase/firestore/core/Query;->KEY_ORDERING_ASC:Lcom/google/firebase/firestore/core/OrderBy;

    goto :goto_3

    :cond_4
    sget-object v4, Lcom/google/firebase/firestore/core/Query;->KEY_ORDERING_DESC:Lcom/google/firebase/firestore/core/OrderBy;

    :goto_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/firebase/firestore/core/Query;->memoizedNormalizedOrderBys:Ljava/util/List;

    .line 359
    .end local v0    # "res":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    .end local v1    # "fieldsNormalized":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v2    # "lastDirection":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    .end local v3    # "inequalityFields":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/google/firebase/firestore/model/FieldPath;>;"
    :cond_6
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedNormalizedOrderBys:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 322
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPath()Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    return-object v0
.end method

.method public getStartAt()Lcom/google/firebase/firestore/core/Bound;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    return-object v0
.end method

.method public hasLimit()Z
    .locals 4

    .line 165
    iget-wide v0, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 547
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Target;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query$LimitType;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isCollectionGroupQuery()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDocumentQuery()Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public limitToFirst(J)Lcom/google/firebase/firestore/core/Query;
    .locals 11
    .param p1, "limit"    # J

    .line 234
    new-instance v10, Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    sget-object v7, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    move-object v0, v10

    move-wide v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v10
.end method

.method public limitToLast(J)Lcom/google/firebase/firestore/core/Query;
    .locals 11
    .param p1, "limit"    # J

    .line 252
    new-instance v10, Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    sget-object v7, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v8, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    move-object v0, v10

    move-wide v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v10
.end method

.method public matches(Lcom/google/firebase/firestore/model/Document;)Z
    .locals 1
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;

    .line 415
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->isFoundDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Query;->matchesPathAndCollectionGroup(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Query;->matchesOrderBy(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Query;->matchesFilters(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Query;->matchesBounds(Lcom/google/firebase/firestore/model/Document;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 415
    :goto_0
    return v0
.end method

.method public matchesAllDocuments()Z
    .locals 6

    .line 145
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/OrderBy;

    iget-object v0, v0, Lcom/google/firebase/firestore/core/OrderBy;->field:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    nop

    .line 145
    :goto_0
    return v1
.end method

.method public orderBy(Lcom/google/firebase/firestore/core/OrderBy;)Lcom/google/firebase/firestore/core/Query;
    .locals 12
    .param p1, "order"    # Lcom/google/firebase/firestore/core/OrderBy;

    .line 219
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->isDocumentQuery()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "No ordering is allowed for document query"

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 222
    .local v0, "updatedSortOrder":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v1, Lcom/google/firebase/firestore/core/Query;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-wide v7, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v10, p0, Lcom/google/firebase/firestore/core/Query;->startAt:Lcom/google/firebase/firestore/core/Bound;

    iget-object v11, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v11}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v1
.end method

.method public startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;
    .locals 11
    .param p1, "bound"    # Lcom/google/firebase/firestore/core/Bound;

    .line 270
    new-instance v10, Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Query;->collectionGroup:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/Query;->filters:Ljava/util/List;

    iget-object v4, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    iget-wide v5, p0, Lcom/google/firebase/firestore/core/Query;->limit:J

    iget-object v7, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    iget-object v9, p0, Lcom/google/firebase/firestore/core/Query;->endAt:Lcom/google/firebase/firestore/core/Bound;

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    return-object v10
.end method

.method public declared-synchronized toAggregateTarget()Lcom/google/firebase/firestore/core/Target;
    .locals 1

    monitor-enter p0

    .line 512
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedAggregateTarget:Lcom/google/firebase/firestore/core/Target;

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->explicitSortOrder:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/Query;->toTarget(Ljava/util/List;)Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedAggregateTarget:Lcom/google/firebase/firestore/core/Target;

    .line 515
    .end local p0    # "this":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedAggregateTarget:Lcom/google/firebase/firestore/core/Target;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Query(target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Target;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    const-string v1, ";limitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Query;->limitType:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query$LimitType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized toTarget()Lcom/google/firebase/firestore/core/Target;
    .locals 1

    monitor-enter p0

    .line 459
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedTarget:Lcom/google/firebase/firestore/core/Target;

    if-nez v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/Query;->toTarget(Ljava/util/List;)Lcom/google/firebase/firestore/core/Target;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedTarget:Lcom/google/firebase/firestore/core/Target;

    .line 462
    .end local p0    # "this":Lcom/google/firebase/firestore/core/Query;
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query;->memoizedTarget:Lcom/google/firebase/firestore/core/Target;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
