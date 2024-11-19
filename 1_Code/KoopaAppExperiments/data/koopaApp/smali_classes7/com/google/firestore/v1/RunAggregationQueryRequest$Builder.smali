.class public final Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RunAggregationQueryRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/RunAggregationQueryRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RunAggregationQueryRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
        "Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RunAggregationQueryRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 583
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$000()Lcom/google/firestore/v1/RunAggregationQueryRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 584
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/RunAggregationQueryRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/RunAggregationQueryRequest$1;

    .line 576
    invoke-direct {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConsistencySelector()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 605
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 606
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$200(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 607
    return-object p0
.end method

.method public clearNewTransaction()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 912
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 913
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1300(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 914
    return-object p0
.end method

.method public clearParent()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 680
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 681
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$400(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 682
    return-object p0
.end method

.method public clearQueryType()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 593
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 594
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$100(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 595
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 996
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 997
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1600(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 998
    return-object p0
.end method

.method public clearStructuredAggregationQuery()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 773
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$800(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 774
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 829
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1000(Lcom/google/firestore/v1/RunAggregationQueryRequest;)V

    .line 830
    return-object p0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getConsistencySelectorCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 644
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getParentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;
    .locals 1

    .line 589
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getQueryTypeCase()Lcom/google/firestore/v1/RunAggregationQueryRequest$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 941
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredAggregationQuery()Lcom/google/firestore/v1/StructuredAggregationQuery;
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getStructuredAggregationQuery()Lcom/google/firestore/v1/StructuredAggregationQuery;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasNewTransaction()Z
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->hasNewTransaction()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 928
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasStructuredAggregationQuery()Z
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->hasStructuredAggregationQuery()Z

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 898
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 899
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1200(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 900
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 982
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 983
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1500(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V

    .line 984
    return-object p0
.end method

.method public mergeStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 760
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 761
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$700(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    .line 762
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions$Builder;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TransactionOptions$Builder;

    .line 884
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 885
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1100(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 886
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 869
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 870
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1100(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 871
    return-object p0
.end method

.method public setParent(Ljava/lang/String;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 662
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 663
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$300(Lcom/google/firestore/v1/RunAggregationQueryRequest;Ljava/lang/String;)V

    .line 664
    return-object p0
.end method

.method public setParentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 700
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 701
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$500(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/ByteString;)V

    .line 702
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 968
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 969
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1400(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V

    .line 970
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 953
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 954
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$1400(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/Timestamp;)V

    .line 955
    return-object p0
.end method

.method public setStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;

    .line 748
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 749
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$600(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    .line 750
    return-object p0
.end method

.method public setStructuredAggregationQuery(Lcom/google/firestore/v1/StructuredAggregationQuery;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 735
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 736
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$600(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    .line 737
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 814
    invoke-virtual {p0}, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/firestore/v1/RunAggregationQueryRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RunAggregationQueryRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->access$900(Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/protobuf/ByteString;)V

    .line 816
    return-object p0
.end method
