.class public final Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CreateDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/CreateDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/CreateDocumentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/CreateDocumentRequest;",
        "Lcom/google/firestore/v1/CreateDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/CreateDocumentRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 476
    invoke-static {}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$000()Lcom/google/firestore/v1/CreateDocumentRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 477
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/CreateDocumentRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/CreateDocumentRequest$1;

    .line 469
    invoke-direct {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCollectionId()Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1

    .line 608
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 609
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$500(Lcom/google/firestore/v1/CreateDocumentRequest;)V

    .line 610
    return-object p0
.end method

.method public clearDocument()Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1

    .line 768
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 769
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$1200(Lcom/google/firestore/v1/CreateDocumentRequest;)V

    .line 770
    return-object p0
.end method

.method public clearDocumentId()Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$800(Lcom/google/firestore/v1/CreateDocumentRequest;)V

    .line 683
    return-object p0
.end method

.method public clearMask()Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$1500(Lcom/google/firestore/v1/CreateDocumentRequest;)V

    .line 853
    return-object p0
.end method

.method public clearParent()Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$200(Lcom/google/firestore/v1/CreateDocumentRequest;)V

    .line 539
    return-object p0
.end method

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getCollectionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentId()Ljava/lang/String;
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getDocumentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->getParentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public hasMask()Z
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/CreateDocumentRequest;->hasMask()Z

    move-result v0

    return v0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 757
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$1100(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/Document;)V

    .line 759
    return-object p0
.end method

.method public mergeMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 838
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 839
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$1400(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 840
    return-object p0
.end method

.method public setCollectionId(Ljava/lang/String;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 595
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 596
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$400(Lcom/google/firestore/v1/CreateDocumentRequest;Ljava/lang/String;)V

    .line 597
    return-object p0
.end method

.method public setCollectionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 623
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 624
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$600(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/protobuf/ByteString;)V

    .line 625
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 745
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 746
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$1000(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/Document;)V

    .line 747
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 732
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 733
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$1000(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/Document;)V

    .line 734
    return-object p0
.end method

.method public setDocumentId(Ljava/lang/String;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 667
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 668
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$700(Lcom/google/firestore/v1/CreateDocumentRequest;Ljava/lang/String;)V

    .line 669
    return-object p0
.end method

.method public setDocumentIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 697
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$900(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/protobuf/ByteString;)V

    .line 699
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 824
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 825
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$1300(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 826
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 809
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 810
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$1300(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 811
    return-object p0
.end method

.method public setParent(Ljava/lang/String;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 522
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 523
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$100(Lcom/google/firestore/v1/CreateDocumentRequest;Ljava/lang/String;)V

    .line 524
    return-object p0
.end method

.method public setParentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/CreateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 554
    invoke-virtual {p0}, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/google/firestore/v1/CreateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/CreateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/CreateDocumentRequest;->access$300(Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/protobuf/ByteString;)V

    .line 556
    return-object p0
.end method
