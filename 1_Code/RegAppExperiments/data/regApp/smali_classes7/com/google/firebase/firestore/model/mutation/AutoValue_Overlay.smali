.class final Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;
.super Lcom/google/firebase/firestore/model/mutation/Overlay;
.source "AutoValue_Overlay.java"


# instance fields
.field private final largestBatchId:I

.field private final mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;


# direct methods
.method constructor <init>(ILcom/google/firebase/firestore/model/mutation/Mutation;)V
    .locals 2
    .param p1, "largestBatchId"    # I
    .param p2, "mutation"    # Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 16
    invoke-direct {p0}, Lcom/google/firebase/firestore/model/mutation/Overlay;-><init>()V

    .line 17
    iput p1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    .line 18
    if-eqz p2, :cond_0

    .line 21
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 22
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null mutation"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 44
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 45
    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/model/mutation/Overlay;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 48
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/model/mutation/Overlay;

    .line 49
    .local v1, "that":Lcom/google/firebase/firestore/model/mutation/Overlay;
    iget v3, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/Overlay;->getLargestBatchId()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 50
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/mutation/Overlay;->getMutation()Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 49
    :goto_0
    return v0

    .line 52
    .end local v1    # "that":Lcom/google/firebase/firestore/model/mutation/Overlay;
    :cond_2
    return v2
.end method

.method public getLargestBatchId()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    return v0
.end method

.method public getMutation()Lcom/google/firebase/firestore/model/mutation/Mutation;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 57
    const/4 v0, 0x1

    .line 58
    .local v0, "h$":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 59
    iget v2, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    xor-int/2addr v0, v2

    .line 60
    mul-int/2addr v0, v1

    .line 61
    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 62
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Overlay{largestBatchId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->largestBatchId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mutation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;->mutation:Lcom/google/firebase/firestore/model/mutation/Mutation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
