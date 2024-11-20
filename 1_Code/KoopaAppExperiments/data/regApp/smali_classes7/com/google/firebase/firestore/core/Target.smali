.class public final Lcom/google/firebase/firestore/core/Target;
.super Ljava/lang/Object;
.source "Target.java"


# static fields
.field public static final NO_LIMIT:J = -0x1L


# instance fields
.field private final collectionGroup:Ljava/lang/String;

.field private final endAt:Lcom/google/firebase/firestore/core/Bound;

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

.field private memoizedCanonicalId:Ljava/lang/String;

.field private final orderBys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation
.end field

.field private final path:Lcom/google/firebase/firestore/model/ResourcePath;

.field private final startAt:Lcom/google/firebase/firestore/core/Bound;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V
    .locals 0
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .param p2, "collectionGroup"    # Ljava/lang/String;
    .param p5, "limit"    # J
    .param p7, "startAt"    # Lcom/google/firebase/firestore/core/Bound;
    .param p8, "endAt"    # Lcom/google/firebase/firestore/core/Bound;
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
            "Lcom/google/firebase/firestore/core/Bound;",
            "Lcom/google/firebase/firestore/core/Bound;",
            ")V"
        }
    .end annotation

    .line 79
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    .local p4, "orderBys":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/firebase/firestore/core/Target;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    .line 81
    iput-object p2, p0, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    .line 83
    iput-object p3, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    .line 84
    iput-wide p5, p0, Lcom/google/firebase/firestore/core/Target;->limit:J

    .line 85
    iput-object p7, p0, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    .line 86
    iput-object p8, p0, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    .line 87
    return-void
.end method

