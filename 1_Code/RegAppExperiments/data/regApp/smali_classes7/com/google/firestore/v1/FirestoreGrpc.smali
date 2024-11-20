.class public final Lcom/google/firestore/v1/FirestoreGrpc;
.super Ljava/lang/Object;
.source "FirestoreGrpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/v1/FirestoreGrpc$MethodHandlers;,
        Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;,
        Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;,
        Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;,
        Lcom/google/firestore/v1/FirestoreGrpc$FirestoreImplBase;
    }
.end annotation


# static fields
.field private static final METHODID_BATCH_GET_DOCUMENTS:I = 0x5

.field private static final METHODID_BEGIN_TRANSACTION:I = 0x6

.field private static final METHODID_COMMIT:I = 0x7

.field private static final METHODID_CREATE_DOCUMENT:I = 0x2

.field private static final METHODID_DELETE_DOCUMENT:I = 0x4

.field private static final METHODID_GET_DOCUMENT:I = 0x0

.field private static final METHODID_LISTEN:I = 0xd

.field private static final METHODID_LIST_COLLECTION_IDS:I = 0xb

.field private static final METHODID_LIST_DOCUMENTS:I = 0x1

.field private static final METHODID_ROLLBACK:I = 0x8

.field private static final METHODID_RUN_AGGREGATION_QUERY:I = 0xa

.field private static final METHODID_RUN_QUERY:I = 0x9

.field private static final METHODID_UPDATE_DOCUMENT:I = 0x3

.field private static final METHODID_WRITE:I = 0xc

.field public static final SERVICE_NAME:Ljava/lang/String; = "google.firestore.v1.Firestore"

