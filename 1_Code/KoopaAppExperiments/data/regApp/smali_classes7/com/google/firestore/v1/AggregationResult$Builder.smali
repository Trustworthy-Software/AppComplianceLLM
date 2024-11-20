.class public final Lcom/google/firestore/v1/AggregationResult$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "AggregationResult.java"

# interfaces
.implements Lcom/google/firestore/v1/AggregationResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/AggregationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/AggregationResult;",
        "Lcom/google/firestore/v1/AggregationResult$Builder;",
        ">;",
        "Lcom/google/firestore/v1/AggregationResultOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 249
    invoke-static {}, Lcom/google/firestore/v1/AggregationResult;->access$000()Lcom/google/firestore/v1/AggregationResult;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/AggregationResult$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/AggregationResult$1;

    .line 242
    invoke-direct {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAggregateFields()Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->copyOnWrite()V

    .line 278
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0}, Lcom/google/firestore/v1/AggregationResult;->access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 279
    return-object p0
.end method

.method public containsAggregateFields(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 273
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v1}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAggregateFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateFieldsCount()I
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getAggregateFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    .line 320
    invoke-virtual {v0}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 319
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getAggregateFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/firestore/v1/Value;

    .line 337
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 338
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/AggregationResult;

    .line 339
    invoke-virtual {v1}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v1

    .line 340
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getAggregateFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 357
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/AggregationResult;

    .line 358
    invoke-virtual {v1}, Lcom/google/firestore/v1/AggregationResult;->getAggregateFieldsMap()Ljava/util/Map;

    move-result-object v1

    .line 359
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 362
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    return-object v2

    .line 360
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public putAggregateFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 378
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 379
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->copyOnWrite()V

    .line 380
    iget-object v2, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v2}, Lcom/google/firestore/v1/AggregationResult;->access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    return-object p0
.end method

.method public putAllAggregateFields(Ljava/util/Map;)Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/AggregationResult$Builder;"
        }
    .end annotation

    .line 395
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->copyOnWrite()V

    .line 396
    iget-object v0, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0}, Lcom/google/firestore/v1/AggregationResult;->access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 397
    return-object p0
.end method

.method public removeAggregateFields(Ljava/lang/String;)Lcom/google/firestore/v1/AggregationResult$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 295
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/AggregationResult$Builder;->copyOnWrite()V

    .line 296
    iget-object v1, p0, Lcom/google/firestore/v1/AggregationResult$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v1}, Lcom/google/firestore/v1/AggregationResult;->access$100(Lcom/google/firestore/v1/AggregationResult;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    return-object p0
.end method
