.class public Lcom/google/firebase/firestore/Query;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/Query$Direction;
    }
.end annotation


# instance fields
.field final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field final query:Lcom/google/firebase/firestore/core/Query;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 1
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/Query;

    iput-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    .line 77
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    iput-object v0, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 78
    return-void
.end method

.method private addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 5
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "options"    # Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1143
    .local p4, "userListener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/QuerySnapshot;>;"
    invoke-direct {p0}, Lcom/google/firebase/firestore/Query;->validateHasExplicitOrderByForLimitToLast()V

    .line 1146
    new-instance v0, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p4}, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/EventListener;)V

    .line 1160
    .local v0, "viewListener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    new-instance v1, Lcom/google/firebase/firestore/core/AsyncEventListener;

    invoke-direct {v1, p1, v0}, Lcom/google/firebase/firestore/core/AsyncEventListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)V

    .line 1163
    .local v1, "asyncListener":Lcom/google/firebase/firestore/core/AsyncEventListener;, "Lcom/google/firebase/firestore/core/AsyncEventListener<Lcom/google/firebase/firestore/core/ViewSnapshot;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getClient()Lcom/google/firebase/firestore/core/FirestoreClient;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v3, p2, v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->listen(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/core/QueryListener;

    move-result-object v2

    .line 1164
    .local v2, "queryListener":Lcom/google/firebase/firestore/core/QueryListener;
    new-instance v3, Lcom/google/firebase/firestore/core/ListenerRegistrationImpl;

    iget-object v4, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 1166
    invoke-virtual {v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->getClient()Lcom/google/firebase/firestore/core/FirestoreClient;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lcom/google/firebase/firestore/core/ListenerRegistrationImpl;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;Lcom/google/firebase/firestore/core/AsyncEventListener;)V

    .line 1164
    invoke-static {p3, v3}, Lcom/google/firebase/firestore/core/ActivityScope;->bind(Landroid/app/Activity;Lcom/google/firebase/firestore/ListenerRegistration;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v3

    return-object v3
.end method

.method private boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;
    .locals 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "snapshot"    # Lcom/google/firebase/firestore/DocumentSnapshot;
    .param p3, "inclusive"    # Z

    .line 845
    const-string v0, "Provided snapshot must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-virtual {p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 852
    invoke-virtual {p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v0

    .line 853
    .local v0, "document":Lcom/google/firebase/firestore/model/Document;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Query;->getNormalizedOrderBy()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/OrderBy;

    .line 861
    .local v3, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 862
    iget-object v4, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 864
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 865
    .local v4, "value":Lcom/google/firestore/v1/Value;
    invoke-static {v4}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(Lcom/google/firestore/v1/Value;)Z

    move-result v5

    const-string v6, "Invalid query. You are trying to start or end a query using a document for which the field \'"

    if-nez v5, :cond_2

    .line 872
    if-eqz v4, :cond_1

    .line 873
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 882
    .end local v3    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v4    # "value":Lcom/google/firestore/v1/Value;
    :goto_1
    goto :goto_0

    .line 875
    .restart local v3    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    .restart local v4    # "value":Lcom/google/firestore/v1/Value;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 878
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' (used as the orderBy) does not exist."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 866
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 869
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is an uncommitted server timestamp. (Since the value of this field is unknown, you cannot start/end a query with it.)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 883
    .end local v3    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v4    # "value":Lcom/google/firestore/v1/Value;
    :cond_3
    new-instance v2, Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {v2, v1, p3}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    return-object v2

    .line 847
    .end local v0    # "document":Lcom/google/firebase/firestore/model/Document;
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t use a DocumentSnapshot for a document that doesn\'t exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "()."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;
    .locals 10
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;
    .param p3, "inclusive"    # Z

    .line 889
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    .line 890
    .local v0, "explicitOrderBy":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    array-length v1, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 898
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 899
    .local v1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 900
    aget-object v3, p2, v2

    .line 901
    .local v3, "rawValue":Ljava/lang/Object;
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/OrderBy;

    .line 902
    .local v4, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v5, v6}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 903
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 911
    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    .line 912
    .local v5, "documentId":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/Query;->isCollectionGroupQuery()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 913
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid query. When querying a collection and ordering by FieldPath.documentId(), the value passed to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "() must be a plain document ID, but \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' contains a slash."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 921
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v6

    invoke-static {v5}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 922
    .local v6, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-static {v6}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 931
    invoke-static {v6}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v7

    .line 932
    .local v7, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    iget-object v8, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v8}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    .end local v5    # "documentId":Ljava/lang/String;
    .end local v6    # "path":Lcom/google/firebase/firestore/model/ResourcePath;
    .end local v7    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_2

    .line 923
    .restart local v5    # "documentId":Ljava/lang/String;
    .restart local v6    # "path":Lcom/google/firebase/firestore/model/ResourcePath;
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid query. When querying a collection group and ordering by FieldPath.documentId(), the value passed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "() must result in a valid document path, but \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is not because it contains an odd number of segments."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 904
    .end local v5    # "documentId":Ljava/lang/String;
    .end local v6    # "path":Lcom/google/firebase/firestore/model/ResourcePath;
    :cond_3
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid query. Expected a string for document ID in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(), but got "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 934
    :cond_4
    iget-object v5, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v5}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/firebase/firestore/UserDataReader;->parseQueryValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;

    move-result-object v5

    .line 935
    .local v5, "wrapped":Lcom/google/firestore/v1/Value;
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    .end local v3    # "rawValue":Ljava/lang/Object;
    .end local v4    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v5    # "wrapped":Lcom/google/firestore/v1/Value;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 939
    .end local v2    # "i":I
    :cond_5
    new-instance v2, Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {v2, v1, p3}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    return-object v2

    .line 891
    .end local v1    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many arguments provided to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "(). The number of arguments must be less than or equal to the number of orderBy() clauses."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private conflictingOps(Lcom/google/firebase/firestore/core/FieldFilter$Operator;)Ljava/util/List;
    .locals 5
    .param p1, "op"    # Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/FieldFilter$Operator;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter$Operator;",
            ">;"
        }
    .end annotation

    .line 552
    sget-object v0, Lcom/google/firebase/firestore/Query$2;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 559
    :pswitch_0
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v4, v0, v3

    sget-object v3, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v3, v0, v2

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 557
    :pswitch_1
    new-array v0, v2, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 554
    :pswitch_2
    new-array v0, v1, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findOpInsideFilters(Ljava/util/List;Ljava/util/List;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter$Operator;",
            ">;)",
            "Lcom/google/firebase/firestore/core/FieldFilter$Operator;"
        }
    .end annotation

    .line 605
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    .local p2, "operators":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/FieldFilter$Operator;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    .line 606
    .local v1, "filter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Filter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 607
    .local v3, "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 608
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v0

    return-object v0

    .line 610
    .end local v3    # "fieldFilter":Lcom/google/firebase/firestore/core/FieldFilter;
    :cond_0
    goto :goto_1

    .line 611
    .end local v1    # "filter":Lcom/google/firebase/firestore/core/Filter;
    :cond_1
    goto :goto_0

    .line 612
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getViaSnapshotListener(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1, "source"    # Lcom/google/firebase/firestore/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Source;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 979
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 980
    .local v0, "res":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/firestore/QuerySnapshot;>;"
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 982
    .local v1, "registration":Lcom/google/android/gms/tasks/TaskCompletionSource;, "Lcom/google/android/gms/tasks/TaskCompletionSource<Lcom/google/firebase/firestore/ListenerRegistration;>;"
    new-instance v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    invoke-direct {v2}, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;-><init>()V

    .line 983
    .local v2, "options":Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeDocumentMetadataChanges:Z

    .line 984
    iput-boolean v3, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeQueryMetadataChanges:Z

    .line 985
    iput-boolean v3, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->waitForSyncWhenOnline:Z

    .line 987
    sget-object v3, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, p1}, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;)V

    .line 988
    const/4 v5, 0x0

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/google/firebase/firestore/Query;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v3

    .line 1026
    .local v3, "listenerRegistration":Lcom/google/firebase/firestore/ListenerRegistration;
    invoke-virtual {v1, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 1028
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v4

    return-object v4
.end method

.method private static internalOptions(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .locals 4
    .param p0, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;

    .line 1241
    new-instance v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;-><init>()V

    .line 1242
    .local v0, "internalOptions":Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    sget-object v1, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeDocumentMetadataChanges:Z

    .line 1243
    sget-object v1, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeQueryMetadataChanges:Z

    .line 1244
    iput-boolean v3, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->waitForSyncWhenOnline:Z

    .line 1245
    return-object v0
.end method

.method static synthetic lambda$getViaSnapshotListener$1(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 6
    .param p0, "res"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p1, "registration"    # Lcom/google/android/gms/tasks/TaskCompletionSource;
    .param p2, "source"    # Lcom/google/firebase/firestore/Source;
    .param p3, "snapshot"    # Lcom/google/firebase/firestore/QuerySnapshot;
    .param p4, "error"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 994
    const-string v0, "Failed to register a listener for a query result"

    if-eqz p4, :cond_0

    .line 995
    invoke-virtual {p0, p4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 996
    return-void

    .line 1002
    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/ListenerRegistration;

    .line 1006
    .local v2, "actualRegistration":Lcom/google/firebase/firestore/ListenerRegistration;
    invoke-interface {v2}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 1008
    invoke-virtual {p3}, Lcom/google/firebase/firestore/QuerySnapshot;->getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/google/firebase/firestore/Source;->SERVER:Lcom/google/firebase/firestore/Source;

    if-ne p2, v3, :cond_1

    .line 1009
    new-instance v3, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string v4, "Failed to get documents from server. (However, these documents may exist in the local cache. Run again without setting source to SERVER to retrieve the cached documents.)"

    sget-object v5, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    invoke-virtual {p0, v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1016
    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1023
    .end local v2    # "actualRegistration":Lcom/google/firebase/firestore/ListenerRegistration;
    :goto_0
    nop

    .line 1024
    return-void

    .line 1020
    :catch_0
    move-exception v2

    .line 1021
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 1022
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0

    .line 1018
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v2

    .line 1019
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method private orderBy(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "direction"    # Lcom/google/firebase/firestore/Query$Direction;

    .line 668
    const-string v0, "Provided direction must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getStartAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    if-nez v0, :cond_2

    .line 674
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getEndAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    if-nez v0, :cond_1

    .line 680
    sget-object v0, Lcom/google/firebase/firestore/Query$Direction;->ASCENDING:Lcom/google/firebase/firestore/Query$Direction;

    if-ne p2, v0, :cond_0

    .line 681
    sget-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    goto :goto_0

    .line 682
    :cond_0
    sget-object v0, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    :goto_0
    nop

    .line 683
    .local v0, "dir":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/core/Query;->orderBy(Lcom/google/firebase/firestore/core/OrderBy;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1

    .line 675
    .end local v0    # "dir":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid query. You must not call Query.endAt() or Query.endBefore() before calling Query.orderBy()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 670
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid query. You must not call Query.startAt() or Query.startAfter() before calling Query.orderBy()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseCompositeFilter(Lcom/google/firebase/firestore/Filter$CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 5
    .param p1, "compositeFilterData"    # Lcom/google/firebase/firestore/Filter$CompositeFilter;

    .line 459
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v0, "parsedFilters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/Filter;

    .line 461
    .local v2, "filter":Lcom/google/firebase/firestore/Filter;
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/Query;->parseFilter(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v3

    .line 462
    .local v3, "parsedFilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/Filter;->getFilters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 463
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v2    # "filter":Lcom/google/firebase/firestore/Filter;
    .end local v3    # "parsedFilter":Lcom/google/firebase/firestore/core/Filter;
    :cond_0
    goto :goto_0

    .line 469
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 470
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/Filter;

    return-object v1

    .line 472
    :cond_2
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v1
.end method

.method private parseDocumentIdValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;
    .locals 5
    .param p1, "documentIdValue"    # Ljava/lang/Object;

    .line 494
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 495
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 496
    .local v0, "documentId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 501
    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query;->isCollectionGroupQuery()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid query. When querying a collection by FieldPath.documentId() you must provide a plain document ID, but \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' contains a \'/\' character."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-static {v0}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 509
    .local v1, "path":Lcom/google/firebase/firestore/model/ResourcePath;
    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 518
    invoke-virtual {p0}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v2

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object v2

    return-object v2

    .line 510
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid query. When querying a collection group by FieldPath.documentId(), the value provided must result in a valid document path, but \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is not because it has an odd number of segments ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 515
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    .end local v1    # "path":Lcom/google/firebase/firestore/model/ResourcePath;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid query. When querying with FieldPath.documentId() you must provide a valid document ID, but it was an empty string."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    .end local v0    # "documentId":Ljava/lang/String;
    :cond_4
    instance-of v0, p1, Lcom/google/firebase/firestore/DocumentReference;

    if-eqz v0, :cond_5

    .line 520
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/DocumentReference;

    .line 521
    .local v0, "ref":Lcom/google/firebase/firestore/DocumentReference;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    return-object v1

    .line 523
    .end local v0    # "ref":Lcom/google/firebase/firestore/DocumentReference;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid query. When querying with FieldPath.documentId() you must provide a valid String or DocumentReference, but it was of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 526
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->typeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseFieldFilter(Lcom/google/firebase/firestore/Filter$UnaryFilter;)Lcom/google/firebase/firestore/core/FieldFilter;
    .locals 8
    .param p1, "fieldFilterData"    # Lcom/google/firebase/firestore/Filter$UnaryFilter;

    .line 417
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;->getField()Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    .line 418
    .local v0, "fieldPath":Lcom/google/firebase/firestore/FieldPath;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    .line 419
    .local v1, "op":Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 420
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "Provided field path must not be null."

    invoke-static {v0, v3}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v3, "Provided op must not be null."

    invoke-static {v1, v3}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    .line 424
    .local v3, "internalPath":Lcom/google/firebase/firestore/model/FieldPath;
    invoke-virtual {v3}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 425
    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v4, :cond_3

    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v4, :cond_3

    .line 430
    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v4, :cond_1

    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/Query;->parseDocumentIdValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .local v4, "fieldValue":Lcom/google/firestore/v1/Value;
    goto/16 :goto_4

    .line 431
    .end local v4    # "fieldValue":Lcom/google/firestore/v1/Value;
    :cond_1
    :goto_0
    invoke-direct {p0, v2, v1}, Lcom/google/firebase/firestore/Query;->validateDisjunctiveFilterElements(Ljava/lang/Object;Lcom/google/firebase/firestore/core/FieldFilter$Operator;)V

    .line 432
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v4

    .line 433
    .local v4, "referenceList":Lcom/google/firestore/v1/ArrayValue$Builder;
    move-object v5, v2

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 434
    .local v6, "arrayValue":Ljava/lang/Object;
    invoke-direct {p0, v6}, Lcom/google/firebase/firestore/Query;->parseDocumentIdValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/google/firestore/v1/ArrayValue$Builder;->addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;

    .line 435
    .end local v6    # "arrayValue":Ljava/lang/Object;
    goto :goto_1

    .line 436
    :cond_2
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lcom/google/firestore/v1/Value;

    .line 437
    .local v4, "fieldValue":Lcom/google/firestore/v1/Value;
    goto :goto_4

    .line 426
    .end local v4    # "fieldValue":Lcom/google/firestore/v1/Value;
    :cond_3
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid query. You can\'t perform \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 428
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' queries on FieldPath.documentId()."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 441
    :cond_4
    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v4, :cond_5

    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v4, :cond_5

    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v1, v4, :cond_6

    .line 442
    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/google/firebase/firestore/Query;->validateDisjunctiveFilterElements(Ljava/lang/Object;Lcom/google/firebase/firestore/core/FieldFilter$Operator;)V

    .line 444
    :cond_6
    iget-object v4, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 446
    invoke-virtual {v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v5, :cond_8

    sget-object v5, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v1, v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v5, 0x1

    .line 447
    :goto_3
    invoke-virtual {v4, v2, v5}, Lcom/google/firebase/firestore/UserDataReader;->parseQueryValue(Ljava/lang/Object;Z)Lcom/google/firestore/v1/Value;

    move-result-object v4

    .line 449
    .restart local v4    # "fieldValue":Lcom/google/firestore/v1/Value;
    :goto_4
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v5

    invoke-static {v5, v1, v4}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v5

    .line 450
    .local v5, "filter":Lcom/google/firebase/firestore/core/FieldFilter;
    return-object v5
.end method

.method private parseFilter(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 3
    .param p1, "filter"    # Lcom/google/firebase/firestore/Filter;

    .line 480
    instance-of v0, p1, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/firebase/firestore/Filter$CompositeFilter;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "Parsing is only supported for Filter.UnaryFilter and Filter.CompositeFilter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 483
    instance-of v0, p1, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    if-eqz v0, :cond_2

    .line 484
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Query;->parseFieldFilter(Lcom/google/firebase/firestore/Filter$UnaryFilter;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v0

    return-object v0

    .line 486
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/Filter$CompositeFilter;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Query;->parseCompositeFilter(Lcom/google/firebase/firestore/Filter$CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    return-object v0
.end method

.method private validateDisjunctiveFilterElements(Ljava/lang/Object;Lcom/google/firebase/firestore/core/FieldFilter$Operator;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "op"    # Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 532
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    return-void

    .line 533
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Query. A non-empty array is required for \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 534
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' filters."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private validateHasExplicitOrderByForLimitToLast()V
    .locals 2

    .line 1170
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/Query$LimitType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "limitToLast() queries require specifying at least one orderBy() clause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1174
    :cond_1
    :goto_0
    return-void
.end method

.method private validateNewFieldFilter(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/FieldFilter;)V
    .locals 5
    .param p1, "query"    # Lcom/google/firebase/firestore/core/Query;
    .param p2, "fieldFilter"    # Lcom/google/firebase/firestore/core/FieldFilter;

    .line 570
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v0

    .line 572
    .local v0, "filterOp":Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Query;->conflictingOps(Lcom/google/firebase/firestore/core/FieldFilter$Operator;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/google/firebase/firestore/Query;->findOpInsideFilters(Ljava/util/List;Ljava/util/List;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    .line 573
    .local v1, "conflictingOp":Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    if-eqz v1, :cond_1

    .line 575
    if-ne v1, v0, :cond_0

    .line 576
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Query. You cannot use more than one \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 577
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' filter."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 579
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Query. You cannot use \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 581
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' filters with \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 583
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' filters."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 587
    :cond_1
    return-void
.end method

.method private validateNewFilter(Lcom/google/firebase/firestore/core/Filter;)V
    .locals 3
    .param p1, "filter"    # Lcom/google/firebase/firestore/core/Filter;

    .line 591
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    .line 592
    .local v0, "testQuery":Lcom/google/firebase/firestore/core/Query;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Filter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 593
    .local v2, "subfilter":Lcom/google/firebase/firestore/core/FieldFilter;
    invoke-direct {p0, v0, v2}, Lcom/google/firebase/firestore/Query;->validateNewFieldFilter(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/FieldFilter;)V

    .line 594
    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/core/Query;->filter(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    .line 595
    .end local v2    # "subfilter":Lcom/google/firebase/firestore/core/FieldFilter;
    goto :goto_0

    .line 596
    :cond_0
    return-void
.end method


# virtual methods
.method public addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1067
    .local p2, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/QuerySnapshot;>;"
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1120
    .local p3, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/QuerySnapshot;>;"
    const-string v0, "Provided activity must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string v0, "Provided MetadataChanges value must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string v0, "Provided EventListener must not be null."

    invoke-static {p3, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1124
    invoke-static {p2}, Lcom/google/firebase/firestore/Query;->internalOptions(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    move-result-object v1

    .line 1123
    invoke-direct {p0, v0, v1, p1, p3}, Lcom/google/firebase/firestore/Query;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1039
    .local p1, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/QuerySnapshot;>;"
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1081
    .local p2, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/QuerySnapshot;>;"
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1052
    .local p2, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/QuerySnapshot;>;"
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1098
    .local p3, "listener":Lcom/google/firebase/firestore/EventListener;, "Lcom/google/firebase/firestore/EventListener<Lcom/google/firebase/firestore/QuerySnapshot;>;"
    const-string v0, "Provided executor must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1099
    const-string v0, "Provided MetadataChanges value must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    const-string v0, "Provided EventListener must not be null."

    invoke-static {p3, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    invoke-static {p2}, Lcom/google/firebase/firestore/Query;->internalOptions(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p3}, Lcom/google/firebase/firestore/Query;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object v0

    return-object v0
.end method

.method public varargs aggregate(Lcom/google/firebase/firestore/AggregateField;[Lcom/google/firebase/firestore/AggregateField;)Lcom/google/firebase/firestore/AggregateQuery;
    .locals 2
    .param p1, "aggregateField"    # Lcom/google/firebase/firestore/AggregateField;
    .param p2, "aggregateFields"    # [Lcom/google/firebase/firestore/AggregateField;

    .line 1208
    new-instance v0, Lcom/google/firebase/firestore/Query$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/Query$1;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/AggregateField;)V

    .line 1214
    .local v0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/AggregateField;>;"
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1215
    new-instance v1, Lcom/google/firebase/firestore/AggregateQuery;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/firestore/AggregateQuery;-><init>(Lcom/google/firebase/firestore/Query;Ljava/util/List;)V

    return-object v1
.end method

.method public count()Lcom/google/firebase/firestore/AggregateQuery;
    .locals 2

    .line 1190
    new-instance v0, Lcom/google/firebase/firestore/AggregateQuery;

    invoke-static {}, Lcom/google/firebase/firestore/AggregateField;->count()Lcom/google/firebase/firestore/AggregateField$CountAggregateField;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateQuery;-><init>(Lcom/google/firebase/firestore/Query;Ljava/util/List;)V

    return-object v0
.end method

.method public endAt(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 816
    const-string v0, "endAt"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    .line 817
    .local v0, "bound":Lcom/google/firebase/firestore/core/Bound;
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/Query;->endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public varargs endAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "fieldValues"    # [Ljava/lang/Object;

    .line 830
    const-string v0, "endAt"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    .line 831
    .local v0, "bound":Lcom/google/firebase/firestore/core/Bound;
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/Query;->endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public endBefore(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 788
    const-string v0, "endBefore"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    .line 789
    .local v0, "bound":Lcom/google/firebase/firestore/core/Bound;
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/Query;->endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public varargs endBefore([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "fieldValues"    # [Ljava/lang/Object;

    .line 802
    const-string v0, "endBefore"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    .line 803
    .local v0, "bound":Lcom/google/firebase/firestore/core/Bound;
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/Query;->endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 1220
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1221
    return v0

    .line 1223
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/Query;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1224
    return v2

    .line 1227
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/Query;

    .line 1229
    .local v1, "that":Lcom/google/firebase/firestore/Query;
    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v4, v1, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/core/Query;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v4, v1, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 949
    sget-object v0, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1, "source"    # Lcom/google/firebase/firestore/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Source;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 964
    invoke-direct {p0}, Lcom/google/firebase/firestore/Query;->validateHasExplicitOrderByForLimitToLast()V

    .line 965
    sget-object v0, Lcom/google/firebase/firestore/Source;->CACHE:Lcom/google/firebase/firestore/Source;

    if-ne p1, v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 967
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getClient()Lcom/google/firebase/firestore/core/FirestoreClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    .line 968
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->getDocumentsFromLocalCache(Lcom/google/firebase/firestore/core/Query;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/Query;)V

    .line 969
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    .line 966
    return-object v0

    .line 974
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Query;->getViaSnapshotListener(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1234
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->hashCode()I

    move-result v0

    .line 1235
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1236
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method synthetic lambda$addSnapshotListenerInternal$2$com-google-firebase-firestore-Query(Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 4
    .param p1, "userListener"    # Lcom/google/firebase/firestore/EventListener;
    .param p2, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;
    .param p3, "error"    # Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 1148
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1149
    invoke-interface {p1, v0, p3}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 1150
    return-void

    .line 1153
    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    const-string v3, "Got event without value or error set"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1155
    new-instance v1, Lcom/google/firebase/firestore/QuerySnapshot;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, p0, p2, v2}, Lcom/google/firebase/firestore/QuerySnapshot;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 1156
    .local v1, "querySnapshot":Lcom/google/firebase/firestore/QuerySnapshot;
    invoke-interface {p1, v1, v0}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    .line 1157
    return-void
.end method

.method synthetic lambda$get$0$com-google-firebase-firestore-Query(Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/QuerySnapshot;
    .locals 4
    .param p1, "viewSnap"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 972
    new-instance v0, Lcom/google/firebase/firestore/QuerySnapshot;

    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/ViewSnapshot;

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/firestore/QuerySnapshot;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public limit(J)Lcom/google/firebase/firestore/Query;
    .locals 3
    .param p1, "limit"    # J

    .line 695
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 699
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/firestore/core/Query;->limitToFirst(J)Lcom/google/firebase/firestore/core/Query;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Query. Query limit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid. Limit must be positive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public limitToLast(J)Lcom/google/firebase/firestore/Query;
    .locals 3
    .param p1, "limit"    # J

    .line 714
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 718
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/firestore/core/Query;->limitToLast(J)Lcom/google/firebase/firestore/core/Query;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0

    .line 715
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Query. Query limitToLast ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is invalid. Limit must be positive."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orderBy(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/Query;
    .locals 2
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;

    .line 634
    const-string v0, "Provided field path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/Query$Direction;->ASCENDING:Lcom/google/firebase/firestore/Query$Direction;

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public orderBy(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "direction"    # Lcom/google/firebase/firestore/Query$Direction;

    .line 661
    const-string v0, "Provided field path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public orderBy(Ljava/lang/String;)Lcom/google/firebase/firestore/Query;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .line 623
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/Query$Direction;->ASCENDING:Lcom/google/firebase/firestore/Query$Direction;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "direction"    # Lcom/google/firebase/firestore/Query$Direction;

    .line 648
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public startAfter(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 759
    const-string v0, "startAfter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    .line 760
    .local v0, "bound":Lcom/google/firebase/firestore/core/Bound;
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/Query;->startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public varargs startAfter([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "fieldValues"    # [Ljava/lang/Object;

    .line 774
    const-string v0, "startAfter"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    .line 775
    .local v0, "bound":Lcom/google/firebase/firestore/core/Bound;
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/Query;->startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public startAt(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 731
    const-string v0, "startAt"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    .line 732
    .local v0, "bound":Lcom/google/firebase/firestore/core/Bound;
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/Query;->startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public varargs startAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "fieldValues"    # [Ljava/lang/Object;

    .line 745
    const-string v0, "startAt"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    .line 746
    .local v0, "bound":Lcom/google/firebase/firestore/core/Bound;
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/Query;->startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;
    .locals 4
    .param p1, "filter"    # Lcom/google/firebase/firestore/Filter;

    .line 400
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Query;->parseFilter(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v0

    .line 401
    .local v0, "parsedFilter":Lcom/google/firebase/firestore/core/Filter;
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Filter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    return-object p0

    .line 405
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Query;->validateNewFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 406
    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v2, v0}, Lcom/google/firebase/firestore/core/Query;->filter(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v1
.end method

.method public whereArrayContains(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "value"    # Ljava/lang/Object;

    .line 279
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->arrayContains(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereArrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 262
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->arrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereArrayContainsAny(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 315
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->arrayContainsAny(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereArrayContainsAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 297
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->arrayContainsAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "value"    # Ljava/lang/Object;

    .line 109
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->equalTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 96
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->equalTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereGreaterThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "value"    # Ljava/lang/Object;

    .line 219
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->greaterThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 206
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->greaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereGreaterThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "value"    # Ljava/lang/Object;

    .line 245
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->greaterThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 232
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->greaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereIn(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 347
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->inArray(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereIn(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 331
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->inArray(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereLessThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "value"    # Ljava/lang/Object;

    .line 167
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->lessThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 154
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->lessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereLessThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "value"    # Ljava/lang/Object;

    .line 193
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->lessThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 180
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->lessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereNotEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "value"    # Ljava/lang/Object;

    .line 141
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->notEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 125
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->notEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereNotIn(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 389
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->notInArray(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method

.method public whereNotIn(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 368
    .local p2, "values":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->notInArray(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object v0

    return-object v0
.end method
