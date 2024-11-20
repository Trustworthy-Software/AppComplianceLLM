.class public Lcom/google/firebase/firestore/CollectionReference;
.super Lcom/google/firebase/firestore/Query;
.source "CollectionReference.java"


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 3
    .param p1, "path"    # Lcom/google/firebase/firestore/model/ResourcePath;
    .param p2, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 38
    invoke-static {p1}, Lcom/google/firebase/firestore/core/Query;->atPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 47
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid collection reference. Collection references must have an odd number of segments, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 43
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$add$0(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/DocumentReference;
    .locals 0
    .param p0, "ref"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p1, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 127
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/DocumentReference;",
            ">;"
        }
    .end annotation

    .line 119
    const-string v0, "Provided data must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    invoke-virtual {p0}, Lcom/google/firebase/firestore/CollectionReference;->document()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    .line 121
    .local v0, "ref":Lcom/google/firebase/firestore/DocumentReference;
    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/DocumentReference;->set(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/firestore/CollectionReference$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lcom/google/firebase/firestore/CollectionReference$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 122
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    .line 121
    return-object v1
.end method

.method public document()Lcom/google/firebase/firestore/DocumentReference;
    .locals 1

    .line 91
    invoke-static {}, Lcom/google/firebase/firestore/util/Util;->autoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/CollectionReference;->document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    return-object v0
.end method

.method public document(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;
    .locals 2
    .param p1, "documentPath"    # Ljava/lang/String;

    .line 103
    const-string v0, "Provided document path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/google/firebase/firestore/CollectionReference;->query:Lcom/google/firebase/firestore/core/Query;

    .line 105
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/ResourcePath;

    iget-object v1, p0, Lcom/google/firebase/firestore/CollectionReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 104
    invoke-static {v0, v1}, Lcom/google/firebase/firestore/DocumentReference;->forPath(Lcom/google/firebase/firestore/model/ResourcePath;Lcom/google/firebase/firestore/FirebaseFirestore;)Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/firebase/firestore/CollectionReference;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/google/firebase/firestore/DocumentReference;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/google/firebase/firestore/CollectionReference;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 65
    .local v0, "parentPath":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    const/4 v1, 0x0

    return-object v1

    .line 68
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/DocumentReference;

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/CollectionReference;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/firebase/firestore/CollectionReference;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->canonicalString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
