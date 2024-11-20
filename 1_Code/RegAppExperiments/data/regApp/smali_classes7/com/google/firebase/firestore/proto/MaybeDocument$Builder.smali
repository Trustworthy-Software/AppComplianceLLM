.class public final Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MaybeDocument.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/MaybeDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/MaybeDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/MaybeDocument;",
        "Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/MaybeDocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 421
    invoke-static {}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$000()Lcom/google/firebase/firestore/proto/MaybeDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 422
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/MaybeDocument$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/proto/MaybeDocument$1;

    .line 414
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocument()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 577
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$700(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 578
    return-object p0
.end method

.method public clearDocumentType()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$100(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 433
    return-object p0
.end method

.method public clearHasCommittedMutations()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 698
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$1200(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 699
    return-object p0
.end method

.method public clearNoDocument()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 504
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 505
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$400(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 506
    return-object p0
.end method

.method public clearUnknownDocument()Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1

    .line 648
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 649
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$1000(Lcom/google/firebase/firestore/proto/MaybeDocument;)V

    .line 650
    return-object p0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentTypeCase()Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getDocumentTypeCase()Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getHasCommittedMutations()Z
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getHasCommittedMutations()Z

    move-result v0

    return v0
.end method

.method public getNoDocument()Lcom/google/firebase/firestore/proto/NoDocument;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getNoDocument()Lcom/google/firebase/firestore/proto/NoDocument;

    move-result-object v0

    return-object v0
.end method

.method public getUnknownDocument()Lcom/google/firebase/firestore/proto/UnknownDocument;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->getUnknownDocument()Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public hasNoDocument()Z
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasNoDocument()Z

    move-result v0

    return v0
.end method

.method public hasUnknownDocument()Z
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MaybeDocument;->hasUnknownDocument()Z

    move-result v0

    return v0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 564
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 565
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$600(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firestore/v1/Document;)V

    .line 566
    return-object p0
.end method

.method public mergeNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/firestore/proto/NoDocument;

    .line 492
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 493
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$300(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/NoDocument;)V

    .line 494
    return-object p0
.end method

.method public mergeUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 636
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$900(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    .line 638
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 552
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 553
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$500(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firestore/v1/Document;)V

    .line 554
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 539
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$500(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firestore/v1/Document;)V

    .line 541
    return-object p0
.end method

.method public setHasCommittedMutations(Z)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 681
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$1100(Lcom/google/firebase/firestore/proto/MaybeDocument;Z)V

    .line 683
    return-object p0
.end method

.method public setNoDocument(Lcom/google/firebase/firestore/proto/NoDocument$Builder;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/firestore/proto/NoDocument$Builder;

    .line 480
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 481
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$200(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/NoDocument;)V

    .line 482
    return-object p0
.end method

.method public setNoDocument(Lcom/google/firebase/firestore/proto/NoDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/firestore/proto/NoDocument;

    .line 467
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 468
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$200(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/NoDocument;)V

    .line 469
    return-object p0
.end method

.method public setUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;

    .line 624
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 625
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$800(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    .line 626
    return-object p0
.end method

.method public setUnknownDocument(Lcom/google/firebase/firestore/proto/UnknownDocument;)Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firebase/firestore/proto/UnknownDocument;

    .line 611
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->copyOnWrite()V

    .line 612
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MaybeDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MaybeDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MaybeDocument;->access$800(Lcom/google/firebase/firestore/proto/MaybeDocument;Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    .line 613
    return-object p0
.end method
