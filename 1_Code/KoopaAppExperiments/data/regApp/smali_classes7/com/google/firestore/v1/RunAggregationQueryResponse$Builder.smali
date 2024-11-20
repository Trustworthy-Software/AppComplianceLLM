.class public final Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RunAggregationQueryResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/RunAggregationQueryResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RunAggregationQueryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
        "Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunAggregationQueryResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 303
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$000()Lcom/google/firestore/v1/RunAggregationQueryResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 304
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/RunAggregationQueryResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryResponse$1;

    .line 296
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearReadTime()Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1

    .line 502
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 503
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$800(Lcom/google/firestore/v1/RunAggregationQueryResponse;)V

    .line 504
    return-object p0
.end method

.method public clearResult()Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1

    .line 385
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 386
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$300(Lcom/google/firestore/v1/RunAggregationQueryResponse;)V

    .line 387
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$500(Lcom/google/firestore/v1/RunAggregationQueryResponse;)V

    .line 433
    return-object p0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/google/firestore/v1/AggregationResult;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getResult()Lcom/google/firestore/v1/AggregationResult;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 402
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->hasResult()Z

    move-result v0

    return v0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 491
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 492
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$700(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 493
    return-object p0
.end method

.method public mergeResult(Lcom/google/firestore/v1/AggregationResult;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/AggregationResult;

    .line 372
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 373
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$200(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/firestore/v1/AggregationResult;)V

    .line 374
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 479
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 480
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$600(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 481
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 466
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 467
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$600(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 468
    return-object p0
.end method

.method public setResult(Lcom/google/firestore/v1/AggregationResult$Builder;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/AggregationResult$Builder;

    .line 358
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 359
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/AggregationResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/AggregationResult;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$100(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/firestore/v1/AggregationResult;)V

    .line 360
    return-object p0
.end method

.method public setResult(Lcom/google/firestore/v1/AggregationResult;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/AggregationResult;

    .line 343
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 344
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$100(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/firestore/v1/AggregationResult;)V

    .line 345
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 416
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->access$400(Lcom/google/firestore/v1/RunAggregationQueryResponse;Lcom/google/protobuf/ByteString;)V

    .line 418
    return-object p0
.end method
