.class public Lcom/google/firebase/firestore/WriteBatch;
.super Ljava/lang/Object;
.source "WriteBatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/WriteBatch$Function;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final mutations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/firebase/firestore/model/mutation/Mutation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 1
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->mutations:Ljava/util/ArrayList;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/WriteBatch;->committed:Z

    .line 52
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    iput-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 53
    return-void
.end method

.method private update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/firebase/firestore/WriteBatch;
    .locals 3
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "updateData"    # Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    .line 164
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->validateReference(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 165
    invoke-direct {p0}, Lcom/google/firebase/firestore/WriteBatch;->verifyNotCommitted()V

    .line 166
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->mutations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists(Z)Lcom/google/firebase/firestore/model/mutation/Precondition;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->toMutation(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-object p0
.end method

.method private verifyNotCommitted()V
    .locals 2

    .line 201
    iget-boolean v0, p0, Lcom/google/firebase/firestore/WriteBatch;->committed:Z

    if-nez v0, :cond_0

    .line 205
    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A write batch can no longer be used after commit() has been called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public commit()Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 191
    invoke-direct {p0}, Lcom/google/firebase/firestore/WriteBatch;->verifyNotCommitted()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/WriteBatch;->committed:Z

    .line 193
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getClient()Lcom/google/firebase/firestore/core/FirestoreClient;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/WriteBatch;->mutations:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/FirestoreClient;->write(Ljava/util/List;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/google/firebase/firestore/DocumentReference;)Lcom/google/firebase/firestore/WriteBatch;
    .locals 4
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;

    .line 178
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->validateReference(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 179
    invoke-direct {p0}, Lcom/google/firebase/firestore/WriteBatch;->verifyNotCommitted()V

    .line 180
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->mutations:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/model/mutation/DeleteMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-object p0
.end method

.method public set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;)Lcom/google/firebase/firestore/WriteBatch;
    .locals 1
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "data"    # Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/google/firebase/firestore/SetOptions;->OVERWRITE:Lcom/google/firebase/firestore/SetOptions;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/firestore/WriteBatch;->set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/Object;Lcom/google/firebase/firestore/SetOptions;)Lcom/google/firebase/firestore/WriteBatch;
    .locals 4
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "options"    # Lcom/google/firebase/firestore/SetOptions;

    .line 83
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->validateReference(Lcom/google/firebase/firestore/DocumentReference;)V

    .line 84
    const-string v0, "Provided data must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "Provided options must not be null."

    invoke-static {p3, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-direct {p0}, Lcom/google/firebase/firestore/WriteBatch;->verifyNotCommitted()V

    .line 88
    invoke-virtual {p3}, Lcom/google/firebase/firestore/SetOptions;->isMerge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    invoke-virtual {p3}, Lcom/google/firebase/firestore/SetOptions;->getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseMergeData(Ljava/lang/Object;Lcom/google/firebase/firestore/model/mutation/FieldMask;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseSetData(Ljava/lang/Object;)Lcom/google/firebase/firestore/core/UserData$ParsedSetData;

    move-result-object v0

    :goto_0
    nop

    .line 91
    .local v0, "parsed":Lcom/google/firebase/firestore/core/UserData$ParsedSetData;
    iget-object v1, p0, Lcom/google/firebase/firestore/WriteBatch;->mutations:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    invoke-virtual {v0, v2, v3}, Lcom/google/firebase/firestore/core/UserData$ParsedSetData;->toMutation(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-object p0
.end method

.method public varargs update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/WriteBatch;
    .locals 2
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "moreFieldsAndValues"    # [Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 155
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    .line 157
    const/4 v1, 0x1

    invoke-static {v1, p2, p3, p4}, Lcom/google/firebase/firestore/util/Util;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseUpdateData(Ljava/util/List;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v0

    .line 159
    .local v0, "parsedData":Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/WriteBatch;->update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v1

    return-object v1
.end method

.method public varargs update(Lcom/google/firebase/firestore/DocumentReference;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/google/firebase/firestore/WriteBatch;
    .locals 2
    .param p1, "documentRef"    # Lcom/google/firebase/firestore/DocumentReference;
    .param p2, "field"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "moreFieldsAndValues"    # [Ljava/lang/Object;

    .line 128
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 130
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    .line 132
    const/4 v1, 0x1

    invoke-static {v1, p2, p3, p4}, Lcom/google/firebase/firestore/util/Util;->collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/UserDataReader;->parseUpdateData(Ljava/util/List;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v0

    .line 134
    .local v0, "parsedData":Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/WriteBatch;->update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/google/firebase/firestore/DocumentReference;Ljava/util/Map;)Lcom/google/firebase/firestore/WriteBatch;
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
            "Lcom/google/firebase/firestore/WriteBatch;"
        }
    .end annotation

    .line 107
    .local p2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/google/firebase/firestore/WriteBatch;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/firestore/UserDataReader;->parseUpdateData(Ljava/util/Map;)Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;

    move-result-object v0

    .line 108
    .local v0, "parsedData":Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/WriteBatch;->update(Lcom/google/firebase/firestore/DocumentReference;Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;)Lcom/google/firebase/firestore/WriteBatch;

    move-result-object v1

    return-object v1
.end method
