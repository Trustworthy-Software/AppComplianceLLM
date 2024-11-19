.class public final Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BatchGetDocumentsResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/BatchGetDocumentsResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/BatchGetDocumentsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 449
    invoke-static {}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$000()Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 450
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/BatchGetDocumentsResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse$1;

    .line 442
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFound()Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1

    .line 532
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 533
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$400(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V

    .line 534
    return-object p0
.end method

.method public clearMissing()Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 604
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$600(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V

    .line 605
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1

    .line 754
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 755
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$1200(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V

    .line 756
    return-object p0
.end method

.method public clearResult()Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1

    .line 459
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 460
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$100(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V

    .line 461
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1

    .line 665
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$900(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V

    .line 667
    return-object p0
.end method

.method public getFound()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getFound()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getMissing()Ljava/lang/String;
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getMissing()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMissingBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getMissingBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getResultCase()Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getResultCase()Lcom/google/firestore/v1/BatchGetDocumentsResponse$ResultCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasFound()Z
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->hasFound()Z

    move-result v0

    return v0
.end method

.method public hasMissing()Z
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->hasMissing()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeFound(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 520
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 521
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$300(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/firestore/v1/Document;)V

    .line 522
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 740
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 741
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$1100(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/Timestamp;)V

    .line 742
    return-object p0
.end method

.method public setFound(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 508
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 509
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$200(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/firestore/v1/Document;)V

    .line 510
    return-object p0
.end method

.method public setFound(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 495
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 496
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$200(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/firestore/v1/Document;)V

    .line 497
    return-object p0
.end method

.method public setMissing(Ljava/lang/String;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 589
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 590
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$500(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Ljava/lang/String;)V

    .line 591
    return-object p0
.end method

.method public setMissingBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 619
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 620
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$700(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/ByteString;)V

    .line 621
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 725
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 726
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$1000(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/Timestamp;)V

    .line 727
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 709
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$1000(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/Timestamp;)V

    .line 711
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 650
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->copyOnWrite()V

    .line 651
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->access$800(Lcom/google/firestore/v1/BatchGetDocumentsResponse;Lcom/google/protobuf/ByteString;)V

    .line 652
    return-object p0
.end method
