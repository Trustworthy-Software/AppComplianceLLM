.class public final Lcom/google/firebase/firestore/model/mutation/VerifyMutation;
.super Lcom/google/firebase/firestore/model/mutation/Mutation;
.source "VerifyMutation.java"


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "precondition"    # Lcom/google/firebase/firestore/model/mutation/Precondition;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/model/mutation/Mutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)V

    .line 34
    return-void
.end method


# virtual methods
.method public applyToLocalView(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/Timestamp;)Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 2
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "previousMask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .param p3, "localWriteTime"    # Lcom/google/firebase/Timestamp;

    .line 67
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VerifyMutation should only be used in Transactions."

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public applyToRemoteDocument(Lcom/google/firebase/firestore/model/MutableDocument;Lcom/google/firebase/firestore/model/mutation/MutationResult;)V
    .locals 2
    .param p1, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .param p2, "mutationResult"    # Lcom/google/firebase/firestore/model/mutation/MutationResult;

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VerifyMutation should only be used in Transactions."

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 38
    if-ne p0, p1, :cond_0

    .line 39
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 45
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/model/mutation/VerifyMutation;

    .line 46
    .local v0, "that":Lcom/google/firebase/firestore/model/mutation/VerifyMutation;
    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/mutation/VerifyMutation;->hasSameKeyAndPrecondition(Lcom/google/firebase/firestore/model/mutation/Mutation;)Z

    move-result v1

    return v1

    .line 42
    .end local v0    # "that":Lcom/google/firebase/firestore/model/mutation/VerifyMutation;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 1

    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/VerifyMutation;->keyAndPreconditionHashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VerifyMutation{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/VerifyMutation;->keyAndPreconditionToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
