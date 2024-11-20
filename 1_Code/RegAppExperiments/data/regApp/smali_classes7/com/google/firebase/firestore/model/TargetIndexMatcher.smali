.class public Lcom/google/firebase/firestore/model/TargetIndexMatcher;
.super Ljava/lang/Object;
.source "TargetIndexMatcher.java"


# instance fields
.field private final collectionId:Ljava/lang/String;

.field private final equalityFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final inequalityFilters:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final orderBys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/Target;)V
    .locals 4
    .param p1, "target"    # Lcom/google/firebase/firestore/core/Target;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    nop

    .line 101
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getCollectionGroup()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->collectionId:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getOrderBy()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->orderBys:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/TreeSet;

    new-instance v1, Lcom/google/firebase/firestore/model/TargetIndexMatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/firebase/firestore/model/TargetIndexMatcher$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilters:Ljava/util/SortedSet;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->equalityFilters:Ljava/util/List;

    .line 108
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Target;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 109
    .local v1, "filter":Lcom/google/firebase/firestore/core/Filter;
    move-object v2, v1

    check-cast v2, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 110
    .local v2, "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/FieldFilter;->isInequality()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    iget-object v3, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilters:Ljava/util/SortedSet;

    invoke-interface {v3, v2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 113
    :cond_1
    iget-object v3, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->equalityFilters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/Filter;
    .end local v2    # "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :goto_2
    goto :goto_1

    .line 116
    :cond_2
    return-void
.end method

.method private hasMatchingEqualityFilter(Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z
    .locals 3
    .param p1, "segment"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 276
    iget-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->equalityFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 277
    .local v1, "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-direct {p0, v1, p1}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->matchesFilter(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    const/4 v0, 0x1

    return v0

    .line 280
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_0
    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$new$0(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/core/FieldFilter;)I
    .locals 2
    .param p0, "lhs"    # Lcom/google/firebase/firestore/core/FieldFilter;
    .param p1, "rhs"    # Lcom/google/firebase/firestore/core/FieldFilter;

    .line 105
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/FieldPath;->compareTo(Lcom/google/firebase/firestore/model/BasePath;)I

    move-result v0

    return v0
.end method

.method private matchesFilter(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z
    .locals 5
    .param p1, "filter"    # Lcom/google/firebase/firestore/core/FieldFilter;
    .param p2, "segment"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 285
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 288
    :cond_0
    nop

    .line 289
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 290
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    sget-object v3, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    .line 291
    .local v1, "isArrayOperator":Z
    :goto_1
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->CONTAINS:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v1, :cond_3

    move v0, v2

    :cond_3
    return v0

    .line 286
    .end local v1    # "isArrayOperator":Z
    :cond_4
    :goto_2
    return v0
.end method

.method private matchesOrderBy(Lcom/google/firebase/firestore/core/OrderBy;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z
    .locals 3
    .param p1, "orderBy"    # Lcom/google/firebase/firestore/core/OrderBy;
    .param p2, "segment"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 295
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 296
    return v1

    .line 298
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 300
    :cond_1
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->DESCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v0

    sget-object v2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 298
    :goto_0
    return v1
.end method


# virtual methods
.method public buildTargetIndex()Lcom/google/firebase/firestore/model/FieldIndex;
    .locals 7

    .line 217
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->hasMultipleInequality()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 224
    .local v0, "uniqueFields":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/FieldPath;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->equalityFilters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 227
    .local v3, "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 228
    goto :goto_0

    .line 230
    :cond_1
    nop

    .line 231
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 232
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 233
    .local v4, "isArrayOperator":Z
    :goto_2
    if-eqz v4, :cond_4

    .line 234
    nop

    .line 235
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->CONTAINS:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v5

    .line 234
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 237
    :cond_4
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 238
    goto :goto_0

    .line 240
    :cond_5
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 241
    nop

    .line 242
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-static {v5, v6}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v5

    .line 241
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v3    # "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    .end local v4    # "isArrayOperator":Z
    :goto_3
    goto :goto_0

    .line 249
    :cond_6
    iget-object v2, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->orderBys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/OrderBy;

    .line 254
    .local v3, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 255
    goto :goto_4

    .line 258
    :cond_7
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 259
    goto :goto_4

    .line 261
    :cond_8
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 263
    nop

    .line 265
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    .line 266
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    if-ne v5, v6, :cond_9

    .line 267
    sget-object v5, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    goto :goto_5

    .line 268
    :cond_9
    sget-object v5, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->DESCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    .line 264
    :goto_5
    invoke-static {v4, v5}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;)Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v4

    .line 263
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .end local v3    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    goto :goto_4

    .line 271
    :cond_a
    iget-object v2, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->collectionId:Ljava/lang/String;

    sget-object v3, Lcom/google/firebase/firestore/model/FieldIndex;->INITIAL_STATE:Lcom/google/firebase/firestore/model/FieldIndex$IndexState;

    const/4 v4, -0x1

    invoke-static {v4, v2, v1, v3}, Lcom/google/firebase/firestore/model/FieldIndex;->create(ILjava/lang/String;Ljava/util/List;Lcom/google/firebase/firestore/model/FieldIndex$IndexState;)Lcom/google/firebase/firestore/model/FieldIndex;

    move-result-object v2

    return-object v2
.end method

.method public hasMultipleInequality()Z
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilters:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public servedByIndex(Lcom/google/firebase/firestore/model/FieldIndex;)Z
    .locals 10
    .param p1, "index"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 144
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getCollectionGroup()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->collectionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Collection IDs do not match"

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->hasMultipleInequality()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    return v1

    .line 153
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getArraySegment()Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v0

    .line 154
    .local v0, "arraySegment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->hasMatchingEqualityFilter(Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    return v1

    .line 158
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->orderBys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 159
    .local v2, "orderBys":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getDirectionalSegments()Ljava/util/List;

    move-result-object v3

    .line 160
    .local v3, "segments":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/FieldIndex$Segment;>;"
    const/4 v4, 0x0

    .line 162
    .local v4, "segmentIndex":I
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 164
    .local v5, "equalitySegments":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 167
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    invoke-direct {p0, v6}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->hasMatchingEqualityFilter(Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 168
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v4, v6, :cond_3

    .line 180
    return v7

    .line 183
    :cond_3
    iget-object v6, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilters:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/SortedSet;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 185
    iget-object v6, p0, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->inequalityFilters:Ljava/util/SortedSet;

    invoke-interface {v6}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 189
    .local v6, "inequalityFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 190
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 191
    .local v8, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-direct {p0, v6, v8}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->matchesFilter(Lcom/google/firebase/firestore/core/FieldFilter;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/firebase/firestore/core/OrderBy;

    invoke-direct {p0, v9, v8}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->matchesOrderBy(Lcom/google/firebase/firestore/core/OrderBy;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 193
    :cond_4
    return v1

    .line 197
    .end local v8    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 201
    .end local v6    # "inequalityFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 202
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 203
    .local v6, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/firebase/firestore/core/OrderBy;

    invoke-direct {p0, v8, v6}, Lcom/google/firebase/firestore/model/TargetIndexMatcher;->matchesOrderBy(Lcom/google/firebase/firestore/core/OrderBy;Lcom/google/firebase/firestore/model/FieldIndex$Segment;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    .line 201
    .end local v6    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 204
    .restart local v6    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_8
    :goto_2
    return v1

    .line 208
    .end local v6    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_9
    return v7
.end method
