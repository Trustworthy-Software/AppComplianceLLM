.class public final Lcom/google/firestore/v1/DocumentTransform$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentTransform.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentTransformOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DocumentTransform;",
        "Lcom/google/firestore/v1/DocumentTransform$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentTransformOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2453
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform;->access$2400()Lcom/google/firestore/v1/DocumentTransform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2454
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DocumentTransform$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/DocumentTransform$1;

    .line 2446
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFieldTransforms(Ljava/lang/Iterable;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;)",
            "Lcom/google/firestore/v1/DocumentTransform$Builder;"
        }
    .end annotation

    .line 2667
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/DocumentTransform$FieldTransform;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2668
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform;->access$3100(Lcom/google/firestore/v1/DocumentTransform;Ljava/lang/Iterable;)V

    .line 2669
    return-object p0
.end method

.method public addFieldTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    .line 2651
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2652
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    .line 2653
    invoke-virtual {p2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2652
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/DocumentTransform;->access$3000(Lcom/google/firestore/v1/DocumentTransform;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 2654
    return-object p0
.end method

.method public addFieldTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2621
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2622
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/DocumentTransform;->access$3000(Lcom/google/firestore/v1/DocumentTransform;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 2623
    return-object p0
.end method

.method public addFieldTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    .line 2636
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2637
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentTransform;->access$2900(Lcom/google/firestore/v1/DocumentTransform;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 2638
    return-object p0
.end method

.method public addFieldTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2606
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2607
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform;->access$2900(Lcom/google/firestore/v1/DocumentTransform;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 2608
    return-object p0
.end method

.method public clearDocument()Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1

    .line 2506
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2507
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform;->access$2600(Lcom/google/firestore/v1/DocumentTransform;)V

    .line 2508
    return-object p0
.end method

.method public clearFieldTransforms()Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1

    .line 2681
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2682
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform;->access$3200(Lcom/google/firestore/v1/DocumentTransform;)V

    .line 2683
    return-object p0
.end method

.method public getDocument()Ljava/lang/String;
    .locals 1

    .line 2467
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform;->getDocument()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2480
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform;->getDocumentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFieldTransforms(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    .locals 1
    .param p1, "index"    # I

    .line 2563
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentTransform;->getFieldTransforms(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    move-result-object v0

    return-object v0
.end method

.method public getFieldTransformsCount()I
    .locals 1

    .line 2551
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform;->getFieldTransformsCount()I

    move-result v0

    return v0
.end method

.method public getFieldTransformsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation

    .line 2537
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    .line 2538
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform;->getFieldTransformsList()Ljava/util/List;

    move-result-object v0

    .line 2537
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFieldTransforms(I)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 2695
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2696
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform;->access$3300(Lcom/google/firestore/v1/DocumentTransform;I)V

    .line 2697
    return-object p0
.end method

.method public setDocument(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 2493
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2494
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform;->access$2500(Lcom/google/firestore/v1/DocumentTransform;Ljava/lang/String;)V

    .line 2495
    return-object p0
.end method

.method public setDocumentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 2521
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2522
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform;->access$2700(Lcom/google/firestore/v1/DocumentTransform;Lcom/google/protobuf/ByteString;)V

    .line 2523
    return-object p0
.end method

.method public setFieldTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    .line 2591
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2592
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    .line 2593
    invoke-virtual {p2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2592
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/DocumentTransform;->access$2800(Lcom/google/firestore/v1/DocumentTransform;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 2594
    return-object p0
.end method

.method public setFieldTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/DocumentTransform$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 2576
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$Builder;->copyOnWrite()V

    .line 2577
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/DocumentTransform;->access$2800(Lcom/google/firestore/v1/DocumentTransform;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 2578
    return-object p0
.end method
