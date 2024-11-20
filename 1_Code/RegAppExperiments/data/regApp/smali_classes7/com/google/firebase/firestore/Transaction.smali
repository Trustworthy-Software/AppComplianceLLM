.class public Lcom/google/firebase/firestore/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/Transaction$Function;
    }
.end annotation


# instance fields
.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final transaction:Lcom/google/firebase/firestore/core/Transaction;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/core/Transaction;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 1
    .param p1, "transaction"    # Lcom/google/firebase/firestore/core/Transaction;
    .param p2, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/Transaction;

    iput-object v0, p0, Lcom/google/firebase/firestore/Transaction;->transaction:Lcom/google/firebase/firestore/core/Transaction;

    .line 51
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    iput-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 52
    return-void
.end method

.method private getAsync(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/DocumentReference;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/DocumentSnapshot;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->transaction:Lcom/google/firebase/firestore/core/Transaction;

    .line 189
    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/Transaction;->lookup(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/firestore/Transaction$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/firebase/firestore/Transaction$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/Transaction;)V

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method private update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/firebase/firestore/Transaction;
    .locals 2
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "updateData"    # Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    .line 162
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->validateReference(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 163
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->transaction:Lcom/google/firebase/firestore/core/Transaction;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/firebase/firestore/core/Transaction;->update(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)V

    .line 164
    return-object p0
.end method


# virtual methods
.method public delete(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/Transaction;
    .locals 2
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;

    .line 175
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->validateReference(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 176
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->transaction:Lcom/google/firebase/firestore/core/Transaction;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/Transaction;->delete(Lcom/google/firebase/firestore/model/DocumentKey;)V

    .line 177
    return-object p0
.end method

.method public get(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/DocumentSnapshot;
    .locals 3
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->validateReference(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 226
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Transaction;->getAsync(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/DocumentSnapshot;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "ie":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 227
    .end local v0    # "ie":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    .line 228
    .local v0, "ee":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    throw v1

    .line 231
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic lambda$getAsync$0$com-google-firebase-firestore-Transaction(Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/DocumentSnapshot;
    .locals 5
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 197
    .local v0, "docs":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/MutableDocument;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    .line 200
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 201
    .local v1, "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-static {v2, v1, v3, v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->fromDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;ZZ)Lcom/google/firebase/firestore/DocumentSnapshot;

    move-result-object v2

    return-object v2

    .line 204
    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/MutableDocument;->isNoDocument()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    iget-object v2, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 206
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    .line 205
    invoke-static {v2, v4, v3}, Lcom/google/firebase/firestore/DocumentSnapshot;->fromNoDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Z)Lcom/google/firebase/firestore/DocumentSnapshot;

    move-result-object v2

    return-object v2

    .line 208
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BatchGetDocumentsRequest returned unexpected document type: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 210
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 208
    invoke-static {v2, v3}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v2

    throw v2

    .line 198
    .end local v1    # "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    :cond_2
    const-string v1, "Mismatch in docs returned from document lookup."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v1

    throw v1

    .line 194
    .end local v0    # "docs":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/MutableDocument;>;"
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method public set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;)Lcom/google/firebase/firestore/Transaction;
    .locals 1
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "data"    # Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/google/firebase/firestore/SetOptions;->OVERWRITE:Lcom/google/firebase/firestore/SetOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/firestore/Transaction;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/Transaction;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/Transaction;
    .locals 3
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lcom/google/firebase/firestore/SetOptions;

    .line 82
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->validateReference(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 83
    const-string v0, "Provided data must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "Provided options must not be null."

    invoke-static {p3, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-virtual {p3}, Lcom/google/firebase/firestore/SetOptions;->isMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/firebase/firestore/SetOptions;->getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseMergeData(Ljava/lang/Object;Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    move-result-object v0

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseSetData(Ljava/lang/Object;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    move-result-object v0

    :goto_0
    nop

    .line 89
    .local v0, "parsed":Lcom/google/firebase/firestore/core/UserData$ParsedSetData;
    iget-object v1, p0, Lcom/google/firebase/firestore/Transaction;->transaction:Lcom/google/firebase/firestore/core/Transaction;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/firebase/firestore/core/Transaction;->set(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/core/UserData$ParsedSetData;)V

    .line 90
    return-object p0
.end method

.method public varargs update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Transaction;
    .locals 2
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "moreFieldsAndValues"    # [Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 153
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    .line 155
    const/4 v1, 0x1

    invoke-static {v1, p2, p3, p4}, Lcom/google/firebase/firestore/util/Util;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseUpdateData(Ljava/util/List;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v0

    .line 157
    .local v0, "parsedData":Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/Transaction;->update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/firebase/firestore/Transaction;

    move-result-object v1

    return-object v1
.end method

.method public varargs update(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/Transaction;
    .locals 2
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "moreFieldsAndValues"    # [Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 128
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    .line 130
    const/4 v1, 0x1

    invoke-static {v1, p2, p3, p4}, Lcom/google/firebase/firestore/util/Util;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseUpdateData(Ljava/util/List;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v0

    .line 132
    .local v0, "parsedData":Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/Transaction;->update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/firebase/firestore/Transaction;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;)Lcom/google/firebase/firestore/Transaction;
    .locals 2
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/DocumentReference;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Transaction;"
        }
    .end annotation

    .line 105
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/Transaction;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseUpdateData(Ljava/util/Map;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v0

    .line 106
    .local v0, "parsedData":Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/Transaction;->update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/firebase/firestore/Transaction;

    move-result-object v1

    return-object v1
.end method
