.class public final Lcom/google/firestore/v1/Document$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Document.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Document;",
        "Lcom/google/firestore/v1/Document$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 555
    invoke-static {}, Lcom/google/firestore/v1/Document;->access$000()Lcom/google/firestore/v1/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 556
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Document$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Document$1;

    .line 548
    invoke-direct {p0}, Lcom/google/firestore/v1/Document$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCreateTime()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 969
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 970
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$700(Lcom/google/firestore/v1/Document;)V

    .line 971
    return-object p0
.end method

.method public clearFields()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 672
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 673
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 674
    return-object p0
.end method

.method public clearName()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 612
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 613
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$200(Lcom/google/firestore/v1/Document;)V

    .line 614
    return-object p0
.end method

.method public clearUpdateTime()Lcom/google/firestore/v1/Document$Builder;
    .locals 1

    .line 1058
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1059
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$1000(Lcom/google/firestore/v1/Document;)V

    .line 1060
    return-object p0
.end method

.method public containsFields(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 667
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 668
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCreateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 911
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getCreateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 715
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsCount()I
    .locals 1

    .line 636
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getFieldsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .line 744
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    .line 745
    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v0

    .line 744
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getFieldsOrDefault(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/google/firestore/v1/Value;

    .line 777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 778
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 779
    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    .line 780
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    return-object v2
.end method

.method public getFieldsOrThrow(Ljava/lang/String;)Lcom/google/firestore/v1/Value;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 811
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 812
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Document;

    .line 813
    invoke-virtual {v1}, Lcom/google/firestore/v1/Document;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    .line 814
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 817
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/Value;

    return-object v2

    .line 815
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1000
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->getUpdateTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasCreateTime()Z
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->hasCreateTime()Z

    move-result v0

    return v0
.end method

.method public hasUpdateTime()Z
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Document;->hasUpdateTime()Z

    move-result v0

    return v0
.end method

.method public mergeCreateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 955
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 956
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$600(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 957
    return-object p0
.end method

.method public mergeUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1044
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1045
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$900(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 1046
    return-object p0
.end method

.method public putAllFields(Ljava/util/Map;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firestore/v1/Value;",
            ">;)",
            "Lcom/google/firestore/v1/Document$Builder;"
        }
    .end annotation

    .line 880
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/firestore/v1/Value;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 881
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0}, Lcom/google/firestore/v1/Document;->access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 882
    return-object p0
.end method

.method public putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Document$Builder;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/google/firestore/v1/Value;

    .line 847
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 848
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 849
    .local v1, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 850
    iget-object v2, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v2, Lcom/google/firestore/v1/Document;

    invoke-static {v2}, Lcom/google/firestore/v1/Document;->access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    return-object p0
.end method

.method public removeFields(Ljava/lang/String;)Lcom/google/firestore/v1/Document$Builder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 704
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 705
    .local v0, "keyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 706
    iget-object v1, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v1}, Lcom/google/firestore/v1/Document;->access$400(Lcom/google/firestore/v1/Document;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    return-object p0
.end method

.method public setCreateTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Document$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 940
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 941
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Document;->access$500(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 942
    return-object p0
.end method

.method public setCreateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 924
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 925
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$500(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 926
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 598
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 599
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$100(Lcom/google/firestore/v1/Document;Ljava/lang/String;)V

    .line 600
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 628
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 629
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$300(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/ByteString;)V

    .line 630
    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Document$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1029
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1030
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Document;->access$800(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 1031
    return-object p0
.end method

.method public setUpdateTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/Document$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1013
    invoke-virtual {p0}, Lcom/google/firestore/v1/Document$Builder;->copyOnWrite()V

    .line 1014
    iget-object v0, p0, Lcom/google/firestore/v1/Document$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Document;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Document;->access$800(Lcom/google/firestore/v1/Document;Lcom/google/protobuf/Timestamp;)V

    .line 1015
    return-object p0
.end method
