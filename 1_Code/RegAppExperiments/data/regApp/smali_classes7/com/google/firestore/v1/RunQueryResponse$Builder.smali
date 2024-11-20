.class public final Lcom/google/firestore/v1/RunQueryResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RunQueryResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/RunQueryResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RunQueryResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/RunQueryResponse;",
        "Lcom/google/firestore/v1/RunQueryResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunQueryResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 367
    invoke-static {}, Lcom/google/firestore/v1/RunQueryResponse;->access$000()Lcom/google/firestore/v1/RunQueryResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 368
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/RunQueryResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/RunQueryResponse$1;

    .line 360
    invoke-direct {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocument()Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1

    .line 492
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 493
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryResponse;->access$500(Lcom/google/firestore/v1/RunQueryResponse;)V

    .line 494
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryResponse;->access$800(Lcom/google/firestore/v1/RunQueryResponse;)V

    .line 595
    return-object p0
.end method

.method public clearSkippedResults()Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1

    .line 636
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryResponse;->access$1000(Lcom/google/firestore/v1/RunQueryResponse;)V

    .line 638
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1

    .line 415
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 416
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryResponse;->access$200(Lcom/google/firestore/v1/RunQueryResponse;)V

    .line 417
    return-object p0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getSkippedResults()I
    .locals 1

    .line 609
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getSkippedResults()I

    move-result v0

    return v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 511
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryResponse;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 480
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 481
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$400(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/firestore/v1/Document;)V

    .line 482
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 577
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 578
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$700(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 579
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 467
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 468
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunQueryResponse;->access$300(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/firestore/v1/Document;)V

    .line 469
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 453
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 454
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$300(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/firestore/v1/Document;)V

    .line 455
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 560
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 561
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunQueryResponse;->access$600(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 562
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 542
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 543
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$600(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/Timestamp;)V

    .line 544
    return-object p0
.end method

.method public setSkippedResults(I)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 622
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 623
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$900(Lcom/google/firestore/v1/RunQueryResponse;I)V

    .line 624
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunQueryResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 399
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryResponse$Builder;->copyOnWrite()V

    .line 400
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryResponse;->access$100(Lcom/google/firestore/v1/RunQueryResponse;Lcom/google/protobuf/ByteString;)V

    .line 401
    return-object p0
.end method
