.class public final Lcom/google/firestore/bundle/BundledQuery$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BundledQuery.java"

# interfaces
.implements Lcom/google/firestore/bundle/BundledQueryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/bundle/BundledQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/bundle/BundledQuery;",
        "Lcom/google/firestore/bundle/BundledQuery$Builder;",
        ">;",
        "Lcom/google/firestore/bundle/BundledQueryOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 430
    invoke-static {}, Lcom/google/firestore/bundle/BundledQuery;->access$000()Lcom/google/firestore/bundle/BundledQuery;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 431
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/bundle/BundledQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/bundle/BundledQuery$1;

    .line 423
    invoke-direct {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLimitType()Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery;->access$1000(Lcom/google/firestore/bundle/BundledQuery;)V

    .line 630
    return-object p0
.end method

.method public clearParent()Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1

    .line 495
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 496
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery;->access$300(Lcom/google/firestore/bundle/BundledQuery;)V

    .line 497
    return-object p0
.end method

.method public clearQueryType()Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 441
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery;->access$100(Lcom/google/firestore/bundle/BundledQuery;)V

    .line 442
    return-object p0
.end method

.method public clearStructuredQuery()Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1

    .line 582
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 583
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0}, Lcom/google/firestore/bundle/BundledQuery;->access$700(Lcom/google/firestore/bundle/BundledQuery;)V

    .line 584
    return-object p0
.end method

.method public getLimitType()Lcom/google/firestore/bundle/BundledQuery$LimitType;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->getLimitType()Lcom/google/firestore/bundle/BundledQuery$LimitType;

    move-result-object v0

    return-object v0
.end method

.method public getLimitTypeValue()I
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->getLimitTypeValue()I

    move-result v0

    return v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->getParentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQueryTypeCase()Lcom/google/firestore/bundle/BundledQuery$QueryTypeCase;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->getQueryTypeCase()Lcom/google/firestore/bundle/BundledQuery$QueryTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->getStructuredQuery()Lcom/google/firestore/v1/StructuredQuery;

    move-result-object v0

    return-object v0
.end method

.method public hasStructuredQuery()Z
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {v0}, Lcom/google/firestore/bundle/BundledQuery;->hasStructuredQuery()Z

    move-result v0

    return v0
.end method

.method public mergeStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 570
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 571
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledQuery;->access$600(Lcom/google/firestore/bundle/BundledQuery;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 572
    return-object p0
.end method

.method public setLimitType(Lcom/google/firestore/bundle/BundledQuery$LimitType;)Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/bundle/BundledQuery$LimitType;

    .line 619
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 620
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledQuery;->access$900(Lcom/google/firestore/bundle/BundledQuery;Lcom/google/firestore/bundle/BundledQuery$LimitType;)V

    .line 621
    return-object p0
.end method

.method public setLimitTypeValue(I)Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 601
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledQuery;->access$800(Lcom/google/firestore/bundle/BundledQuery;I)V

    .line 603
    return-object p0
.end method

.method public setParent(Ljava/lang/String;)Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 482
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 483
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledQuery;->access$200(Lcom/google/firestore/bundle/BundledQuery;Ljava/lang/String;)V

    .line 484
    return-object p0
.end method

.method public setParentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 510
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 511
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledQuery;->access$400(Lcom/google/firestore/bundle/BundledQuery;Lcom/google/protobuf/ByteString;)V

    .line 512
    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery$Builder;)Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$Builder;

    .line 558
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 559
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery;

    invoke-static {v0, v1}, Lcom/google/firestore/bundle/BundledQuery;->access$500(Lcom/google/firestore/bundle/BundledQuery;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 560
    return-object p0
.end method

.method public setStructuredQuery(Lcom/google/firestore/v1/StructuredQuery;)Lcom/google/firestore/bundle/BundledQuery$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery;

    .line 545
    invoke-virtual {p0}, Lcom/google/firestore/bundle/BundledQuery$Builder;->copyOnWrite()V

    .line 546
    iget-object v0, p0, Lcom/google/firestore/bundle/BundledQuery$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/bundle/BundledQuery;

    invoke-static {v0, p1}, Lcom/google/firestore/bundle/BundledQuery;->access$500(Lcom/google/firestore/bundle/BundledQuery;Lcom/google/firestore/v1/StructuredQuery;)V

    .line 547
    return-object p0
.end method