.field private static volatile getBatchGetDocumentsMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/BatchGetDocumentsRequest;",
            "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getBeginTransactionMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/BeginTransactionRequest;",
            "Lcom/google/firestore/v1/BeginTransactionResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getCommitMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/CommitRequest;",
            "Lcom/google/firestore/v1/CommitResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getCreateDocumentMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/CreateDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getDeleteDocumentMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/DeleteDocumentRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getGetDocumentMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/GetDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getListCollectionIdsMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListCollectionIdsRequest;",
            "Lcom/google/firestore/v1/ListCollectionIdsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getListDocumentsMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListDocumentsRequest;",
            "Lcom/google/firestore/v1/ListDocumentsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getListenMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListenRequest;",
            "Lcom/google/firestore/v1/ListenResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getRollbackMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RollbackRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getRunAggregationQueryMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
            "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getRunQueryMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RunQueryRequest;",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getUpdateDocumentMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/UpdateDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile getWriteMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/WriteRequest;",
            "Lcom/google/firestore/v1/WriteResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile serviceDescriptor:Lio/grpc/ServiceDescriptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatchGetDocumentsMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/BatchGetDocumentsRequest;",
            "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
            ">;"
        }
    .end annotation

    .line 195
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getBatchGetDocumentsMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/BatchGetDocumentsRequest;Lcom/google/firestore/v1/BatchGetDocumentsResponse;>;"
    if-nez v0, :cond_1

    .line 196
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 197
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 199
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 200
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "BatchGetDocuments"

    .line 201
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 202
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 204
    invoke-static {}, Lcom/google/firestore/v1/BatchGetDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsRequest;

    move-result-object v3

    .line 203
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 206
    invoke-static {}, Lcom/google/firestore/v1/BatchGetDocumentsResponse;->getDefaultInstance()Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    move-result-object v3

    .line 205
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 207
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod:Lio/grpc/MethodDescriptor;

    .line 209
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 211
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getBeginTransactionMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/BeginTransactionRequest;",
            "Lcom/google/firestore/v1/BeginTransactionResponse;",
            ">;"
        }
    .end annotation

    .line 225
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getBeginTransactionMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/BeginTransactionRequest;Lcom/google/firestore/v1/BeginTransactionResponse;>;"
    if-nez v0, :cond_1

    .line 226
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 227
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 229
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 230
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "BeginTransaction"

    .line 231
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 232
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 234
    invoke-static {}, Lcom/google/firestore/v1/BeginTransactionRequest;->getDefaultInstance()Lcom/google/firestore/v1/BeginTransactionRequest;

    move-result-object v3

    .line 233
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 236
    invoke-static {}, Lcom/google/firestore/v1/BeginTransactionResponse;->getDefaultInstance()Lcom/google/firestore/v1/BeginTransactionResponse;

    move-result-object v3

    .line 235
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 237
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod:Lio/grpc/MethodDescriptor;

    .line 239
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 241
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getCommitMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/CommitRequest;",
            "Lcom/google/firestore/v1/CommitResponse;",
            ">;"
        }
    .end annotation

    .line 255
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getCommitMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/CommitRequest;Lcom/google/firestore/v1/CommitResponse;>;"
    if-nez v0, :cond_1

    .line 256
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 257
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 259
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 260
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "Commit"

    .line 261
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 262
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 264
    invoke-static {}, Lcom/google/firestore/v1/CommitRequest;->getDefaultInstance()Lcom/google/firestore/v1/CommitRequest;

    move-result-object v3

    .line 263
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 266
    invoke-static {}, Lcom/google/firestore/v1/CommitResponse;->getDefaultInstance()Lcom/google/firestore/v1/CommitResponse;

    move-result-object v3

    .line 265
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 267
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod:Lio/grpc/MethodDescriptor;

    .line 269
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 271
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getCreateDocumentMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/CreateDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 105
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getCreateDocumentMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/CreateDocumentRequest;Lcom/google/firestore/v1/Document;>;"
    if-nez v0, :cond_1

    .line 106
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 107
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 109
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 110
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "CreateDocument"

    .line 111
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 112
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 114
    invoke-static {}, Lcom/google/firestore/v1/CreateDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/CreateDocumentRequest;

    move-result-object v3

    .line 113
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 116
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v3

    .line 115
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 117
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod:Lio/grpc/MethodDescriptor;

    .line 119
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 121
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getDeleteDocumentMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/DeleteDocumentRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getDeleteDocumentMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/DeleteDocumentRequest;Lcom/google/protobuf/Empty;>;"
    if-nez v0, :cond_1

    .line 166
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 167
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 169
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 170
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "DeleteDocument"

    .line 171
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 172
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 174
    invoke-static {}, Lcom/google/firestore/v1/DeleteDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/DeleteDocumentRequest;

    move-result-object v3

    .line 173
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 176
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v3

    .line 175
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod:Lio/grpc/MethodDescriptor;

    .line 179
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 181
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getGetDocumentMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/GetDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getGetDocumentMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/GetDocumentRequest;Lcom/google/firestore/v1/Document;>;"
    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 49
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 50
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "GetDocument"

    .line 51
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 52
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 54
    invoke-static {}, Lcom/google/firestore/v1/GetDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/GetDocumentRequest;

    move-result-object v3

    .line 53
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 56
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v3

    .line 55
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 57
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod:Lio/grpc/MethodDescriptor;

    .line 59
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 61
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getListCollectionIdsMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListCollectionIdsRequest;",
            "Lcom/google/firestore/v1/ListCollectionIdsResponse;",
            ">;"
        }
    .end annotation

    .line 435
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getListCollectionIdsMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/ListCollectionIdsRequest;Lcom/google/firestore/v1/ListCollectionIdsResponse;>;"
    if-nez v0, :cond_1

    .line 436
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 437
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 439
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 440
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "ListCollectionIds"

    .line 441
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 442
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 444
    invoke-static {}, Lcom/google/firestore/v1/ListCollectionIdsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListCollectionIdsRequest;

    move-result-object v3

    .line 443
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 446
    invoke-static {}, Lcom/google/firestore/v1/ListCollectionIdsResponse;->getDefaultInstance()Lcom/google/firestore/v1/ListCollectionIdsResponse;

    move-result-object v3

    .line 445
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 447
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod:Lio/grpc/MethodDescriptor;

    .line 449
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 451
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getListDocumentsMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListDocumentsRequest;",
            "Lcom/google/firestore/v1/ListDocumentsResponse;",
            ">;"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getListDocumentsMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/ListDocumentsRequest;Lcom/google/firestore/v1/ListDocumentsResponse;>;"
    if-nez v0, :cond_1

    .line 76
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 77
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 79
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 80
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "ListDocuments"

    .line 81
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 82
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 84
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsRequest;

    move-result-object v3

    .line 83
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 86
    invoke-static {}, Lcom/google/firestore/v1/ListDocumentsResponse;->getDefaultInstance()Lcom/google/firestore/v1/ListDocumentsResponse;

    move-result-object v3

    .line 85
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod:Lio/grpc/MethodDescriptor;

    .line 89
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 91
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getListenMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/ListenRequest;",
            "Lcom/google/firestore/v1/ListenResponse;",
            ">;"
        }
    .end annotation

    .line 405
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getListenMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/ListenRequest;Lcom/google/firestore/v1/ListenResponse;>;"
    if-nez v0, :cond_1

    .line 406
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 407
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 409
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 410
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "Listen"

    .line 411
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 412
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 414
    invoke-static {}, Lcom/google/firestore/v1/ListenRequest;->getDefaultInstance()Lcom/google/firestore/v1/ListenRequest;

    move-result-object v3

    .line 413
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 416
    invoke-static {}, Lcom/google/firestore/v1/ListenResponse;->getDefaultInstance()Lcom/google/firestore/v1/ListenResponse;

    move-result-object v3

    .line 415
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 417
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod:Lio/grpc/MethodDescriptor;

    .line 419
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 421
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getRollbackMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RollbackRequest;",
            "Lcom/google/protobuf/Empty;",
            ">;"
        }
    .end annotation

    .line 285
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getRollbackMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/RollbackRequest;Lcom/google/protobuf/Empty;>;"
    if-nez v0, :cond_1

    .line 286
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 287
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 289
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 290
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "Rollback"

    .line 291
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 292
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 294
    invoke-static {}, Lcom/google/firestore/v1/RollbackRequest;->getDefaultInstance()Lcom/google/firestore/v1/RollbackRequest;

    move-result-object v3

    .line 293
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 296
    invoke-static {}, Lcom/google/protobuf/Empty;->getDefaultInstance()Lcom/google/protobuf/Empty;

    move-result-object v3

    .line 295
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 297
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod:Lio/grpc/MethodDescriptor;

    .line 299
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 301
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getRunAggregationQueryMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RunAggregationQueryRequest;",
            "Lcom/google/firestore/v1/RunAggregationQueryResponse;",
            ">;"
        }
    .end annotation

    .line 345
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getRunAggregationQueryMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/RunAggregationQueryRequest;Lcom/google/firestore/v1/RunAggregationQueryResponse;>;"
    if-nez v0, :cond_1

    .line 346
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 347
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 349
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 350
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "RunAggregationQuery"

    .line 351
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 352
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 354
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryRequest;->getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryRequest;

    move-result-object v3

    .line 353
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 356
    invoke-static {}, Lcom/google/firestore/v1/RunAggregationQueryResponse;->getDefaultInstance()Lcom/google/firestore/v1/RunAggregationQueryResponse;

    move-result-object v3

    .line 355
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 357
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod:Lio/grpc/MethodDescriptor;

    .line 359
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 361
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getRunQueryMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/RunQueryRequest;",
            "Lcom/google/firestore/v1/RunQueryResponse;",
            ">;"
        }
    .end annotation

    .line 315
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getRunQueryMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/RunQueryRequest;Lcom/google/firestore/v1/RunQueryResponse;>;"
    if-nez v0, :cond_1

    .line 316
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 317
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 319
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->SERVER_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 320
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "RunQuery"

    .line 321
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 322
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 324
    invoke-static {}, Lcom/google/firestore/v1/RunQueryRequest;->getDefaultInstance()Lcom/google/firestore/v1/RunQueryRequest;

    move-result-object v3

    .line 323
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 326
    invoke-static {}, Lcom/google/firestore/v1/RunQueryResponse;->getDefaultInstance()Lcom/google/firestore/v1/RunQueryResponse;

    move-result-object v3

    .line 325
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 327
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod:Lio/grpc/MethodDescriptor;

    .line 329
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 331
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getServiceDescriptor()Lio/grpc/ServiceDescriptor;
    .locals 4

    .line 1366
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    .line 1367
    .local v0, "result":Lio/grpc/ServiceDescriptor;
    if-nez v0, :cond_1

    .line 1368
    const-class v1, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v1

    .line 1369
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    move-object v0, v2

    .line 1370
    if-nez v0, :cond_0

    .line 1371
    const-string v2, "google.firestore.v1.Firestore"

    invoke-static {v2}, Lio/grpc/ServiceDescriptor;->newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1372
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getGetDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1373
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListDocumentsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1374
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getCreateDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1375
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1376
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getDeleteDocumentMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1377
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getBatchGetDocumentsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1378
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getBeginTransactionMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1379
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getCommitMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1380
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRollbackMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1381
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRunQueryMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1382
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getRunAggregationQueryMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1383
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1384
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListenMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1385
    invoke-static {}, Lcom/google/firestore/v1/FirestoreGrpc;->getListCollectionIdsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v2

    .line 1386
    invoke-virtual {v2}, Lio/grpc/ServiceDescriptor$Builder;->build()Lio/grpc/ServiceDescriptor;

    move-result-object v2

    move-object v0, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    .line 1388
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1390
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getUpdateDocumentMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/UpdateDocumentRequest;",
            "Lcom/google/firestore/v1/Document;",
            ">;"
        }
    .end annotation

    .line 135
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getUpdateDocumentMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/UpdateDocumentRequest;Lcom/google/firestore/v1/Document;>;"
    if-nez v0, :cond_1

    .line 136
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 137
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 139
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 140
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "UpdateDocument"

    .line 141
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 142
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 144
    invoke-static {}, Lcom/google/firestore/v1/UpdateDocumentRequest;->getDefaultInstance()Lcom/google/firestore/v1/UpdateDocumentRequest;

    move-result-object v3

    .line 143
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 146
    invoke-static {}, Lcom/google/firestore/v1/Document;->getDefaultInstance()Lcom/google/firestore/v1/Document;

    move-result-object v3

    .line 145
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getUpdateDocumentMethod:Lio/grpc/MethodDescriptor;

    .line 149
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 151
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getWriteMethod()Lio/grpc/MethodDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/firestore/v1/WriteRequest;",
            "Lcom/google/firestore/v1/WriteResponse;",
            ">;"
        }
    .end annotation

    .line 375
    sget-object v0, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v0

    .local v1, "getWriteMethod":Lio/grpc/MethodDescriptor;, "Lio/grpc/MethodDescriptor<Lcom/google/firestore/v1/WriteRequest;Lcom/google/firestore/v1/WriteResponse;>;"
    if-nez v0, :cond_1

    .line 376
    const-class v0, Lcom/google/firestore/v1/FirestoreGrpc;

    monitor-enter v0

    .line 377
    :try_start_0
    sget-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod:Lio/grpc/MethodDescriptor;

    move-object v1, v2

    if-nez v2, :cond_0

    .line 379
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    sget-object v3, Lio/grpc/MethodDescriptor$MethodType;->BIDI_STREAMING:Lio/grpc/MethodDescriptor$MethodType;

    .line 380
    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    const-string v3, "google.firestore.v1.Firestore"

    const-string v4, "Write"

    .line 381
    invoke-static {v3, v4}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 382
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 384
    invoke-static {}, Lcom/google/firestore/v1/WriteRequest;->getDefaultInstance()Lcom/google/firestore/v1/WriteRequest;

    move-result-object v3

    .line 383
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 386
    invoke-static {}, Lcom/google/firestore/v1/WriteResponse;->getDefaultInstance()Lcom/google/firestore/v1/WriteResponse;

    move-result-object v3

    .line 385
    invoke-static {v3}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v2

    move-object v1, v2

    sput-object v2, Lcom/google/firestore/v1/FirestoreGrpc;->getWriteMethod:Lio/grpc/MethodDescriptor;

    .line 389
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 391
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static newBlockingStub(Lio/grpc/Channel;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;
    .locals 2
    .param p0, "channel"    # Lio/grpc/Channel;

    .line 473
    new-instance v0, Lcom/google/firestore/v1/FirestoreGrpc$2;

    invoke-direct {v0}, Lcom/google/firestore/v1/FirestoreGrpc$2;-><init>()V

    .line 480
    .local v0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;>;"
    invoke-static {v0, p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreBlockingStub;

    return-object v1
.end method

.method public static newFutureStub(Lio/grpc/Channel;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;
    .locals 2
    .param p0, "channel"    # Lio/grpc/Channel;

    .line 488
    new-instance v0, Lcom/google/firestore/v1/FirestoreGrpc$3;

    invoke-direct {v0}, Lcom/google/firestore/v1/FirestoreGrpc$3;-><init>()V

    .line 495
    .local v0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;>;"
    invoke-static {v0, p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreFutureStub;

    return-object v1
.end method

.method public static newStub(Lio/grpc/Channel;)Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;
    .locals 2
    .param p0, "channel"    # Lio/grpc/Channel;

    .line 458
    new-instance v0, Lcom/google/firestore/v1/FirestoreGrpc$1;

    invoke-direct {v0}, Lcom/google/firestore/v1/FirestoreGrpc$1;-><init>()V

    .line 465
    .local v0, "factory":Lio/grpc/stub/AbstractStub$StubFactory;, "Lio/grpc/stub/AbstractStub$StubFactory<Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;>;"
    invoke-static {v0, p0}, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/FirestoreGrpc$FirestoreStub;

    return-object v1
.end method
