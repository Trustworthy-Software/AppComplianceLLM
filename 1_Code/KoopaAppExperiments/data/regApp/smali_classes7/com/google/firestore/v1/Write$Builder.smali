.class public final Lcom/google/firestore/v1/Write$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Write.java"

# interfaces
.implements Lcom/google/firestore/v1/WriteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Write;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Write;",
        "Lcom/google/firestore/v1/Write$Builder;",
        ">;",
        "Lcom/google/firestore/v1/WriteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 845
    invoke-static {}, Lcom/google/firestore/v1/Write;->access$000()Lcom/google/firestore/v1/Write;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 846
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Write$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Write$1;

    .line 838
    invoke-direct {p0}, Lcom/google/firestore/v1/Write$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllUpdateTransforms(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;)",
            "Lcom/google/firestore/v1/Write$Builder;"
        }
    .end annotation

    .line 1455
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/DocumentTransform$FieldTransform;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1456
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$2000(Lcom/google/firestore/v1/Write;Ljava/lang/Iterable;)V

    .line 1457
    return-object p0
.end method

.method public addUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    .line 1438
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1439
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    .line 1440
    invoke-virtual {p2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1439
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Write;->access$1900(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1441
    return-object p0
.end method

.method public addUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1406
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1407
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Write;->access$1900(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1408
    return-object p0
.end method

.method public addUpdateTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    .line 1422
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1423
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$1800(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1424
    return-object p0
.end method

.method public addUpdateTransforms(Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1390
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1391
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1800(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1392
    return-object p0
.end method

.method public clearCurrentDocument()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1562
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1563
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$2500(Lcom/google/firestore/v1/Write;)V

    .line 1564
    return-object p0
.end method

.method public clearDelete()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 999
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1000
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$600(Lcom/google/firestore/v1/Write;)V

    .line 1001
    return-object p0
.end method

.method public clearOperation()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 855
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 856
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$100(Lcom/google/firestore/v1/Write;)V

    .line 857
    return-object p0
.end method

.method public clearTransform()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1180
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1181
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$1300(Lcom/google/firestore/v1/Write;)V

    .line 1182
    return-object p0
.end method

.method public clearUpdate()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 928
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 929
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$400(Lcom/google/firestore/v1/Write;)V

    .line 930
    return-object p0
.end method

.method public clearUpdateMask()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1299
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1300
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$1600(Lcom/google/firestore/v1/Write;)V

    .line 1301
    return-object p0
.end method

.method public clearUpdateTransforms()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1470
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1471
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$2100(Lcom/google/firestore/v1/Write;)V

    .line 1472
    return-object p0
.end method

.method public clearVerify()Lcom/google/firestore/v1/Write$Builder;
    .locals 1

    .line 1091
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1092
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0}, Lcom/google/firestore/v1/Write;->access$900(Lcom/google/firestore/v1/Write;)V

    .line 1093
    return-object p0
.end method

.method public getCurrentDocument()Lcom/google/firestore/v1/Precondition;
    .locals 1

    .line 1512
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getCurrentDocument()Lcom/google/firestore/v1/Precondition;

    move-result-object v0

    return-object v0
.end method

.method public getDelete()Ljava/lang/String;
    .locals 1

    .line 957
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getDelete()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeleteBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getDeleteBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getOperationCase()Lcom/google/firestore/v1/Write$OperationCase;
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getOperationCase()Lcom/google/firestore/v1/Write$OperationCase;

    move-result-object v0

    return-object v0
.end method

.method public getTransform()Lcom/google/firestore/v1/DocumentTransform;
    .locals 1

    .line 1133
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getTransform()Lcom/google/firestore/v1/DocumentTransform;

    move-result-object v0

    return-object v0
.end method

.method public getUpdate()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getUpdate()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getUpdateMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTransforms(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;
    .locals 1
    .param p1, "index"    # I

    .line 1344
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Write;->getUpdateTransforms(I)Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateTransformsCount()I
    .locals 1

    .line 1331
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getUpdateTransformsCount()I

    move-result v0

    return v0
.end method

.method public getUpdateTransformsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/DocumentTransform$FieldTransform;",
            ">;"
        }
    .end annotation

    .line 1316
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    .line 1317
    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getUpdateTransformsList()Ljava/util/List;

    move-result-object v0

    .line 1316
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerify()Ljava/lang/String;
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getVerify()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVerifyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1061
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->getVerifyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasCurrentDocument()Z
    .locals 1

    .line 1500
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasCurrentDocument()Z

    move-result v0

    return v0
.end method

.method public hasDelete()Z
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasDelete()Z

    move-result v0

    return v0
.end method

.method public hasTransform()Z
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasTransform()Z

    move-result v0

    return v0
.end method

.method public hasUpdate()Z
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasUpdate()Z

    move-result v0

    return v0
.end method

.method public hasUpdateMask()Z
    .locals 1

    .line 1202
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasUpdateMask()Z

    move-result v0

    return v0
.end method

.method public hasVerify()Z
    .locals 1

    .line 1032
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Write;->hasVerify()Z

    move-result v0

    return v0
.end method

.method public mergeCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 1550
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1551
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$2400(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V

    .line 1552
    return-object p0
.end method

.method public mergeTransform(Lcom/google/firestore/v1/DocumentTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentTransform;

    .line 1168
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1169
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform;)V

    .line 1170
    return-object p0
.end method

.method public mergeUpdate(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 916
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 917
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V

    .line 918
    return-object p0
.end method

.method public mergeUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 1280
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1281
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1500(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1282
    return-object p0
.end method

.method public removeUpdateTransforms(I)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 1485
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1486
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$2200(Lcom/google/firestore/v1/Write;I)V

    .line 1487
    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Precondition$Builder;

    .line 1537
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1538
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Precondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Precondition;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$2300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V

    .line 1539
    return-object p0
.end method

.method public setCurrentDocument(Lcom/google/firestore/v1/Precondition;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Precondition;

    .line 1523
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1524
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$2300(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Precondition;)V

    .line 1525
    return-object p0
.end method

.method public setDelete(Ljava/lang/String;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 985
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 986
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$500(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V

    .line 987
    return-object p0
.end method

.method public setDeleteBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1015
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1016
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$700(Lcom/google/firestore/v1/Write;Lcom/google/protobuf/ByteString;)V

    .line 1017
    return-object p0
.end method

.method public setTransform(Lcom/google/firestore/v1/DocumentTransform$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$Builder;

    .line 1156
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1157
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$1100(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform;)V

    .line 1158
    return-object p0
.end method

.method public setTransform(Lcom/google/firestore/v1/DocumentTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentTransform;

    .line 1143
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1144
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1100(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentTransform;)V

    .line 1145
    return-object p0
.end method

.method public setUpdate(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 904
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 905
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V

    .line 906
    return-object p0
.end method

.method public setUpdate(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 891
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 892
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$200(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/Document;)V

    .line 893
    return-object p0
.end method

.method public setUpdateMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 1260
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1261
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/Write;->access$1400(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1262
    return-object p0
.end method

.method public setUpdateMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 1239
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1240
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1400(Lcom/google/firestore/v1/Write;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1241
    return-object p0
.end method

.method public setUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;)Lcom/google/firestore/v1/Write$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;

    .line 1374
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1375
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    .line 1376
    invoke-virtual {p2}, Lcom/google/firestore/v1/DocumentTransform$FieldTransform$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1375
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/Write;->access$1700(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1377
    return-object p0
.end method

.method public setUpdateTransforms(ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/DocumentTransform$FieldTransform;

    .line 1358
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1359
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Write;->access$1700(Lcom/google/firestore/v1/Write;ILcom/google/firestore/v1/DocumentTransform$FieldTransform;)V

    .line 1360
    return-object p0
.end method

.method public setVerify(Ljava/lang/String;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1076
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1077
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$800(Lcom/google/firestore/v1/Write;Ljava/lang/String;)V

    .line 1078
    return-object p0
.end method

.method public setVerifyBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Write$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1108
    invoke-virtual {p0}, Lcom/google/firestore/v1/Write$Builder;->copyOnWrite()V

    .line 1109
    iget-object v0, p0, Lcom/google/firestore/v1/Write$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Write;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Write;->access$1000(Lcom/google/firestore/v1/Write;Lcom/google/protobuf/ByteString;)V

    .line 1110
    return-object p0
.end method