.method private getAscendingBound(Lcom/google/firebase/firestore/model/FieldIndex$Segment;Lcom/google/firebase/firestore/core/Bound;)Landroid/util/Pair;
    .locals 8
    .param p1, "segment"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .param p2, "bound"    # Lcom/google/firebase/firestore/core/Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            "Lcom/google/firebase/firestore/core/Bound;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/firestore/v1/Value;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MIN_VALUE:Lcom/google/firestore/v1/Value;

    .line 239
    .local v0, "segmentValue":Lcom/google/firestore/v1/Value;
    const/4 v1, 0x1

    .line 242
    .local v1, "segmentInclusive":Z
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/core/Target;->getFieldFiltersForPath(Lcom/google/firebase/firestore/model/FieldPath;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 243
    .local v3, "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    sget-object v4, Lcom/google/firebase/firestore/model/Values;->MIN_VALUE:Lcom/google/firestore/v1/Value;

    .line 244
    .local v4, "filterValue":Lcom/google/firestore/v1/Value;
    const/4 v5, 0x1

    .line 246
    .local v5, "filterInclusive":Z
    sget-object v6, Lcom/google/firebase/firestore/core/Target$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 257
    :pswitch_0
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 258
    const/4 v5, 0x0

    .line 259
    goto :goto_1

    .line 249
    :pswitch_1
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/firestore/model/Values;->getLowerBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 250
    goto :goto_1

    .line 262
    :pswitch_2
    sget-object v4, Lcom/google/firebase/firestore/model/Values;->MIN_VALUE:Lcom/google/firestore/v1/Value;

    .line 263
    goto :goto_1

    .line 254
    :pswitch_3
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 255
    nop

    .line 268
    :goto_1
    invoke-static {v0, v1, v4, v5}, Lcom/google/firebase/firestore/model/Values;->lowerBoundCompare(Lcom/google/firestore/v1/Value;ZLcom/google/firestore/v1/Value;Z)I

    move-result v6

    if-gez v6, :cond_0

    .line 269
    move-object v0, v4

    .line 270
    move v1, v5

    .line 272
    .end local v3    # "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    .end local v4    # "filterValue":Lcom/google/firestore/v1/Value;
    .end local v5    # "filterInclusive":Z
    :cond_0
    goto :goto_0

    .line 276
    :cond_1
    if-eqz p2, :cond_3

    .line 277
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 278
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/OrderBy;

    .line 279
    .local v3, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/Value;

    .line 281
    .local v4, "cursorValue":Lcom/google/firestore/v1/Value;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v5

    invoke-static {v0, v1, v4, v5}, Lcom/google/firebase/firestore/model/Values;->lowerBoundCompare(Lcom/google/firestore/v1/Value;ZLcom/google/firestore/v1/Value;Z)I

    move-result v5

    if-gez v5, :cond_3

    .line 283
    move-object v0, v4

    .line 284
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v1

    goto :goto_3

    .line 277
    .end local v3    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v4    # "cursorValue":Lcom/google/firestore/v1/Value;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 291
    .end local v2    # "i":I
    :cond_3
    :goto_3
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getDescendingBound(Lcom/google/firebase/firestore/model/FieldIndex$Segment;Lcom/google/firebase/firestore/core/Bound;)Landroid/util/Pair;
    .locals 8
    .param p1, "segment"    # Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .param p2, "bound"    # Lcom/google/firebase/firestore/core/Bound;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/FieldIndex$Segment;",
            "Lcom/google/firebase/firestore/core/Bound;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/firestore/v1/Value;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 303
    sget-object v0, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE:Lcom/google/firestore/v1/Value;

    .line 304
    .local v0, "segmentValue":Lcom/google/firestore/v1/Value;
    const/4 v1, 0x1

    .line 307
    .local v1, "segmentInclusive":Z
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/core/Target;->getFieldFiltersForPath(Lcom/google/firebase/firestore/model/FieldPath;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 308
    .local v3, "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    sget-object v4, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE:Lcom/google/firestore/v1/Value;

    .line 309
    .local v4, "filterValue":Lcom/google/firestore/v1/Value;
    const/4 v5, 0x1

    .line 311
    .local v5, "filterInclusive":Z
    sget-object v6, Lcom/google/firebase/firestore/core/Target$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    .line 314
    :pswitch_0
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firestore/v1/Value;->getValueTypeCase()Lcom/google/firestore/v1/Value$ValueTypeCase;

    move-result-object v6

    invoke-static {v6}, Lcom/google/firebase/firestore/model/Values;->getUpperBound(Lcom/google/firestore/v1/Value$ValueTypeCase;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 315
    const/4 v5, 0x0

    .line 316
    goto :goto_1

    .line 323
    :pswitch_1
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 324
    const/4 v5, 0x0

    .line 325
    goto :goto_1

    .line 328
    :pswitch_2
    sget-object v4, Lcom/google/firebase/firestore/model/Values;->MAX_VALUE:Lcom/google/firestore/v1/Value;

    .line 329
    goto :goto_1

    .line 320
    :pswitch_3
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 321
    nop

    .line 334
    :goto_1
    invoke-static {v0, v1, v4, v5}, Lcom/google/firebase/firestore/model/Values;->upperBoundCompare(Lcom/google/firestore/v1/Value;ZLcom/google/firestore/v1/Value;Z)I

    move-result v6

    if-lez v6, :cond_0

    .line 335
    move-object v0, v4

    .line 336
    move v1, v5

    .line 338
    .end local v3    # "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    .end local v4    # "filterValue":Lcom/google/firestore/v1/Value;
    .end local v5    # "filterInclusive":Z
    :cond_0
    goto :goto_0

    .line 342
    :cond_1
    if-eqz p2, :cond_3

    .line 343
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 344
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/OrderBy;

    .line 345
    .local v3, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/Bound;->getPosition()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firestore/v1/Value;

    .line 347
    .local v4, "cursorValue":Lcom/google/firestore/v1/Value;
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v5

    invoke-static {v0, v1, v4, v5}, Lcom/google/firebase/firestore/model/Values;->upperBoundCompare(Lcom/google/firestore/v1/Value;ZLcom/google/firestore/v1/Value;Z)I

    move-result v5

    if-lez v5, :cond_3

    .line 349
    move-object v0, v4

    .line 350
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v1

    goto :goto_3

    .line 343
    .end local v3    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v4    # "cursorValue":Lcom/google/firestore/v1/Value;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 357
    .end local v2    # "i":I
    :cond_3
    :goto_3
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getFieldFiltersForPath(Lcom/google/firebase/firestore/model/FieldPath;)Ljava/util/List;
    .locals 4
    .param p1, "path"    # Lcom/google/firebase/firestore/model/FieldPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/FieldPath;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/FieldFilter;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/Filter;

    .line 132
    .local v2, "filter":Lcom/google/firebase/firestore/core/Filter;
    instance-of v3, v2, Lcom/google/firebase/firestore/core/FieldFilter;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/google/firebase/firestore/core/FieldFilter;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    move-object v3, v2

    check-cast v3, Lcom/google/firebase/firestore/core/FieldFilter;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v2    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 451
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 452
    return v0

    .line 454
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 458
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/core/Target;

    .line 460
    .local v2, "target":Lcom/google/firebase/firestore/core/Target;
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 463
    :goto_0
    return v1

    .line 465
    :cond_3
    iget-wide v3, p0, Lcom/google/firebase/firestore/core/Target;->limit:J

    iget-wide v5, v2, Lcom/google/firebase/firestore/core/Target;->limit:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    .line 466
    return v1

    .line 468
    :cond_4
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    iget-object v4, v2, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 469
    return v1

    .line 471
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    iget-object v4, v2, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 472
    return v1

    .line 474
    :cond_6
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v4, v2, Lcom/google/firebase/firestore/core/Target;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/ResourcePath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 475
    return v1

    .line 477
    :cond_7
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v3, :cond_8

    iget-object v4, v2, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/core/Bound;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_8
    iget-object v3, v2, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v3, :cond_9

    .line 478
    :goto_1
    return v1

    .line 480
    :cond_9
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v3, :cond_a

    iget-object v0, v2, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v3, v0}, Lcom/google/firebase/firestore/core/Bound;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :cond_a
    iget-object v3, v2, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    if-nez v3, :cond_b

    goto :goto_2

    :cond_b
    move v0, v1

    :goto_2
    return v0

    .line 455
    .end local v2    # "target":Lcom/google/firebase/firestore/core/Target;
    :cond_c
    :goto_3
    return v1
.end method

.method public getArrayValues(Lcom/google/firebase/firestore/model/FieldIndex;)Ljava/util/List;
    .locals 6
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getArraySegment()Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    move-result-object v0

    .line 145
    .local v0, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 147
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/core/Target;->getFieldFiltersForPath(Lcom/google/firebase/firestore/model/FieldPath;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 148
    .local v3, "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    sget-object v4, Lcom/google/firebase/firestore/core/Target$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 154
    .end local v3    # "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    goto :goto_0

    .line 152
    .restart local v3    # "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :pswitch_0
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 150
    :pswitch_1
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/Value;->getArrayValue()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firestore/v1/ArrayValue;->getValuesList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 156
    .end local v3    # "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getCanonicalId()Ljava/lang/String;
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->memoizedCanonicalId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 403
    return-object v0

    .line 406
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Target;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 410
    const-string v1, "|cg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_1
    const-string v1, "|f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Target;->getFilters()Ljava/util/List;

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

    .line 417
    .local v2, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Filter;->getCanonicalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .end local v2    # "filter":Lcom/google/firebase/firestore/core/Filter;
    goto :goto_0

    .line 421
    :cond_2
    const-string v1, "|ob:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Target;->getOrderBy()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/OrderBy;

    .line 423
    .local v2, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/core/OrderBy$Direction;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "asc"

    goto :goto_2

    :cond_3
    const-string v3, "desc"

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .end local v2    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    goto :goto_1

    .line 428
    :cond_4
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Target;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    const-string v1, "|l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/Target;->getLimit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 433
    :cond_5
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    const-string v2, "b:"

    const-string v3, "a:"

    if-eqz v1, :cond_7

    .line 434
    const-string v1, "|lb:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object v1, v2

    goto :goto_3

    :cond_6
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Bound;->positionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_7
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v1, :cond_9

    .line 440
    const-string v1, "|ub:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Bound;->isInclusive()Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v2, v3

    :cond_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Bound;->positionString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/core/Target;->memoizedCanonicalId:Ljava/lang/String;

    .line 446
    return-object v1
.end method

.method public getCollectionGroup()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getEndAt()Lcom/google/firebase/firestore/core/Bound;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

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

    .line 106
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    return-object v0
.end method

.method public getKeyOrder()Lcom/google/firebase/firestore/core/OrderBy$Direction;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/OrderBy;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/OrderBy;->getDirection()Lcom/google/firebase/firestore/core/OrderBy$Direction;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/google/firebase/firestore/core/Target;->limit:J

    return-wide v0
.end method

.method public getLowerBound(Lcom/google/firebase/firestore/model/FieldIndex;)Lcom/google/firebase/firestore/core/Bound;
    .locals 6
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    const/4 v1, 0x1

    .line 194
    .local v1, "inclusive":Z
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getDirectionalSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 196
    .local v3, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    iget-object v4, p0, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/firestore/core/Target;->getAscendingBound(Lcom/google/firebase/firestore/model/FieldIndex$Segment;Lcom/google/firebase/firestore/core/Bound;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_1

    .line 198
    :cond_0
    iget-object v4, p0, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/firestore/core/Target;->getDescendingBound(Lcom/google/firebase/firestore/model/FieldIndex$Segment;Lcom/google/firebase/firestore/core/Bound;)Landroid/util/Pair;

    move-result-object v4

    :goto_1
    nop

    .line 200
    .local v4, "segmentBound":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/firestore/v1/Value;Ljava/lang/Boolean;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/firestore/v1/Value;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    and-int/2addr v1, v5

    .line 202
    .end local v3    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .end local v4    # "segmentBound":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/firestore/v1/Value;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 204
    :cond_1
    new-instance v2, Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    return-object v2
.end method

.method public getNotInValues(Lcom/google/firebase/firestore/model/FieldIndex;)Ljava/util/Collection;
    .locals 7
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/FieldIndex;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 165
    .local v0, "values":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getDirectionalSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 166
    .local v2, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/core/Target;->getFieldFiltersForPath(Lcom/google/firebase/firestore/model/FieldPath;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 167
    .local v4, "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    sget-object v5, Lcom/google/firebase/firestore/core/Target$1;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    .line 176
    :pswitch_0
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    return-object v1

    .line 172
    :pswitch_1
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getFieldPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/FieldFilter;->getValue()Lcom/google/firestore/v1/Value;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    nop

    .line 179
    .end local v4    # "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :goto_2
    goto :goto_1

    .line 180
    .end local v2    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    :cond_0
    goto :goto_0

    .line 182
    :cond_1
    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getOrderBy()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    return-object v0
.end method

.method public getPath()Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    return-object v0
.end method

.method public getSegmentCount()I
    .locals 8

    .line 371
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 372
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/FieldPath;>;"
    const/4 v1, 0x0

    .line 373
    .local v1, "hasArraySegment":Z
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/Filter;

    .line 374
    .local v3, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Filter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 376
    .local v5, "subFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 377
    goto :goto_1

    .line 383
    :cond_0
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 384
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v6

    sget-object v7, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_2

    .line 387
    :cond_1
    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 385
    :cond_2
    :goto_2
    const/4 v1, 0x1

    .line 389
    .end local v5    # "subFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :goto_3
    goto :goto_1

    .line 390
    .end local v3    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_3
    goto :goto_0

    .line 391
    :cond_4
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/OrderBy;

    .line 393
    .local v3, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v4

    if-nez v4, :cond_5

    .line 394
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    .end local v3    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    :cond_5
    goto :goto_4

    .line 397
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public getStartAt()Lcom/google/firebase/firestore/core/Bound;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    return-object v0
.end method

.method public getUpperBound(Lcom/google/firebase/firestore/model/FieldIndex;)Lcom/google/firebase/firestore/core/Bound;
    .locals 6
    .param p1, "fieldIndex"    # Lcom/google/firebase/firestore/model/FieldIndex;

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    const/4 v1, 0x1

    .line 216
    .local v1, "inclusive":Z
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldIndex;->getDirectionalSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/FieldIndex$Segment;

    .line 218
    .local v3, "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldIndex$Segment;->getKind()Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->ASCENDING:Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/FieldIndex$Segment$Kind;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 219
    iget-object v4, p0, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/firestore/core/Target;->getDescendingBound(Lcom/google/firebase/firestore/model/FieldIndex$Segment;Lcom/google/firebase/firestore/core/Bound;)Landroid/util/Pair;

    move-result-object v4

    goto :goto_1

    .line 220
    :cond_0
    iget-object v4, p0, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/firestore/core/Target;->getAscendingBound(Lcom/google/firebase/firestore/model/FieldIndex$Segment;Lcom/google/firebase/firestore/core/Bound;)Landroid/util/Pair;

    move-result-object v4

    :goto_1
    nop

    .line 222
    .local v4, "segmentBound":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/firestore/v1/Value;Ljava/lang/Boolean;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lcom/google/firestore/v1/Value;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    and-int/2addr v1, v5

    .line 224
    .end local v3    # "segment":Lcom/google/firebase/firestore/model/FieldIndex$Segment;
    .end local v4    # "segmentBound":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/google/firestore/v1/Value;Ljava/lang/Boolean;>;"
    goto :goto_0

    .line 226
    :cond_1
    new-instance v2, Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {v2, v0, v1}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    return-object v2
.end method

.method public hasLimit()Z
    .locals 4

    .line 115
    iget-wide v0, p0, Lcom/google/firebase/firestore/core/Target;->limit:J

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
    .locals 8

    .line 485
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 486
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 487
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 488
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ResourcePath;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 489
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v4, p0, Lcom/google/firebase/firestore/core/Target;->limit:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v0, v2

    .line 490
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->startAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Bound;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v1, v2

    .line 491
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->endAt:Lcom/google/firebase/firestore/core/Bound;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Bound;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v0, v3

    .line 492
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public isDocumentQuery()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

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

.method public toString()Ljava/lang/String;
    .locals 3

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Query("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->path:Lcom/google/firebase/firestore/model/ResourcePath;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 501
    const-string v1, " collectionGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->collectionGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 505
    const-string v1, " where "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 507
    if-lez v1, :cond_1

    .line 508
    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->filters:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 515
    const-string v1, " order by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 517
    if-lez v1, :cond_3

    .line 518
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/firestore/core/Target;->orderBys:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 516
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 524
    .end local v1    # "i":I
    :cond_4
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
