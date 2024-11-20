.class public Lcom/google/firebase/firestore/AggregateQuery;
.super Ljava/lang/Object;
.source "AggregateQuery.java"


# instance fields
.field private final aggregateFieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/AggregateField;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Lcom/google/firebase/firestore/Query;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/Query;Ljava/util/List;)V
    .locals 0
    .param p1, "query"    # Lcom/google/firebase/firestore/Query;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Query;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/AggregateField;",
            ">;)V"
        }
    .end annotation

    .line 39
    .local p2, "aggregateFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/AggregateField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/google/firebase/firestore/AggregateQuery;->query:Lcom/google/firebase/firestore/Query;

    .line 41
    iput-object p2, p0, Lcom/google/firebase/firestore/AggregateQuery;->aggregateFieldList:Ljava/util/List;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 103
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/AggregateQuery;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 105
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/AggregateQuery;

    .line 106
    .local v1, "other":Lcom/google/firebase/firestore/AggregateQuery;
    iget-object v3, p0, Lcom/google/firebase/firestore/AggregateQuery;->query:Lcom/google/firebase/firestore/Query;

    iget-object v4, v1, Lcom/google/firebase/firestore/AggregateQuery;->query:Lcom/google/firebase/firestore/Query;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/Query;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/AggregateQuery;->aggregateFieldList:Ljava/util/List;

    iget-object v4, v1, Lcom/google/firebase/firestore/AggregateQuery;->aggregateFieldList:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get(Lcom/google/firebase/firestore/AggregateSource;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .param p1, "source"    # Lcom/google/firebase/firestore/AggregateSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/AggregateSource;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/AggregateQuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 65
    const-string v0, "AggregateSource must not be null"

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 67
    .local v0, "tcs":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/firestore/AggregateQuerySnapshot;>;"
    iget-object v1, p0, Lcom/google/firebase/firestore/AggregateQuery;->query:Lcom/google/firebase/firestore/Query;

    iget-object v1, v1, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 69
    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getClient()Lcom/google/firebase/firestore/core/FirestoreClient;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/AggregateQuery;->query:Lcom/google/firebase/firestore/Query;

    iget-object v2, v2, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v3, p0, Lcom/google/firebase/firestore/AggregateQuery;->aggregateFieldList:Ljava/util/List;

    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/firestore/core/FirestoreClient;->runAggregateQuery(Lcom/google/firebase/firestore/core/Query;Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/google/firebase/firestore/AggregateQuery$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/google/firebase/firestore/AggregateQuery$$ExternalSyntheticLambda0;-><init>(Lcom/google/firebase/firestore/AggregateQuery;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 71
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    return-object v1
.end method

.method public getAggregateFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/AggregateField;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateQuery;->aggregateFieldList:Ljava/util/List;

    return-object v0
.end method

.method public getQuery()Lcom/google/firebase/firestore/Query;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateQuery;->query:Lcom/google/firebase/firestore/Query;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/google/firebase/firestore/AggregateQuery;->query:Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/AggregateQuery;->aggregateFieldList:Ljava/util/List;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method synthetic lambda$get$0$com-google-firebase-firestore-AggregateQuery(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2
    .param p1, "tcs"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p2, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Lcom/google/firebase/firestore/AggregateQuerySnapshot;

    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateQuerySnapshot;-><init>(Lcom/google/firebase/firestore/AggregateQuery;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 79
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
