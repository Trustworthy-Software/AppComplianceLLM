.class public final Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredAggregationQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredAggregationQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredAggregationQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredAggregationQuery;",
        "Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredAggregationQueryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2472
    invoke-static {}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3000()Lcom/google/firestore/v1/StructuredAggregationQuery;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2473
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredAggregationQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredAggregationQuery$1;

    .line 2465
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    .line 2667
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2668
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 2669
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2668
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3700(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 2670
    return-object p0
.end method

.method public addAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2641
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2642
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3700(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 2643
    return-object p0
.end method

.method public addAggregations(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    .line 2654
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2655
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3600(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 2656
    return-object p0
.end method

.method public addAggregations(Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2628
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2629
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3600(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 2630
    return-object p0
.end method

.method public addAllAggregations(Ljava/lang/Iterable;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;"
        }
    .end annotation

    .line 2681
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2682
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3800(Lcom/google/firestore/v1/StructuredAggregationQuery;Ljava/lang/Iterable;)V

    .line 2683
    return-object p0
.end method

.method public clearAggregations()Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 2693
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2694
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3900(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    .line 2695
    return-object p0
.end method

.method public clearQueryType()Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 2482
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2483
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3100(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    .line 2484
    return-object p0
.end method

.method public clearStructuredQuery()Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1

    .line 2555
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2556
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3400(Lcom/google/firestore/v1/StructuredAggregationQuery;)V

    .line 2557
    return-object p0
.end method

.method public getAggregations(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;
    .locals 1
    .param p1, "index"    # I

    .line 2591
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getAggregations(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    move-result-object v0

    return-object v0
.end method

.method public getAggregationsCount()I
    .locals 1

    .line 2581
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getAggregationsCount()I

    move-result v0

    return v0
.end method

.method public getAggregationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;",
            ">;"
        }
    .end annotation

    .line 2569
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 2570
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getAggregationsList()Ljava/util/List;

    move-result-object v0

    .line 2569
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/v1/StructuredAggregationQuery$QueryTypeCase;
    .locals 1

    .line 2478
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getQueryTypeCase()Lcom/google/firestore/v1/StructuredAggregationQuery$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 2508
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredQuery()Z
    .locals 1

    .line 2497
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredAggregationQuery;->hasStructuredQuery()Z

    move-result v0

    return v0
.end method

.method public mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 2543
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2544
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3300(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 2545
    return-object p0
.end method

.method public removeAggregations(I)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 2705
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2706
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$4000(Lcom/google/firestore/v1/StructuredAggregationQuery;I)V

    .line 2707
    return-object p0
.end method

.method public setAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;

    .line 2615
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2616
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    .line 2617
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2616
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3500(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 2618
    return-object p0
.end method

.method public setAggregations(ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;

    .line 2602
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2603
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3500(Lcom/google/firestore/v1/StructuredAggregationQuery;ILcom/google/firestore/v1/StructuredAggregationQuery$Aggregation;)V

    .line 2604
    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery$Builder;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 2531
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2532
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3200(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 2533
    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 2518
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->copyOnWrite()V

    .line 2519
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredAggregationQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredAggregationQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredAggregationQuery;->access$3200(Lcom/google/firestore/v1/StructuredAggregationQuery;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 2520
    return-object p0
.end method
