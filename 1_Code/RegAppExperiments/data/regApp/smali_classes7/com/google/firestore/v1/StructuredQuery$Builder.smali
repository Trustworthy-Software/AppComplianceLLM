.class public final Lcom/google/firestore/v1/StructuredQuery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredQuery;",
        "Lcom/google/firestore/v1/StructuredQuery$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQueryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6101
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery;->access$7100()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6102
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredQuery$1;

    .line 6094
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFrom(Ljava/lang/Iterable;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredQuery$Builder;"
        }
    .end annotation

    .line 6297
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6298
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7800(Lcom/google/firestore/v1/StructuredQuery;Ljava/lang/Iterable;)V

    .line 6299
    return-object p0
.end method

.method public addAllOrderBy(Ljava/lang/Iterable;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;)",
            "Lcom/google/firestore/v1/StructuredQuery$Builder;"
        }
    .end annotation

    .line 6648
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/StructuredQuery$Order;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6649
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8700(Lcom/google/firestore/v1/StructuredQuery;Ljava/lang/Iterable;)V

    .line 6650
    return-object p0
.end method

.method public addFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    .line 6283
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6284
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 6285
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 6284
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$7700(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    .line 6286
    return-object p0
.end method

.method public addFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 6257
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6258
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$7700(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    .line 6259
    return-object p0
.end method

.method public addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    .line 6270
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6271
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$7600(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    .line 6272
    return-object p0
.end method

.method public addFrom(Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 6244
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6245
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7600(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    .line 6246
    return-object p0
.end method

.method public addOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    .line 6621
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6622
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 6623
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 6622
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$8600(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V

    .line 6624
    return-object p0
.end method

.method public addOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 6569
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6570
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$8600(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V

    .line 6571
    return-object p0
.end method

.method public addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    .line 6595
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6596
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Order;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$8500(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Order;)V

    .line 6597
    return-object p0
.end method

.method public addOrderBy(Lcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 6543
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6544
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8500(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Order;)V

    .line 6545
    return-object p0
.end method

.method public clearEndAt()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6840
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6841
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$9500(Lcom/google/firestore/v1/StructuredQuery;)V

    .line 6842
    return-object p0
.end method

.method public clearFrom()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6309
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6310
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$7900(Lcom/google/firestore/v1/StructuredQuery;)V

    .line 6311
    return-object p0
.end method

.method public clearLimit()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6969
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6970
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$10000(Lcom/google/firestore/v1/StructuredQuery;)V

    .line 6971
    return-object p0
.end method

.method public clearOffset()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6886
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6887
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$9700(Lcom/google/firestore/v1/StructuredQuery;)V

    .line 6888
    return-object p0
.end method

.method public clearOrderBy()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6673
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6674
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$8800(Lcom/google/firestore/v1/StructuredQuery;)V

    .line 6675
    return-object p0
.end method

.method public clearSelect()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6171
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6172
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$7400(Lcom/google/firestore/v1/StructuredQuery;)V

    .line 6173
    return-object p0
.end method

.method public clearStartAt()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6769
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6770
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$9200(Lcom/google/firestore/v1/StructuredQuery;)V

    .line 6771
    return-object p0
.end method

.method public clearWhere()Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1

    .line 6392
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6393
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery;->access$8300(Lcom/google/firestore/v1/StructuredQuery;)V

    .line 6394
    return-object p0
.end method

.method public getEndAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 6794
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getEndAt()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getFrom(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;
    .locals 1
    .param p1, "index"    # I

    .line 6207
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->getFrom(I)Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    move-result-object v0

    return-object v0
.end method

.method public getFromCount()I
    .locals 1

    .line 6197
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getFromCount()I

    move-result v0

    return v0
.end method

.method public getFromList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;",
            ">;"
        }
    .end annotation

    .line 6185
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 6186
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getFromList()Ljava/util/List;

    move-result-object v0

    .line 6185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLimit()Lcom/google/protobuf/Int32Value;
    .locals 1

    .line 6915
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getLimit()Lcom/google/protobuf/Int32Value;

    move-result-object v0

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .line 6857
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getOffset()I

    move-result v0

    return v0
.end method

.method public getOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Order;
    .locals 1
    .param p1, "index"    # I

    .line 6467
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->getOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Order;

    move-result-object v0

    return-object v0
.end method

.method public getOrderByCount()I
    .locals 1

    .line 6444
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getOrderByCount()I

    move-result v0

    return v0
.end method

.method public getOrderByList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/StructuredQuery$Order;",
            ">;"
        }
    .end annotation

    .line 6419
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 6420
    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getOrderByList()Ljava/util/List;

    move-result-object v0

    .line 6419
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSelect()Lcom/google/firestore/v1/StructuredQuery$Projection;
    .locals 1

    .line 6125
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getSelect()Lcom/google/firestore/v1/StructuredQuery$Projection;

    move-result-object v0

    return-object v0
.end method

.method public getStartAt()Lcom/google/firestore/v1/Cursor;
    .locals 1

    .line 6723
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getStartAt()Lcom/google/firestore/v1/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getWhere()Lcom/google/firestore/v1/StructuredQuery$Filter;
    .locals 1

    .line 6346
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->getWhere()Lcom/google/firestore/v1/StructuredQuery$Filter;

    move-result-object v0

    return-object v0
.end method

.method public hasEndAt()Z
    .locals 1

    .line 6783
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasEndAt()Z

    move-result v0

    return v0
.end method

.method public hasLimit()Z
    .locals 1

    .line 6902
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasLimit()Z

    move-result v0

    return v0
.end method

.method public hasSelect()Z
    .locals 1

    .line 6114
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasSelect()Z

    move-result v0

    return v0
.end method

.method public hasStartAt()Z
    .locals 1

    .line 6712
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasStartAt()Z

    move-result v0

    return v0
.end method

.method public hasWhere()Z
    .locals 1

    .line 6335
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery;->hasWhere()Z

    move-result v0

    return v0
.end method

.method public mergeEndAt(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 6829
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6830
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9400(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    .line 6831
    return-object p0
.end method

.method public mergeLimit(Lcom/google/protobuf/Int32Value;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 6956
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6957
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9900(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V

    .line 6958
    return-object p0
.end method

.method public mergeSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 6160
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6161
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    .line 6162
    return-object p0
.end method

.method public mergeStartAt(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 6758
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6759
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    .line 6760
    return-object p0
.end method

.method public mergeWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 6381
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6382
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    .line 6383
    return-object p0
.end method

.method public removeFrom(I)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 6321
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6322
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8000(Lcom/google/firestore/v1/StructuredQuery;I)V

    .line 6323
    return-object p0
.end method

.method public removeOrderBy(I)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 6698
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6699
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8900(Lcom/google/firestore/v1/StructuredQuery;I)V

    .line 6700
    return-object p0
.end method

.method public setEndAt(Lcom/google/firestore/v1/Cursor$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Cursor$Builder;

    .line 6817
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6818
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Cursor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$9300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    .line 6819
    return-object p0
.end method

.method public setEndAt(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 6804
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6805
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9300(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    .line 6806
    return-object p0
.end method

.method public setFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;

    .line 6231
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6232
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 6233
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 6232
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$7500(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    .line 6234
    return-object p0
.end method

.method public setFrom(ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$CollectionSelector;

    .line 6218
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6219
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$7500(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$CollectionSelector;)V

    .line 6220
    return-object p0
.end method

.method public setLimit(Lcom/google/protobuf/Int32Value$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Int32Value$Builder;

    .line 6942
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6943
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/protobuf/Int32Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Int32Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$9800(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V

    .line 6944
    return-object p0
.end method

.method public setLimit(Lcom/google/protobuf/Int32Value;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Int32Value;

    .line 6927
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6928
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9800(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/protobuf/Int32Value;)V

    .line 6929
    return-object p0
.end method

.method public setOffset(I)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 6871
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6872
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9600(Lcom/google/firestore/v1/StructuredQuery;I)V

    .line 6873
    return-object p0
.end method

.method public setOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$Order$Builder;

    .line 6517
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6518
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    .line 6519
    invoke-virtual {p2}, Lcom/google/firestore/v1/StructuredQuery$Order$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 6518
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$8400(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V

    .line 6520
    return-object p0
.end method

.method public setOrderBy(ILcom/google/firestore/v1/StructuredQuery$Order;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/StructuredQuery$Order;

    .line 6491
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6492
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/StructuredQuery;->access$8400(Lcom/google/firestore/v1/StructuredQuery;ILcom/google/firestore/v1/StructuredQuery$Order;)V

    .line 6493
    return-object p0
.end method

.method public setSelect(Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;

    .line 6148
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6149
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Projection$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Projection;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$7200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    .line 6150
    return-object p0
.end method

.method public setSelect(Lcom/google/firestore/v1/StructuredQuery$Projection;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Projection;

    .line 6135
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6136
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$7200(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Projection;)V

    .line 6137
    return-object p0
.end method

.method public setStartAt(Lcom/google/firestore/v1/Cursor$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Cursor$Builder;

    .line 6746
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6747
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Cursor$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Cursor;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$9000(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    .line 6748
    return-object p0
.end method

.method public setStartAt(Lcom/google/firestore/v1/Cursor;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Cursor;

    .line 6733
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6734
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$9000(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/Cursor;)V

    .line 6735
    return-object p0
.end method

.method public setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;

    .line 6369
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6370
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Filter$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$Filter;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery;->access$8100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    .line 6371
    return-object p0
.end method

.method public setWhere(Lcom/google/firestore/v1/StructuredQuery$Filter;)Lcom/google/firestore/v1/StructuredQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$Filter;

    .line 6356
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$Builder;->copyOnWrite()V

    .line 6357
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery;->access$8100(Lcom/google/firestore/v1/StructuredQuery;Lcom/google/firestore/v1/StructuredQuery$Filter;)V

    .line 6358
    return-object p0
.end method
