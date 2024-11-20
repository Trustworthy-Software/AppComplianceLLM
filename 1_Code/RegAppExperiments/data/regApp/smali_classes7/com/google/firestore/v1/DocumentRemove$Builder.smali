.class public final Lcom/google/firestore/v1/DocumentRemove$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentRemove.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentRemoveOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentRemove;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DocumentRemove;",
        "Lcom/google/firestore/v1/DocumentRemove$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentRemoveOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 364
    invoke-static {}, Lcom/google/firestore/v1/DocumentRemove;->access$000()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 365
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DocumentRemove$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/DocumentRemove$1;

    .line 357
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRemovedTargetIds(Ljava/lang/Iterable;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/firestore/v1/DocumentRemove$Builder;"
        }
    .end annotation

    .line 516
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 517
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$600(Lcom/google/firestore/v1/DocumentRemove;Ljava/lang/Iterable;)V

    .line 518
    return-object p0
.end method

.method public addRemovedTargetIds(I)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 501
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 502
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$500(Lcom/google/firestore/v1/DocumentRemove;I)V

    .line 503
    return-object p0
.end method

.method public clearDocument()Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1

    .line 417
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 418
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentRemove;->access$200(Lcom/google/firestore/v1/DocumentRemove;)V

    .line 419
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1

    .line 606
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 607
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentRemove;->access$1000(Lcom/google/firestore/v1/DocumentRemove;)V

    .line 608
    return-object p0
.end method

.method public clearRemovedTargetIds()Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 530
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentRemove;->access$700(Lcom/google/firestore/v1/DocumentRemove;)V

    .line 531
    return-object p0
.end method

.method public getDocument()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getDocument()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getDocumentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedTargetIds(I)I
    .locals 1
    .param p1, "index"    # I

    .line 474
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->getRemovedTargetIds(I)I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsCount()I
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getRemovedTargetIdsCount()I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    .line 449
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->getRemovedTargetIdsList()Ljava/util/List;

    move-result-object v0

    .line 448
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentRemove;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 594
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 595
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$900(Lcom/google/firestore/v1/DocumentRemove;Lcom/google/protobuf/Timestamp;)V

    .line 596
    return-object p0
.end method

.method public setDocument(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 404
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 405
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$100(Lcom/google/firestore/v1/DocumentRemove;Ljava/lang/String;)V

    .line 406
    return-object p0
.end method

.method public setDocumentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 432
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 433
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$300(Lcom/google/firestore/v1/DocumentRemove;Lcom/google/protobuf/ByteString;)V

    .line 434
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 581
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 582
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentRemove;->access$800(Lcom/google/firestore/v1/DocumentRemove;Lcom/google/protobuf/Timestamp;)V

    .line 583
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 567
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 568
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentRemove;->access$800(Lcom/google/firestore/v1/DocumentRemove;Lcom/google/protobuf/Timestamp;)V

    .line 569
    return-object p0
.end method

.method public setRemovedTargetIds(II)Lcom/google/firestore/v1/DocumentRemove$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 487
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentRemove$Builder;->copyOnWrite()V

    .line 488
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentRemove$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/DocumentRemove;->access$400(Lcom/google/firestore/v1/DocumentRemove;II)V

    .line 489
    return-object p0
.end method
