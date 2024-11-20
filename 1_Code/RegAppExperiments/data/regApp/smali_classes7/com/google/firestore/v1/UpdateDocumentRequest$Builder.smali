.class public final Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UpdateDocumentRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/UpdateDocumentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/UpdateDocumentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/UpdateDocumentRequest;",
        "Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/UpdateDocumentRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 424
    invoke-static {}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$000()Lcom/google/firestore/v1/UpdateDocumentRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 425
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/UpdateDocumentRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/UpdateDocumentRequest$1;

    .line 417
    invoke-direct {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCurrentDocument()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 761
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 762
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$1200(Lcom/google/firestore/v1/UpdateDocumentRequest;)V

    .line 763
    return-object p0
.end method

.method public clearDocument()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 500
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 501
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$300(Lcom/google/firestore/v1/UpdateDocumentRequest;)V

    .line 502
    return-object p0
.end method

.method public clearMask()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 685
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$900(Lcom/google/firestore/v1/UpdateDocumentRequest;)V

    .line 686
    return-object p0
.end method

.method public clearUpdateMask()Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$600(Lcom/google/firestore/v1/UpdateDocumentRequest;)V

    .line 603
    return-object p0
.end method

.method public getCurrentDocument()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getCurrentDocument()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 630
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getUpdateMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentDocument()Z
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->hasCurrentDocument()Z

    move-result v0

    return v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public hasMask()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->hasMask()Z

    move-result v0

    return v0
.end method

.method public hasUpdateMask()Z
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/UpdateDocumentRequest;->hasUpdateMask()Z

    move-result v0

    return v0
.end method

.method public mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 749
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$1100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V

    .line 751
    return-object p0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 488
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 489
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$200(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V

    .line 490
    return-object p0
.end method

.method public mergeMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 671
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 672
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$800(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 673
    return-object p0
.end method

.method public mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 585
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 586
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$500(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 587
    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition$Builder;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Precondition$Builder;

    .line 736
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Precondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$1000(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V

    .line 738
    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 722
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 723
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$1000(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Precondition;)V

    .line 724
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 475
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 476
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V

    .line 477
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 461
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 462
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$100(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;)V

    .line 463
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 657
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 658
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$700(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 659
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 642
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 643
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$700(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 644
    return-object p0
.end method

.method public setUpdateMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 568
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 569
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$400(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 570
    return-object p0
.end method

.method public setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 550
    invoke-virtual {p0}, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->copyOnWrite()V

    .line 551
    iget-object v0, p0, Lcom/google/firestore/v1/UpdateDocumentRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/UpdateDocumentRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/UpdateDocumentRequest;->access$400(Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 552
    return-object p0
.end method
