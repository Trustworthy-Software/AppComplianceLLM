.class public Lcom/google/firebase/firestore/core/Transaction;
.super Ljava/lang/Object;
.source "Transaction.java"


# static fields
.field private static final defaultExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private committed:Z

.field private final datastore:Lcom/google/firebase/firestore/remote/Datastore;

.field private lastWriteError:Lcom/google/firebase/firestore/FirebaseFirestoreException;

.field private final mutations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;"
        }
    .end annotation
.end field

.field private final readVersions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            ">;"
        }
    .end annotation
.end field

.field private writtenDocs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    invoke-static {}, Lcom/google/firebase/firestore/core/Transaction;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/Transaction;->defaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/remote/Datastore;)V
    .locals 1
    .param p1, "d"    # Lcom/google/firebase/firestore/remote/Datastore;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->readVersions:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->mutations:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->writtenDocs:Ljava/util/Set;

    .line 73
    iput-object p1, p0, Lcom/google/firebase/firestore/core/Transaction;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    .line 74
    return-void
.end method

.method private static createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 10

    .line 161
    const/4 v7, 0x5

    .line 163
    .local v7, "corePoolSize":I
    move v2, v7

    .line 164
    .local v2, "maxPoolSize":I
    const/4 v8, 0x1

    .line 165
    .local v8, "keepAliveSeconds":I
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 169
    .local v6, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v3, v8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v9

    move v1, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 172
    .local v0, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 173
    return-object v0
.end method

.method private ensureCommitNotCalled()V
    .locals 3

    .line 252
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/Transaction;->committed:Z

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "A transaction object cannot be used after its update callback has been invoked."

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    return-void
.end method

.method public static getDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 258
    sget-object v0, Lcom/google/firebase/firestore/core/Transaction;->defaultExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic lambda$commit$1(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p0, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private precondition(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/mutation/Precondition;
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 204
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->readVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 205
    .local v0, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Transaction;->writtenDocs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 206
    sget-object v1, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists(Z)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v1

    return-object v1

    .line 209
    :cond_0
    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v1

    return-object v1

    .line 212
    :cond_1
    sget-object v1, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    return-object v1
.end method

.method private preconditionForUpdate(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/mutation/Precondition;
    .locals 4
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->readVersions:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 224
    .local v0, "version":Lcom/google/firebase/firestore/model/SnapshotVersion;
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Transaction;->writtenDocs:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 225
    if-eqz v0, :cond_1

    sget-object v1, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v2, "Can\'t update a document that doesn\'t exist."

    sget-object v3, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    throw v1

    .line 239
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v1

    return-object v1

    .line 242
    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists(Z)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v1

    return-object v1
.end method

.method private recordVersion(Lcom/google/firebase/firestore/model/MutableDocument;)V
    .locals 5
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/firestore/FirebaseFirestoreException;
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    .local v0, "docVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    goto :goto_0

    .line 180
    .end local v0    # "docVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->isNoDocument()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    sget-object v0, Lcom/google/firebase/firestore/model/SnapshotVersion;->NONE:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 187
    .restart local v0    # "docVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Transaction;->readVersions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 188
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Transaction;->readVersions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 189
    .local v1, "existingVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    .end local v1    # "existingVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    goto :goto_1

    .line 191
    .restart local v1    # "existingVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    :cond_1
    new-instance v2, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v3, "Document version changed between two reads."

    sget-object v4, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->ABORTED:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    throw v2

    .line 195
    .end local v1    # "existingVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    :cond_2
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Transaction;->readVersions:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :goto_1
    return-void

    .line 184
    .end local v0    # "docVersion":Lcom/google/firebase/firestore/model/SnapshotVersion;
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected document type in transaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private write(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "mutations":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/Mutation;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/Transaction;->ensureCommitNotCalled()V

    .line 248
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 249
    return-void
.end method


# virtual methods
.method public commit()Lcom/google/android/gms/tasks/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/Transaction;->ensureCommitNotCalled()V

    .line 130
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->lastWriteError:Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v0, :cond_0

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/firebase/firestore/core/Transaction;->readVersions:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 136
    .local v0, "unwritten":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Transaction;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 137
    .local v2, "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 138
    .end local v2    # "mutation":Lcom/google/firebase/firestore/model/mutation/Mutation;
    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 141
    .local v2, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v3, p0, Lcom/google/firebase/firestore/core/Transaction;->mutations:Ljava/util/ArrayList;

    new-instance v4, Lcom/google/firebase/firestore/model/mutation/VerifyMutation;

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/core/Transaction;->precondition(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/google/firebase/firestore/model/mutation/VerifyMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v2    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_1

    .line 143
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/firebase/firestore/core/Transaction;->committed:Z

    .line 144
    iget-object v1, p0, Lcom/google/firebase/firestore/core/Transaction;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/Transaction;->mutations:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/remote/Datastore;->commit(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/firestore/core/Transaction$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/google/firebase/firestore/core/Transaction$$ExternalSyntheticLambda1;-><init>()V

    .line 146
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 144
    return-object v1
.end method

.method public delete(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 123
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Transaction;->precondition(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/Transaction;->write(Ljava/util/List;)V

    .line 124
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->writtenDocs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method synthetic lambda$lookup$0$com-google-firebase-firestore-core-Transaction(Lcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/MutableDocument;

    .line 96
    .local v1, "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/core/Transaction;->recordVersion(Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 97
    .end local v1    # "doc":Lcom/google/firebase/firestore/model/MutableDocument;
    goto :goto_0

    .line 99
    :cond_0
    return-object p1
.end method

.method public lookup(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;>;"
        }
    .end annotation

    .line 81
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/core/Transaction;->ensureCommitNotCalled()V

    .line 83
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v1, "Firestore transactions require all reads to be executed before all writes."

    sget-object v2, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->INVALID_ARGUMENT:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->datastore:Lcom/google/firebase/firestore/remote/Datastore;

    .line 90
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/remote/Datastore;->lookup(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/firestore/core/Transaction$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/google/firebase/firestore/core/Transaction$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/core/Transaction;)V

    .line 91
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public set(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/core/UserData$ParsedSetData;)V
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "data"    # Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    .line 105
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Transaction;->precondition(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/firestore/core/UserData$ParsedSetData;->toMutation(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/Transaction;->write(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->writtenDocs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public update(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)V
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "data"    # Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    .line 115
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/core/Transaction;->preconditionForUpdate(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->toMutation(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/core/Transaction;->write(Ljava/util/List;)V
    :try_end_0
    .catch Lcom/google/firebase/firestore/FirebaseFirestoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Lcom/google/firebase/firestore/FirebaseFirestoreException;
    iput-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->lastWriteError:Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 119
    .end local v0    # "e":Lcom/google/firebase/firestore/FirebaseFirestoreException;
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Transaction;->writtenDocs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method
