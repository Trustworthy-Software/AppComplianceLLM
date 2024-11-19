.class Lcom/google/firebase/firestore/remote/Datastore$1;
.super Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;
.source "Datastore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/remote/Datastore;->lookup(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener<",
        "Lcom/google/firestore/v1/BatchGetDocumentsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/firebase/firestore/remote/Datastore;

.field final synthetic val$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic val$keys:Ljava/util/List;

.field final synthetic val$responses:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/remote/Datastore;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/firebase/firestore/remote/Datastore;

    .line 190
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->this$0:Lcom/google/firebase/firestore/remote/Datastore;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$responses:Ljava/util/List;

    iput-object p3, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$keys:Ljava/util/List;

    iput-object p4, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;)V
    .locals 3
    .param p1, "status"    # Lio/grpc/Status;

    .line 210
    invoke-virtual {p1}, Lio/grpc/Status;->isOk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v0

    .line 214
    .local v0, "exception":Lcom/google/firebase/firestore/FirebaseFirestoreException;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;->getCode()Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNAUTHENTICATED:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    if-ne v1, v2, :cond_1

    .line 215
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->this$0:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-static {v1}, Lcom/google/firebase/firestore/remote/Datastore;->access$100(Lcom/google/firebase/firestore/remote/Datastore;)Lcom/google/firebase/firestore/remote/FirestoreChannel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/remote/FirestoreChannel;->invalidateToken()V

    .line 217
    :cond_1
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 219
    .end local v0    # "exception":Lcom/google/firebase/firestore/FirebaseFirestoreException;
    :goto_0
    return-void
.end method

.method public onMessage(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V
    .locals 5
    .param p1, "message"    # Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 193
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$responses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$responses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$keys:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    .local v0, "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$responses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    .line 197
    .local v2, "response":Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->this$0:Lcom/google/firebase/firestore/remote/Datastore;

    invoke-static {v3}, Lcom/google/firebase/firestore/remote/Datastore;->access$000(Lcom/google/firebase/firestore/remote/Datastore;)Lcom/google/firebase/firestore/remote/RemoteSerializer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->decodeMaybeDocument(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v3

    .line 198
    .local v3, "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .end local v2    # "response":Lcom/google/firestore/v1/BatchGetDocumentsResponse;
    .end local v3    # "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    goto :goto_0

    .line 200
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/MutableDocument;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$keys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 202
    .local v3, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    .end local v3    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_1

    .line 204
    :cond_1
    iget-object v2, p0, Lcom/google/firebase/firestore/remote/Datastore$1;->val$completionSource:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 206
    .end local v0    # "resultMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/MutableDocument;>;"
    :cond_2
    return-void
.end method

.method public bridge synthetic onMessage(Ljava/lang/Object;)V
    .locals 0

    .line 190
    check-cast p1, Lcom/google/firestore/v1/BatchGetDocumentsResponse;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/remote/Datastore$1;->onMessage(Lcom/google/firestore/v1/BatchGetDocumentsResponse;)V

    return-void
.end method
