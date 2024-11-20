.class public final Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BatchGetDocumentsRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/BatchGetDocumentsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/BatchGetDocumentsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/BatchGetDocumentsRequest;",
        "Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BatchGetDocumentsRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 681
    invoke-static {}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$000()Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 682
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/BatchGetDocumentsRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest$1;

    .line 674
    invoke-direct {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDocuments(Ljava/lang/Iterable;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;"
        }
    .end annotation

    .line 887
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 888
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$700(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Ljava/lang/Iterable;)V

    .line 889
    return-object p0
.end method

.method public addDocuments(Ljava/lang/String;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 869
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 870
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$600(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Ljava/lang/String;)V

    .line 871
    return-object p0
.end method

.method public addDocumentsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 921
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 922
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$900(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 923
    return-object p0
.end method

.method public clearConsistencySelector()Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 692
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$100(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V

    .line 693
    return-object p0
.end method

.method public clearDatabase()Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 751
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$300(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V

    .line 752
    return-object p0
.end method

.method public clearDocuments()Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1

    .line 903
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 904
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$800(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V

    .line 905
    return-object p0
.end method

.method public clearMask()Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1

    .line 1004
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1005
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1200(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V

    .line 1006
    return-object p0
.end method

.method public clearNewTransaction()Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1

    .line 1146
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1147
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1700(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V

    .line 1148
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1

    .line 1224
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1225
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$2000(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V

    .line 1226
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1

    .line 1056
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1057
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1400(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)V

    .line 1058
    return-object p0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/BatchGetDocumentsRequest$ConsistencySelectorCase;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getConsistencySelectorCase()Lcom/google/firestore/v1/BatchGetDocumentsRequest$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDatabaseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDocuments(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 817
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDocuments(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 834
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDocumentsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsCount()I
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDocumentsCount()I

    move-result v0

    return v0
.end method

.method public getDocumentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    .line 786
    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDocumentsList()Ljava/util/List;

    move-result-object v0

    .line 785
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMask()Lcom/google/firestore/v1/DocumentMask;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getMask()Lcom/google/firestore/v1/DocumentMask;

    move-result-object v0

    return-object v0
.end method

.method public getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getNewTransaction()Lcom/google/firestore/v1/TransactionOptions;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasMask()Z
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->hasMask()Z

    move-result v0

    return v0
.end method

.method public hasNewTransaction()Z
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->hasNewTransaction()Z

    move-result v0

    return v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public hasTransaction()Z
    .locals 1

    .line 1019
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->hasTransaction()Z

    move-result v0

    return v0
.end method

.method public mergeMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 991
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 992
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1100(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 993
    return-object p0
.end method

.method public mergeNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 1131
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1132
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1600(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 1133
    return-object p0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1211
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1212
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1900(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1213
    return-object p0
.end method

.method public setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 736
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 737
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$200(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Ljava/lang/String;)V

    .line 738
    return-object p0
.end method

.method public setDatabaseBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 766
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 767
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$400(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 768
    return-object p0
.end method

.method public setDocuments(ILjava/lang/String;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 851
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 852
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$500(Lcom/google/firestore/v1/BatchGetDocumentsRequest;ILjava/lang/String;)V

    .line 853
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask$Builder;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DocumentMask$Builder;

    .line 977
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 978
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DocumentMask$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DocumentMask;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1000(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 979
    return-object p0
.end method

.method public setMask(Lcom/google/firestore/v1/DocumentMask;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DocumentMask;

    .line 962
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 963
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1000(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/DocumentMask;)V

    .line 964
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions$Builder;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/TransactionOptions$Builder;

    .line 1116
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1117
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {p1}, Lcom/google/firestore/v1/TransactionOptions$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/TransactionOptions;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1500(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 1118
    return-object p0
.end method

.method public setNewTransaction(Lcom/google/firestore/v1/TransactionOptions;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/TransactionOptions;

    .line 1100
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1101
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1500(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/TransactionOptions;)V

    .line 1102
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 1198
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1199
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1800(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1200
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 1184
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1185
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1800(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/Timestamp;)V

    .line 1186
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 1043
    invoke-virtual {p0}, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->copyOnWrite()V

    .line 1044
    iget-object v0, p0, Lcom/google/firestore/v1/BatchGetDocumentsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->access$1300(Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/protobuf/ByteString;)V

    .line 1045
    return-object p0
.end method
