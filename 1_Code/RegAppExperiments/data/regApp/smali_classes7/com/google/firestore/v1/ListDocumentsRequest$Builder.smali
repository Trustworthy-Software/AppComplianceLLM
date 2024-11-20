.class public final Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ListDocumentsRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/ListDocumentsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/ListDocumentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/ListDocumentsRequest;",
        "Lcom/google/firestore/v1/ListDocumentsRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/ListDocumentsRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 757
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$000()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 758
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/ListDocumentsRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/ListDocumentsRequest$1;

    .line 750
    invoke-direct {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCollectionId()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 920
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 921
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$600(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 922
    return-object p0
.end method

.method public clearConsistencySelector()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 768
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$100(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 769
    return-object p0
.end method

.method public clearMask()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1197
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1198
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1800(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1199
    return-object p0
.end method

.method public clearOrderBy()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1099
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1100
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1400(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1101
    return-object p0
.end method

.method public clearPageSize()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 976
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 977
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$900(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 978
    return-object p0
.end method

.method public clearPageToken()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1030
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1031
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1100(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1032
    return-object p0
.end method

.method public clearParent()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 842
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 843
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$300(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 844
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1327
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1328
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2300(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1329
    return-object p0
.end method

.method public clearShowMissing()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1382
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1383
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2500(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1384
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1

    .line 1249
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1250
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2000(Lcom/google/firestore/v1/ListDocumentsRequest;)V

    .line 1251
    return-object p0
.end method

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getCollectionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCollectionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 892
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getCollectionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getConsistencySelectorCase()Lcom/google/firestore/v1/ListDocumentsRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 1143
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getOrderBy()Ljava/lang/String;
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getOrderBy()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrderByBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getOrderByBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getPageSize()I

    move-result v0

    return v0
.end method

.method public getPageToken()Ljava/lang/String;
    .locals 1

    .line 991
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getPageToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPageTokenBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getPageTokenBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Ljava/lang/String;
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 806
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getParentBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getShowMissing()Z
    .locals 1

    .line 1347
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getShowMissing()Z

    move-result v0

    return v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasMask()Z
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->hasMask()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 1264
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/ListDocumentsRequest;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 1184
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1185
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1700(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1186
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1314
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1315
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2200(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1316
    return-object p0
.end method

.method public setCollectionId(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 906
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 907
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$500(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V

    .line 908
    return-object p0
.end method

.method public setCollectionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 936
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 937
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$700(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 938
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 1170
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1171
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1600(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1172
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 1155
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1156
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1600(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 1157
    return-object p0
.end method

.method public setOrderBy(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1086
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1087
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1300(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V

    .line 1088
    return-object p0
.end method

.method public setOrderByBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1114
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1115
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1500(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 1116
    return-object p0
.end method

.method public setPageSize(I)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 963
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 964
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$800(Lcom/google/firestore/v1/ListDocumentsRequest;I)V

    .line 965
    return-object p0
.end method

.method public setPageToken(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1017
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1018
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1000(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V

    .line 1019
    return-object p0
.end method

.method public setPageTokenBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1045
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1046
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1200(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 1047
    return-object p0
.end method

.method public setParent(Ljava/lang/String;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 824
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 825
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$200(Lcom/google/firestore/v1/ListDocumentsRequest;Ljava/lang/String;)V

    .line 826
    return-object p0
.end method

.method public setParentBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 862
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 863
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$400(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 864
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1301
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1302
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2100(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1303
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1287
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1288
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2100(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1289
    return-object p0
.end method

.method public setShowMissing(Z)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Z

    .line 1364
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1365
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$2400(Lcom/google/firestore/v1/ListDocumentsRequest;Z)V

    .line 1366
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/ListDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1236
    invoke-virtual {p0}, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->copyOnWrite()V

    .line 1237
    iget-object v0, p0, Lcom/google/firestore/v1/ListDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/ListDocumentsRequest;->access$1900(Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 1238
    return-object p0
.end method
