.class public final Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;
.super Lio/grpc/stub/AbstractBlockingStub;
.source "FirestoreGrpc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/FirestoreGrpc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FirestoreBlockingStub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/grpc/stub/AbstractBlockingStub<",
        "Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V
    .locals 0
    .param p1, "channel"    # Lio/grpc/Channel;
    .param p2, "callOptions"    # Lio/grpc/CallOptions;

    .line 988
    invoke-direct {p0, p1, p2}, Lio/grpc/stub/AbstractBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    .line 989
    return-void
.end method

.method synthetic constructor <init>(Lio/grpc/Channel;Lio/grpc/CallOptions;Lcom/google/firestore/v1/FirestoreGrpc$1;)V
    .locals 0
    .param p1, "x0"    # Lio/grpc/Channel;
    .param p2, "x1"    # Lio/grpc/CallOptions;
    .param p3, "x2"    # Lcom/google/firestore/v1/FirestoreGrpc$1;

    .line 985
    invoke-direct {p0, p1, p2}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-void
.end method


# virtual methods
.method public batchGetDocuments(Lcom/google/firestore/v1/BatchGetDocumentsRequest;)Ljava/util/Iterator;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/BatchGetDocumentsRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/BatchGetDocumentsRequest;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
            ">;"
        }
    .end annotation

    .line 1056
    nop

    .line 1057
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1056
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingServerStreamingCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public beginTransaction(Lcom/google/firestore/v1/BeginTransactionRequest;)Lcom/google/firestore/v1/BeginTransactionResponse;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/BeginTransactionRequest;

    .line 1066
    nop

    .line 1067
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1066
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/BeginTransactionResponse;

    return-object v0
.end method

.method protected build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;
    .locals 1
    .param p1, "channel"    # Lio/grpc/Channel;
    .param p2, "callOptions"    # Lio/grpc/CallOptions;

    .line 994
    new-instance v0, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;

    invoke-direct {v0, p1, p2}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;-><init>(Lio/grpc/Channel;Lio/grpc/CallOptions;)V

    return-object v0
.end method

.method protected bridge synthetic build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lio/grpc/stub/AbstractStub;
    .locals 0

    .line 985
    invoke-virtual {p0, p1, p2}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->build(Lio/grpc/Channel;Lio/grpc/CallOptions;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;

    move-result-object p1

    return-object p1
.end method

.method public commit(Lcom/google/firestore/v1/CommitRequest;)Lcom/google/firestore/v1/CommitResponse;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/CommitRequest;

    .line 1076
    nop

    .line 1077
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1076
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/CommitResponse;

    return-object v0
.end method

.method public createDocument(Lcom/google/firestore/v1/CreateDocumentRequest;)Lcom/google/firestore/v1/Document;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/CreateDocumentRequest;

    .line 1023
    nop

    .line 1024
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1023
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document;

    return-object v0
.end method

.method public deleteDocument(Lcom/google/firestore/v1/DeleteDocumentRequest;)Lcom/google/protobuf/Empty;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/DeleteDocumentRequest;

    .line 1043
    nop

    .line 1044
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1043
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0
.end method

.method public getDocument(Lcom/google/firestore/v1/GetDocumentRequest;)Lcom/google/firestore/v1/Document;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/GetDocumentRequest;

    .line 1003
    nop

    .line 1004
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1003
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document;

    return-object v0
.end method

.method public listCollectionIds(Lcom/google/firestore/v1/ListCollectionIdsRequest;)Lcom/google/firestore/v1/ListCollectionIdsResponse;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/ListCollectionIdsRequest;

    .line 1126
    nop

    .line 1127
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1126
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListCollectionIdsResponse;

    return-object v0
.end method

.method public listDocuments(Lcom/google/firestore/v1/ListDocumentsRequest;)Lcom/google/firestore/v1/ListDocumentsResponse;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/ListDocumentsRequest;

    .line 1013
    nop

    .line 1014
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1013
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/ListDocumentsResponse;

    return-object v0
.end method

.method public rollback(Lcom/google/firestore/v1/RollbackRequest;)Lcom/google/protobuf/Empty;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/RollbackRequest;

    .line 1086
    nop

    .line 1087
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1086
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Empty;

    return-object v0
.end method

.method public runAggregationQuery(Lcom/google/firestore/v1/RunAggregationQueryRequest;)Ljava/util/Iterator;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/RunAggregationQueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
            ">;"
        }
    .end annotation

    .line 1116
    nop

    .line 1117
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1116
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingServerStreamingCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public runQuery(Lcom/google/firestore/v1/RunQueryRequest;)Ljava/util/Iterator;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/RunQueryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firestore/v1/RunQueryRequest;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;"
        }
    .end annotation

    .line 1097
    nop

    .line 1098
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1097
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingServerStreamingCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public updateDocument(Lcom/google/firestore/v1/UpdateDocumentRequest;)Lcom/google/firestore/v1/Document;
    .locals 3
    .param p1, "request"    # Lcom/google/firestore/v1/UpdateDocumentRequest;

    .line 1033
    nop

    .line 1034
    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getChannel()Lio/grpc/Channel;

    move-result-object v0

    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->getCallOptions()Lio/grpc/CallOptions;

    move-result-object v2

    .line 1033
    invoke-static {v0, v1, v2, p1}, Lio/grpc/stub/ClientCalls;->blockingUnaryCall(Lio/grpc/Channel;Lio/grpc/MethodDescriptor;Lio/grpc/CallOptions;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firestore/v1/Document;

    return-object v0
.end method
