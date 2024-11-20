.class public final Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WriteBatch.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/WriteBatchOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/WriteBatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/WriteBatch;",
        "Lcom/google/firebase/firestore/proto/WriteBatch$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/WriteBatchOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 592
    invoke-static {}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$000()Lcom/google/firebase/firestore/proto/WriteBatch;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 593
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/WriteBatch$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/proto/WriteBatch$1;

    .line 585
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllBaseWrites(Ljava/lang/Iterable;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Write;",
            ">;)",
            "Lcom/google/firebase/firestore/proto/WriteBatch$Builder;"
        }
    .end annotation

    .line 1061
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Write;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 1062
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1500(Lcom/google/firebase/firestore/proto/WriteBatch;Ljava/lang/Iterable;)V

    .line 1063
    return-object p0
.end method

.method public addAllWrites(Ljava/lang/Iterable;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/Write;",
            ">;)",
            "Lcom/google/firebase/firestore/proto/WriteBatch$Builder;"
        }
    .end annotation

    .line 760
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/Write;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$600(Lcom/google/firebase/firestore/proto/WriteBatch;Ljava/lang/Iterable;)V

    .line 762
    return-object p0
.end method

.method public addBaseWrites(ILcom/google/firestore/v1/Write$Builder;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 1039
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 1041
    invoke-virtual {p2}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    .line 1040
    invoke-static {v0, p1, v1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1400(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V

    .line 1042
    return-object p0
.end method

.method public addBaseWrites(ILcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 997
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 998
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1400(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V

    .line 999
    return-object p0
.end method

.method public addBaseWrites(Lcom/google/firestore/v1/Write$Builder;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 1018
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 1019
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1300(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/firestore/v1/Write;)V

    .line 1020
    return-object p0
.end method

.method public addBaseWrites(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Write;

    .line 976
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 977
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1300(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/firestore/v1/Write;)V

    .line 978
    return-object p0
.end method

.method public addWrites(ILcom/google/firestore/v1/Write$Builder;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 746
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 747
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 748
    invoke-virtual {p2}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    .line 747
    invoke-static {v0, p1, v1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$500(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V

    .line 749
    return-object p0
.end method

.method public addWrites(ILcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 720
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 721
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$500(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V

    .line 722
    return-object p0
.end method

.method public addWrites(Lcom/google/firestore/v1/Write$Builder;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 733
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 734
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$400(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/firestore/v1/Write;)V

    .line 735
    return-object p0
.end method

.method public addWrites(Lcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Write;

    .line 707
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 708
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$400(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/firestore/v1/Write;)V

    .line 709
    return-object p0
.end method

.method public clearBaseWrites()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 1081
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 1082
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1600(Lcom/google/firebase/firestore/proto/WriteBatch;)V

    .line 1083
    return-object p0
.end method

.method public clearBatchId()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 634
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 635
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$200(Lcom/google/firebase/firestore/proto/WriteBatch;)V

    .line 636
    return-object p0
.end method

.method public clearLocalWriteTime()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 856
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1100(Lcom/google/firebase/firestore/proto/WriteBatch;)V

    .line 857
    return-object p0
.end method

.method public clearWrites()Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 773
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$700(Lcom/google/firebase/firestore/proto/WriteBatch;)V

    .line 774
    return-object p0
.end method

.method public getBaseWrites(I)Lcom/google/firestore/v1/Write;
    .locals 1
    .param p1, "index"    # I

    .line 915
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBaseWrites(I)Lcom/google/firestore/v1/Write;

    move-result-object v0

    return-object v0
.end method

.method public getBaseWritesCount()I
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBaseWritesCount()I

    move-result v0

    return v0
.end method

.method public getBaseWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 878
    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBaseWritesList()Ljava/util/List;

    move-result-object v0

    .line 877
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBatchId()I
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getBatchId()I

    move-result v0

    return v0
.end method

.method public getLocalWriteTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getLocalWriteTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getWrites(I)Lcom/google/firestore/v1/Write;
    .locals 1
    .param p1, "index"    # I

    .line 670
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWrites(I)Lcom/google/firestore/v1/Write;

    move-result-object v0

    return-object v0
.end method

.method public getWritesCount()I
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWritesCount()I

    move-result v0

    return v0
.end method

.method public getWritesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Write;",
            ">;"
        }
    .end annotation

    .line 648
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 649
    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->getWritesList()Ljava/util/List;

    move-result-object v0

    .line 648
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasLocalWriteTime()Z
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/WriteBatch;->hasLocalWriteTime()Z

    move-result v0

    return v0
.end method

.method public mergeLocalWriteTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 844
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 845
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1000(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/protobuf/Timestamp;)V

    .line 846
    return-object p0
.end method

.method public removeBaseWrites(I)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1101
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 1102
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1700(Lcom/google/firebase/firestore/proto/WriteBatch;I)V

    .line 1103
    return-object p0
.end method

.method public removeWrites(I)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 784
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 785
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$800(Lcom/google/firebase/firestore/proto/WriteBatch;I)V

    .line 786
    return-object p0
.end method

.method public setBaseWrites(ILcom/google/firestore/v1/Write$Builder;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 955
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 956
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 957
    invoke-virtual {p2}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    .line 956
    invoke-static {v0, p1, v1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1200(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V

    .line 958
    return-object p0
.end method

.method public setBaseWrites(ILcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 934
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 935
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$1200(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V

    .line 936
    return-object p0
.end method

.method public setBatchId(I)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 620
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 621
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$100(Lcom/google/firebase/firestore/proto/WriteBatch;I)V

    .line 622
    return-object p0
.end method

.method public setLocalWriteTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 832
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$900(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/protobuf/Timestamp;)V

    .line 834
    return-object p0
.end method

.method public setLocalWriteTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 819
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 820
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$900(Lcom/google/firebase/firestore/proto/WriteBatch;Lcom/google/protobuf/Timestamp;)V

    .line 821
    return-object p0
.end method

.method public setWrites(ILcom/google/firestore/v1/Write$Builder;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/Write$Builder;

    .line 694
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 695
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    .line 696
    invoke-virtual {p2}, Lcom/google/firestore/v1/Write$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Write;

    .line 695
    invoke-static {v0, p1, v1}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$300(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V

    .line 697
    return-object p0
.end method

.method public setWrites(ILcom/google/firestore/v1/Write;)Lcom/google/firebase/firestore/proto/WriteBatch$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/Write;

    .line 681
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->copyOnWrite()V

    .line 682
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/WriteBatch$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/WriteBatch;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/firestore/proto/WriteBatch;->access$300(Lcom/google/firebase/firestore/proto/WriteBatch;ILcom/google/firestore/v1/Write;)V

    .line 683
    return-object p0
.end method
