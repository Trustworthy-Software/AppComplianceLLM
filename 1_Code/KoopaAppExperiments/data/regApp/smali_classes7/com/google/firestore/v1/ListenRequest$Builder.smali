.class public final Lcom/google/firestore/v1/ListenRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListenRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/ListenRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListenRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ListenRequest;",
        "Lcom/google/firestore/v1/ListenRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListenRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 468
    invoke-static {}, Lcom/google/firestore/v1/ListenRequest;->access$000()Lcom/google/firestore/v1/ListenRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 469
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ListenRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ListenRequest$1;

    .line 461
    invoke-direct {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAddTarget()Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1

    .line 625
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 626
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenRequest;->access$700(Lcom/google/firestore/v1/ListenRequest;)V

    .line 627
    return-object p0
.end method

.method public clearDatabase()Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 538
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenRequest;->access$300(Lcom/google/firestore/v1/ListenRequest;)V

    .line 539
    return-object p0
.end method

.method public clearLabels()Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1

    .line 703
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 704
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenRequest;->access$1000(Lcom/google/firestore/v1/ListenRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 705
    return-object p0
.end method

.method public clearRemoveTarget()Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 678
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenRequest;->access$900(Lcom/google/firestore/v1/ListenRequest;)V

    .line 679
    return-object p0
.end method

.method public clearTargetChange()Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1

    .line 478
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 479
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenRequest;->access$100(Lcom/google/firestore/v1/ListenRequest;)V

    .line 480
    return-object p0
.end method

.method public containsLabels(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 698
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 699
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v1}, Lcom/google/firestore/v1/ListenRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getAddTarget()Lcom/google/firestore/v1/Target;
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->getAddTarget()Lcom/google/firestore/v1/Target;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->getDatabaseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLabels()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsCount()I
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getLabelsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    .line 740
    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v0

    .line 739
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getLabelsOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 754
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 755
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/ListenRequest;

    .line 756
    invoke-virtual {v1}, Lcom/google/firestore/v1/ListenRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 757
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getLabelsOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 770
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 771
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/ListenRequest;

    .line 772
    invoke-virtual {v1}, Lcom/google/firestore/v1/ListenRequest;->getLabelsMap()Ljava/util/Map;

    move-result-object v1

    .line 773
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 776
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    .line 774
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getRemoveTarget()I
    .locals 1

    .line 652
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->getRemoveTarget()I

    move-result v0

    return v0
.end method

.method public getTargetChangeCase()Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->getTargetChangeCase()Lcom/google/firestore/v1/ListenRequest$TargetChangeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAddTarget()Z
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->hasAddTarget()Z

    move-result v0

    return v0
.end method

.method public hasRemoveTarget()Z
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListenRequest;->hasRemoveTarget()Z

    move-result v0

    return v0
.end method

.method public mergeAddTarget(Lcom/google/firestore/v1/Target;)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target;

    .line 613
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenRequest;->access$600(Lcom/google/firestore/v1/ListenRequest;Lcom/google/firestore/v1/Target;)V

    .line 615
    return-object p0
.end method

.method public putAllLabels(Ljava/util/Map;)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firestore/v1/ListenRequest$Builder;"
        }
    .end annotation

    .line 803
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 804
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListenRequest;->access$1000(Lcom/google/firestore/v1/ListenRequest;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 805
    return-object p0
.end method

.method public putLabels(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 788
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 789
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 790
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 791
    iget-object v2, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v2}, Lcom/google/firestore/v1/ListenRequest;->access$1000(Lcom/google/firestore/v1/ListenRequest;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    return-object p0
.end method

.method public removeLabels(Ljava/lang/String;)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 717
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 718
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 719
    iget-object v1, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v1}, Lcom/google/firestore/v1/ListenRequest;->access$1000(Lcom/google/firestore/v1/ListenRequest;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    return-object p0
.end method

.method public setAddTarget(Lcom/google/firestore/v1/Target$Builder;)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Target$Builder;

    .line 601
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 602
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Target$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Target;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListenRequest;->access$500(Lcom/google/firestore/v1/ListenRequest;Lcom/google/firestore/v1/Target;)V

    .line 603
    return-object p0
.end method

.method public setAddTarget(Lcom/google/firestore/v1/Target;)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Target;

    .line 588
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 589
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenRequest;->access$500(Lcom/google/firestore/v1/ListenRequest;Lcom/google/firestore/v1/Target;)V

    .line 590
    return-object p0
.end method

.method public setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 523
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 524
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenRequest;->access$200(Lcom/google/firestore/v1/ListenRequest;Ljava/lang/String;)V

    .line 525
    return-object p0
.end method

.method public setDatabaseBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 553
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 554
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenRequest;->access$400(Lcom/google/firestore/v1/ListenRequest;Lcom/google/protobuf/ByteString;)V

    .line 555
    return-object p0
.end method

.method public setRemoveTarget(I)Lcom/google/firestore/v1/ListenRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 664
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListenRequest$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Lcom/google/firestore/v1/ListenRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListenRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListenRequest;->access$800(Lcom/google/firestore/v1/ListenRequest;I)V

    .line 666
    return-object p0
.end method
