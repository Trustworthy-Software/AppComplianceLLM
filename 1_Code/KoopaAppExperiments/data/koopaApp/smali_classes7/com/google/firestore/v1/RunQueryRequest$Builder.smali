.class public final Lcom/google/firestore/v1/RunQueryRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RunQueryRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/RunQueryRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RunQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/RunQueryRequest;",
        "Lcom/google/firestore/v1/RunQueryRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunQueryRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 579
    invoke-static {}, Lcom/google/firestore/v1/RunQueryRequest;->access$000()Lcom/google/firestore/v1/RunQueryRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 580
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/RunQueryRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/RunQueryRequest$1;

    .line 572
    invoke-direct {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConsistencySelector()Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1

    .line 601
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryRequest;->access$200(Lcom/google/firestore/v1/RunQueryRequest;)V

    .line 603
    return-object p0
.end method

.method public clearNewTransaction()Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1

    .line 910
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 911
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryRequest;->access$1300(Lcom/google/firestore/v1/RunQueryRequest;)V

    .line 912
    return-object p0
.end method

.method public clearParent()Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1

    .line 676
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 677
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryRequest;->access$400(Lcom/google/firestore/v1/RunQueryRequest;)V

    .line 678
    return-object p0
.end method

.method public clearQueryType()Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1

    .line 589
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 590
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryRequest;->access$100(Lcom/google/firestore/v1/RunQueryRequest;)V

    .line 591
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1

    .line 988
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 989
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryRequest;->access$1600(Lcom/google/firestore/v1/RunQueryRequest;)V

    .line 990
    return-object p0
.end method

.method public clearStructuredQuery()Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1

    .line 768
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 769
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryRequest;->access$800(Lcom/google/firestore/v1/RunQueryRequest;)V

    .line 770
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1

    .line 820
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 821
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunQueryRequest;->access$1000(Lcom/google/firestore/v1/RunQueryRequest;)V

    .line 822
    return-object p0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->getConsistencySelectorCase()Lcom/google/firestore/v1/RunQueryRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 622
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->getParentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/RunQueryRequest$QueryTypeCase;
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->getQueryTypeCase()Lcom/google/firestore/v1/RunQueryRequest$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasNewTransaction()Z
    .locals 1

    .line 837
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->hasNewTransaction()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 925
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasStructuredQuery()Z
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->hasStructuredQuery()Z

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunQueryRequest;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 895
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 896
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest;->access$1200(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 897
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 975
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 976
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest;->access$1500(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/protobuf/Timestamp;)V

    .line 977
    return-object p0
.end method

.method public mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 756
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 757
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest;->access$700(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 758
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions$Builder;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TransactionOptions$Builder;

    .line 880
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunQueryRequest;->access$1100(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 882
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 864
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 865
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest;->access$1100(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 866
    return-object p0
.end method

.method public setParent(Ljava/lang/String;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 658
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 659
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest;->access$300(Lcom/google/firestore/v1/RunQueryRequest;Ljava/lang/String;)V

    .line 660
    return-object p0
.end method

.method public setParentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 696
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 697
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest;->access$500(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/protobuf/ByteString;)V

    .line 698
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 962
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 963
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunQueryRequest;->access$1400(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/protobuf/Timestamp;)V

    .line 964
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 948
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 949
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest;->access$1400(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/protobuf/Timestamp;)V

    .line 950
    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery$Builder;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 744
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 745
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunQueryRequest;->access$600(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 746
    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 731
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 732
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest;->access$600(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 733
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 807
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunQueryRequest$Builder;->copyOnWrite()V

    .line 808
    iget-object v0, p0, Lcom/google/firestore/v1/RunQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunQueryRequest;->access$900(Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/protobuf/ByteString;)V

    .line 809
    return-object p0
.end method
