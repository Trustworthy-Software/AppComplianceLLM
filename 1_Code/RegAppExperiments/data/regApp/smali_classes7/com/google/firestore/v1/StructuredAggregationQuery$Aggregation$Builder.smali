.class public final Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$AggregationOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1731
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$1500()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1732
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$1;

    .line 1724
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAlias()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1

    .line 2028
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 2029
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2700(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 2030
    return-object p0
.end method

.method public clearAvg()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1

    .line 1958
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1959
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2500(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 1960
    return-object p0
.end method

.method public clearCount()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1

    .line 1814
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1815
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$1900(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 1816
    return-object p0
.end method

.method public clearOperator()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1

    .line 1741
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1742
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$1600(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 1743
    return-object p0
.end method

.method public clearSum()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1

    .line 1886
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1887
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2200(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 1888
    return-object p0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 1977
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getAlias()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliasBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1994
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getAliasBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAvg()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;
    .locals 1

    .line 1911
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getAvg()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    move-result-object v0

    return-object v0
.end method

.method public getCount()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;
    .locals 1

    .line 1767
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getCount()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    move-result-object v0

    return-object v0
.end method

.method public getOperatorCase()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;
    .locals 1

    .line 1737
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getOperatorCase()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$OperatorCase;

    move-result-object v0

    return-object v0
.end method

.method public getSum()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;
    .locals 1

    .line 1839
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->getSum()Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    move-result-object v0

    return-object v0
.end method

.method public hasAvg()Z
    .locals 1

    .line 1900
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->hasAvg()Z

    move-result v0

    return v0
.end method

.method public hasCount()Z
    .locals 1

    .line 1756
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->hasCount()Z

    move-result v0

    return v0
.end method

.method public hasSum()Z
    .locals 1

    .line 1828
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->hasSum()Z

    move-result v0

    return v0
.end method

.method public mergeAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    .line 1946
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1947
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2400(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V

    .line 1948
    return-object p0
.end method

.method public mergeCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    .line 1802
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1803
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$1800(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V

    .line 1804
    return-object p0
.end method

.method public mergeSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 1874
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1875
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2100(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V

    .line 1876
    return-object p0
.end method

.method public setAlias(Ljava/lang/String;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2011
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 2012
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2600(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Ljava/lang/String;)V

    .line 2013
    return-object p0
.end method

.method public setAliasBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2047
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 2048
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2800(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/protobuf/ByteString;)V

    .line 2049
    return-object p0
.end method

.method public setAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;

    .line 1934
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1935
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2300(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V

    .line 1936
    return-object p0
.end method

.method public setAvg(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;

    .line 1921
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1922
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2300(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Avg;)V

    .line 1923
    return-object p0
.end method

.method public setCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;

    .line 1790
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1791
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$1700(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V

    .line 1792
    return-object p0
.end method

.method public setCount(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;

    .line 1777
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1778
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$1700(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Count;)V

    .line 1779
    return-object p0
.end method

.method public setSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;

    .line 1862
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1863
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2000(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V

    .line 1864
    return-object p0
.end method

.method public setSum(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;

    .line 1849
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->copyOnWrite()V

    .line 1850
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;->access$2000(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Sum;)V

    .line 1851
    return-object p0
.end method
