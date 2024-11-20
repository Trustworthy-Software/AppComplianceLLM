.class public final Lcom/google/firestore/v1/CommitResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CommitResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/CommitResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/CommitResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/CommitResponse;",
        "Lcom/google/firestore/v1/CommitResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/CommitResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 342
    invoke-static {}, Lcom/google/firestore/v1/CommitResponse;->access$000()Lcom/google/firestore/v1/CommitResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 343
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/CommitResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/CommitResponse$1;

    .line 335
    invoke-direct {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllWriteResults(Ljava/lang/Iterable;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;)",
            "Lcom/google/firestore/v1/CommitResponse$Builder;"
        }
    .end annotation

    .line 487
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/WriteResult;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 488
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$400(Lcom/google/firestore/v1/CommitResponse;Ljava/lang/Iterable;)V

    .line 489
    return-object p0
.end method

.method public addWriteResults(ILcom/google/firestore/v1/WriteResult$Builder;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/WriteResult$Builder;

    .line 471
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 472
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    .line 473
    invoke-virtual {p2}, Lcom/google/firestore/v1/WriteResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/WriteResult;

    .line 472
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/CommitResponse;->access$300(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V

    .line 474
    return-object p0
.end method

.method public addWriteResults(ILcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/WriteResult;

    .line 441
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 442
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/CommitResponse;->access$300(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V

    .line 443
    return-object p0
.end method

.method public addWriteResults(Lcom/google/firestore/v1/WriteResult$Builder;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/WriteResult$Builder;

    .line 456
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 457
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/WriteResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/CommitResponse;->access$200(Lcom/google/firestore/v1/CommitResponse;Lcom/google/firestore/v1/WriteResult;)V

    .line 458
    return-object p0
.end method

.method public addWriteResults(Lcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/WriteResult;

    .line 426
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 427
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$200(Lcom/google/firestore/v1/CommitResponse;Lcom/google/firestore/v1/WriteResult;)V

    .line 428
    return-object p0
.end method

.method public clearCommitTime()Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 587
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/CommitResponse;->access$900(Lcom/google/firestore/v1/CommitResponse;)V

    .line 588
    return-object p0
.end method

.method public clearWriteResults()Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 502
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/CommitResponse;->access$500(Lcom/google/firestore/v1/CommitResponse;)V

    .line 503
    return-object p0
.end method

.method public getCommitTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->getCommitTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getWriteResults(I)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p1, "index"    # I

    .line 383
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->getWriteResults(I)Lcom/google/firestore/v1/WriteResult;

    move-result-object v0

    return-object v0
.end method

.method public getWriteResultsCount()I
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->getWriteResultsCount()I

    move-result v0

    return v0
.end method

.method public getWriteResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    .line 358
    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->getWriteResultsList()Ljava/util/List;

    move-result-object v0

    .line 357
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCommitTime()Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CommitResponse;->hasCommitTime()Z

    move-result v0

    return v0
.end method

.method public mergeCommitTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 575
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 576
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$800(Lcom/google/firestore/v1/CommitResponse;Lcom/google/protobuf/Timestamp;)V

    .line 577
    return-object p0
.end method

.method public removeWriteResults(I)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 515
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 516
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$600(Lcom/google/firestore/v1/CommitResponse;I)V

    .line 517
    return-object p0
.end method

.method public setCommitTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 563
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 564
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/CommitResponse;->access$700(Lcom/google/firestore/v1/CommitResponse;Lcom/google/protobuf/Timestamp;)V

    .line 565
    return-object p0
.end method

.method public setCommitTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 550
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 551
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CommitResponse;->access$700(Lcom/google/firestore/v1/CommitResponse;Lcom/google/protobuf/Timestamp;)V

    .line 552
    return-object p0
.end method

.method public setWriteResults(ILcom/google/firestore/v1/WriteResult$Builder;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/WriteResult$Builder;

    .line 411
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 412
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    .line 413
    invoke-virtual {p2}, Lcom/google/firestore/v1/WriteResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/WriteResult;

    .line 412
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/CommitResponse;->access$100(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V

    .line 414
    return-object p0
.end method

.method public setWriteResults(ILcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/CommitResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/WriteResult;

    .line 396
    invoke-virtual {p0}, Lcom/google/firestore/v1/CommitResponse$Builder;->copyOnWrite()V

    .line 397
    iget-object v0, p0, Lcom/google/firestore/v1/CommitResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/CommitResponse;->access$100(Lcom/google/firestore/v1/CommitResponse;ILcom/google/firestore/v1/WriteResult;)V

    .line 398
    return-object p0
.end method
