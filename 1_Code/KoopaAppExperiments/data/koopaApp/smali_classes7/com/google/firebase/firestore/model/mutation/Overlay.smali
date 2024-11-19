.class public abstract Lcom/google/firebase/firestore/model/mutation/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(ILcom/google/firebase/firestore/model/mutation/Mutation;)Lcom/google/firebase/firestore/model/mutation/Overlay;
    .locals 1
    .param p0, "largestBatchId"    # I
    .param p1, "mutation"    # Lcom/google/firebase/firestore/model/mutation/Mutation;

    .line 29
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/model/mutation/AutoValue_Overlay;-><init>(ILcom/google/firebase/firestore/model/mutation/Mutation;)V

    return-object v0
.end method


# virtual methods
.method public getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Overlay;->getMutation()Lcom/google/firebase/firestore/model/mutation/Mutation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/mutation/Mutation;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLargestBatchId()I
.end method

.method public abstract getMutation()Lcom/google/firebase/firestore/model/mutation/Mutation;
.end method
