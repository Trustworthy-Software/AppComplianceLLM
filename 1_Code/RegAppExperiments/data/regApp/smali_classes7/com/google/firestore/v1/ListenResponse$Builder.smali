.class public final Lcom/google/firestore/v1/ListenResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListenResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/ListenResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListenResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ListenResponse;",
        "Lcom/google/firestore/v1/ListenResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListenResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 534
    invoke-static {}, Lcom/google/firestore/v1/ListenResponse;->access$000()Lcom/google/firestore/v1/ListenResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 535
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ListenResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ListenResponse$1;

    .line 527
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDocumentChange()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 689
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 690
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$700(Lcom/google/firestore/v1/ListenResponse;)V

    .line 691
    return-object p0
.end method

.method public clearDocumentDelete()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 761
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 762
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$1000(Lcom/google/firestore/v1/ListenResponse;)V

    .line 763
    return-object p0
.end method

.method public clearDocumentRemove()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 839
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$1300(Lcom/google/firestore/v1/ListenResponse;)V

    .line 841
    return-object p0
.end method

.method public clearFilter()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 929
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 930
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$1600(Lcom/google/firestore/v1/ListenResponse;)V

    .line 931
    return-object p0
.end method

.method public clearResponseType()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 544
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 545
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$100(Lcom/google/firestore/v1/ListenResponse;)V

    .line 546
    return-object p0
.end method

.method public clearTargetChange()Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1

    .line 617
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 618
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenResponse;->access$400(Lcom/google/firestore/v1/ListenResponse;)V

    .line 619
    return-object p0
.end method

.method public getDocumentChange()Lcom/google/firestore/v1/DocumentChange;
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getDocumentChange()Lcom/google/firestore/v1/DocumentChange;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentDelete()Lcom/google/firestore/v1/DocumentDelete;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getDocumentDelete()Lcom/google/firestore/v1/DocumentDelete;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentRemove()Lcom/google/firestore/v1/DocumentRemove;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getDocumentRemove()Lcom/google/firestore/v1/DocumentRemove;

    move-result-object v0

    return-object v0
.end method

.method public getFilter()Lcom/google/firestore/v1/ExistenceFilter;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getFilter()Lcom/google/firestore/v1/ExistenceFilter;

    move-result-object v0

    return-object v0
.end method

.method public getResponseTypeCase()Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getResponseTypeCase()Lcom/google/firestore/v1/ListenResponse$ResponseTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getTargetChange()Lcom/google/firestore/v1/TargetChange;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->getTargetChange()Lcom/google/firestore/v1/TargetChange;

    move-result-object v0

    return-object v0
.end method

.method public hasDocumentChange()Z
    .locals 1

    .line 631
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasDocumentChange()Z

    move-result v0

    return v0
.end method

.method public hasDocumentDelete()Z
    .locals 1

    .line 703
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasDocumentDelete()Z

    move-result v0

    return v0
.end method

.method public hasDocumentRemove()Z
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasDocumentRemove()Z

    move-result v0

    return v0
.end method

.method public hasFilter()Z
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasFilter()Z

    move-result v0

    return v0
.end method

.method public hasTargetChange()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenResponse;->hasTargetChange()Z

    move-result v0

    return v0
.end method

.method public mergeDocumentChange(Lcom/google/firestore/v1/DocumentChange;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentChange;

    .line 677
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$600(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V

    .line 679
    return-object p0
.end method

.method public mergeDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 749
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 750
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$900(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V

    .line 751
    return-object p0
.end method

.method public mergeDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 826
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 827
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$1200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V

    .line 828
    return-object p0
.end method

.method public mergeFilter(Lcom/google/firestore/v1/ExistenceFilter;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 914
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 915
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$1500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V

    .line 916
    return-object p0
.end method

.method public mergeTargetChange(Lcom/google/firestore/v1/TargetChange;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange;

    .line 605
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$300(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V

    .line 607
    return-object p0
.end method

.method public setDocumentChange(Lcom/google/firestore/v1/DocumentChange$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentChange$Builder;

    .line 665
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentChange$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V

    .line 667
    return-object p0
.end method

.method public setDocumentChange(Lcom/google/firestore/v1/DocumentChange;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentChange;

    .line 652
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 653
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$500(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentChange;)V

    .line 654
    return-object p0
.end method

.method public setDocumentDelete(Lcom/google/firestore/v1/DocumentDelete$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentDelete$Builder;

    .line 737
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 738
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentDelete$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentDelete;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$800(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V

    .line 739
    return-object p0
.end method

.method public setDocumentDelete(Lcom/google/firestore/v1/DocumentDelete;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentDelete;

    .line 724
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 725
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$800(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentDelete;)V

    .line 726
    return-object p0
.end method

.method public setDocumentRemove(Lcom/google/firestore/v1/DocumentRemove$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentRemove$Builder;

    .line 813
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 814
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentRemove$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentRemove;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$1100(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V

    .line 815
    return-object p0
.end method

.method public setDocumentRemove(Lcom/google/firestore/v1/DocumentRemove;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentRemove;

    .line 799
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 800
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$1100(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/DocumentRemove;)V

    .line 801
    return-object p0
.end method

.method public setFilter(Lcom/google/firestore/v1/ExistenceFilter$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/ExistenceFilter$Builder;

    .line 899
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 900
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ExistenceFilter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/ExistenceFilter;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$1400(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V

    .line 901
    return-object p0
.end method

.method public setFilter(Lcom/google/firestore/v1/ExistenceFilter;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ExistenceFilter;

    .line 883
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 884
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$1400(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/ExistenceFilter;)V

    .line 885
    return-object p0
.end method

.method public setTargetChange(Lcom/google/firestore/v1/TargetChange$Builder;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TargetChange$Builder;

    .line 593
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TargetChange$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TargetChange;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenResponse;->access$200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V

    .line 595
    return-object p0
.end method

.method public setTargetChange(Lcom/google/firestore/v1/TargetChange;)Lcom/google/firestore/v1/ListenResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TargetChange;

    .line 580
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenResponse$Builder;->copyOnWrite()V

    .line 581
    iget-object v0, p0, Lcom/google/firestore/v1/ListenResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenResponse;->access$200(Lcom/google/firestore/v1/ListenResponse;Lcom/google/firestore/v1/TargetChange;)V

    .line 582
    return-object p0
.end method
