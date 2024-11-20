.class public Lcom/google/firebase/firestore/AggregateQuerySnapshot;
.super Ljava/lang/Object;
.source "AggregateQuerySnapshot.java"


# instance fields
.field private final data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field

.field private final query:Lcom/google/firebase/firestore/AggregateQuery;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/AggregateQuery;Ljava/util/Map;)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/firestore/AggregateQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/AggregateQuery;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    .line 43
    iput-object p2, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->data:Ljava/util/Map;

    .line 44
    return-void
.end method

.method private castTypedValue(Ljava/lang/Object;Lcom/google/firebase/firestore/AggregateField;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "aggregateField"    # Lcom/google/firebase/firestore/AggregateField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/google/firebase/firestore/AggregateField;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 165
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 168
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AggregateField \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 169
    invoke-virtual {p2}, Lcom/google/firebase/firestore/AggregateField;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createWithCount(Lcom/google/firebase/firestore/AggregateQuery;J)Lcom/google/firebase/firestore/AggregateQuerySnapshot;
    .locals 3
    .param p0, "query"    # Lcom/google/firebase/firestore/AggregateQuery;
    .param p1, "count"    # J

    .line 50
    new-instance v0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;

    .line 53
    invoke-static {}, Lcom/google/firebase/firestore/AggregateField;->count()Lcom/google/firebase/firestore/AggregateField$CountAggregateField;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/AggregateField$CountAggregateField;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/google/firestore/v1/Value$Builder;->setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    .line 52
    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;-><init>(Lcom/google/firebase/firestore/AggregateQuery;Ljava/util/Map;)V

    .line 50
    return-object v0
.end method

.method private getInternal(Lcom/google/firebase/firestore/AggregateField;)Ljava/lang/Object;
    .locals 4
    .param p1, "aggregateField"    # Lcom/google/firebase/firestore/AggregateField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 140
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->data:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateField;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->data:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateField;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Value;

    .line 150
    .local v0, "value":Lcom/google/firestore/v1/Value;
    new-instance v1, Lcom/google/firebase/firestore/UserDataWriter;

    iget-object v2, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    .line 152
    invoke-virtual {v2}, Lcom/google/firebase/firestore/AggregateQuery;->getQuery()Lcom/google/firebase/firestore/Query;

    move-result-object v2

    iget-object v2, v2, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    sget-object v3, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/UserDataWriter;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)V

    .line 153
    .local v1, "userDataWriter":Lcom/google/firebase/firestore/UserDataWriter;
    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/UserDataWriter;->convertValue(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 141
    .end local v0    # "value":Lcom/google/firestore/v1/Value;
    .end local v1    # "userDataWriter":Lcom/google/firebase/firestore/UserDataWriter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 143
    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateField;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateField;->getFieldPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")\' was not requested in the aggregation query."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getTypedValue(Lcom/google/firebase/firestore/AggregateField;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "aggregateField"    # Lcom/google/firebase/firestore/AggregateField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/AggregateField;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 158
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->getInternal(Lcom/google/firebase/firestore/AggregateField;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "value":Ljava/lang/Object;
    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->castTypedValue(Ljava/lang/Object;Lcom/google/firebase/firestore/AggregateField;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 192
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 193
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/AggregateQuerySnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 194
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/AggregateQuerySnapshot;

    .line 195
    .local v1, "other":Lcom/google/firebase/firestore/AggregateQuerySnapshot;
    iget-object v3, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    iget-object v4, v1, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/AggregateQuery;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->data:Ljava/util/Map;

    iget-object v4, v1, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->data:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get(Lcom/google/firebase/firestore/AggregateField$CountAggregateField;)J
    .locals 4
    .param p1, "countAggregateField"    # Lcom/google/firebase/firestore/AggregateField$CountAggregateField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->getLong(Lcom/google/firebase/firestore/AggregateField;)Ljava/lang/Long;

    move-result-object v0

    .line 88
    .local v0, "value":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RunAggregationQueryResponse alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 90
    invoke-virtual {p1}, Lcom/google/firebase/firestore/AggregateField$CountAggregateField;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;)Ljava/lang/Double;
    .locals 1
    .param p1, "averageAggregateField"    # Lcom/google/firebase/firestore/AggregateField$AverageAggregateField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 106
    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->getDouble(Lcom/google/firebase/firestore/AggregateField;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/firebase/firestore/AggregateField;)Ljava/lang/Object;
    .locals 1
    .param p1, "aggregateField"    # Lcom/google/firebase/firestore/AggregateField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->getInternal(Lcom/google/firebase/firestore/AggregateField;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .line 64
    invoke-static {}, Lcom/google/firebase/firestore/AggregateField;->count()Lcom/google/firebase/firestore/AggregateField$CountAggregateField;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->get(Lcom/google/firebase/firestore/AggregateField$CountAggregateField;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Lcom/google/firebase/firestore/AggregateField;)Ljava/lang/Double;
    .locals 3
    .param p1, "aggregateField"    # Lcom/google/firebase/firestore/AggregateField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 120
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->getTypedValue(Lcom/google/firebase/firestore/AggregateField;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 121
    .local v0, "val":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getLong(Lcom/google/firebase/firestore/AggregateField;)Ljava/lang/Long;
    .locals 3
    .param p1, "aggregateField"    # Lcom/google/firebase/firestore/AggregateField;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .line 134
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->getTypedValue(Lcom/google/firebase/firestore/AggregateField;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 135
    .local v0, "val":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getQuery()Lcom/google/firebase/firestore/AggregateQuery;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->query:Lcom/google/firebase/firestore/AggregateQuery;

    iget-object v1, p0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;->data:Ljava/util/Map;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
