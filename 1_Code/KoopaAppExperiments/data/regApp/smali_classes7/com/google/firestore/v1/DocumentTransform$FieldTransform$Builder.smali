.class public final Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentTransform.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
        "Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentTransform$FieldTransformOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1257
    invoke-static {}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$000()Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1258
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DocumentTransform$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/DocumentTransform$1;

    .line 1250
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearAppendMissingElements()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1930
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1931
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1900(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1932
    return-object p0
.end method

.method public clearFieldPath()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1326
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1327
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$300(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1328
    return-object p0
.end method

.method public clearIncrement()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1540
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1541
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1000(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1542
    return-object p0
.end method

.method public clearMaximum()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1672
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1673
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1300(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1674
    return-object p0
.end method

.method public clearMinimum()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1804
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1805
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1600(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1806
    return-object p0
.end method

.method public clearRemoveAllFromArray()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 2044
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 2045
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$2200(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 2046
    return-object p0
.end method

.method public clearSetToServerValue()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1420
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1421
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$700(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1422
    return-object p0
.end method

.method public clearTransformType()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1

    .line 1267
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1268
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$100(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1269
    return-object p0
.end method

.method public getAppendMissingElements()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 1847
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getAppendMissingElements()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPath()Ljava/lang/String;
    .locals 1

    .line 1284
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getFieldPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldPathBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1298
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getFieldPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getIncrement()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1461
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getIncrement()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getMaximum()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1585
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getMaximum()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getMinimum()Lcom/google/firestore/v1/Value;
    .locals 1

    .line 1717
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getMinimum()Lcom/google/firestore/v1/Value;

    move-result-object v0

    return-object v0
.end method

.method public getRemoveAllFromArray()Lcom/google/firestore/v1/ArrayValue;
    .locals 1

    .line 1969
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getRemoveAllFromArray()Lcom/google/firestore/v1/ArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public getSetToServerValue()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;
    .locals 1

    .line 1395
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getSetToServerValue()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    move-result-object v0

    return-object v0
.end method

.method public getSetToServerValueValue()I
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getSetToServerValueValue()I

    move-result v0

    return v0
.end method

.method public getTransformTypeCase()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;
    .locals 1

    .line 1263
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->getTransformTypeCase()Lcom/google/firestore/v1/DocumentTransform$FieldTransform$TransformTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasAppendMissingElements()Z
    .locals 1

    .line 1827
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasAppendMissingElements()Z

    move-result v0

    return v0
.end method

.method public hasIncrement()Z
    .locals 1

    .line 1442
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasIncrement()Z

    move-result v0

    return v0
.end method

.method public hasMaximum()Z
    .locals 1

    .line 1564
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasMaximum()Z

    move-result v0

    return v0
.end method

.method public hasMinimum()Z
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasMinimum()Z

    move-result v0

    return v0
.end method

.method public hasRemoveAllFromArray()Z
    .locals 1

    .line 1951
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasRemoveAllFromArray()Z

    move-result v0

    return v0
.end method

.method public hasSetToServerValue()Z
    .locals 1

    .line 1357
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->hasSetToServerValue()Z

    move-result v0

    return v0
.end method

.method public mergeAppendMissingElements(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ArrayValue;

    .line 1909
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1910
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1800(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    .line 1911
    return-object p0
.end method

.method public mergeIncrement(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 1520
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1521
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$900(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    .line 1522
    return-object p0
.end method

.method public mergeMaximum(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 1650
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1651
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1200(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    .line 1652
    return-object p0
.end method

.method public mergeMinimum(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 1782
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1783
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1500(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    .line 1784
    return-object p0
.end method

.method public mergeRemoveAllFromArray(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ArrayValue;

    .line 2025
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 2026
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$2100(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    .line 2027
    return-object p0
.end method

.method public setAppendMissingElements(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/ArrayValue$Builder;

    .line 1888
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1889
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1700(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    .line 1890
    return-object p0
.end method

.method public setAppendMissingElements(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ArrayValue;

    .line 1866
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1867
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1700(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    .line 1868
    return-object p0
.end method

.method public setFieldPath(Ljava/lang/String;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1312
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1313
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$200(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Ljava/lang/String;)V

    .line 1314
    return-object p0
.end method

.method public setFieldPathBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1342
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1343
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$400(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/protobuf/ByteString;)V

    .line 1344
    return-object p0
.end method

.method public setIncrement(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 1500
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1501
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$800(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    .line 1502
    return-object p0
.end method

.method public setIncrement(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 1479
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1480
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$800(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    .line 1481
    return-object p0
.end method

.method public setMaximum(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 1628
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1629
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1100(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    .line 1630
    return-object p0
.end method

.method public setMaximum(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 1605
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1606
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1100(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    .line 1607
    return-object p0
.end method

.method public setMinimum(Lcom/google/firestore/v1/Value$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Value$Builder;

    .line 1760
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1761
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1400(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    .line 1762
    return-object p0
.end method

.method public setMinimum(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Value;

    .line 1737
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1738
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$1400(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/Value;)V

    .line 1739
    return-object p0
.end method

.method public setRemoveAllFromArray(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/ArrayValue$Builder;

    .line 2006
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 2007
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-virtual {p1}, Lcom/google/firestore/v1/ArrayValue$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/ArrayValue;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$2000(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    .line 2008
    return-object p0
.end method

.method public setRemoveAllFromArray(Lcom/google/firestore/v1/ArrayValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/ArrayValue;

    .line 1986
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1987
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$2000(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/ArrayValue;)V

    .line 1988
    return-object p0
.end method

.method public setSetToServerValue(Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;

    .line 1407
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1408
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$600(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;Lcom/google/firestore/v1/DocumentTransform$FieldTransform$ServerValue;)V

    .line 1409
    return-object p0
.end method

.method public setSetToServerValueValue(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 1381
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->copyOnWrite()V

    .line 1382
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;->access$500(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;I)V

    .line 1383
    return-object p0
.end method
