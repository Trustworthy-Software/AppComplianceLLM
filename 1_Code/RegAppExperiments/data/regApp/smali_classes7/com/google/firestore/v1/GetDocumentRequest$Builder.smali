.class public final Lcom/google/firestore/v1/GetDocumentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GetDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/GetDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/GetDocumentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/GetDocumentRequest;",
        "Lcom/google/firestore/v1/GetDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/GetDocumentRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 437
    invoke-static {}, Lcom/google/firestore/v1/GetDocumentRequest;->access$000()Lcom/google/firestore/v1/GetDocumentRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 438
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/GetDocumentRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/GetDocumentRequest$1;

    .line 430
    invoke-direct {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConsistencySelector()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 447
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 448
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$100(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 449
    return-object p0
.end method

.method public clearMask()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$700(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 607
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 507
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$300(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 508
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$1200(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 737
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 658
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->access$900(Lcom/google/firestore/v1/GetDocumentRequest;)V

    .line 659
    return-object p0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/GetDocumentRequest$ConsistencySelectorCase;
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getConsistencySelectorCase()Lcom/google/firestore/v1/GetDocumentRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 684
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasMask()Z
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->hasMask()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 620
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/GetDocumentRequest;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 592
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 593
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$600(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 594
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 722
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$1100(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/Timestamp;)V

    .line 724
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 578
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 579
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$500(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 580
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 563
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 564
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$500(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 565
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 492
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 493
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$200(Lcom/google/firestore/v1/GetDocumentRequest;Ljava/lang/String;)V

    .line 494
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 522
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$400(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/ByteString;)V

    .line 524
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 709
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 710
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$1000(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/Timestamp;)V

    .line 711
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 695
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 696
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$1000(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/Timestamp;)V

    .line 697
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/GetDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 644
    invoke-virtual {p0}, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->copyOnWrite()V

    .line 645
    iget-object v0, p0, Lcom/google/firestore/v1/GetDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/GetDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/GetDocumentRequest;->access$800(Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/protobuf/ByteString;)V

    .line 646
    return-object p0
.end method
