.class public interface abstract Lcom/google/firebase/firestore/model/mutation/TransformOperation;
.super Ljava/lang/Object;
.source "TransformOperation.java"


# virtual methods
.method public abstract applyToLocalView(Lcom/google/firestore/v1/Value;Lcom/google/firebase/Timestamp;)Lcom/google/firestore/v1/Value;
.end method

.method public abstract applyToRemoteDocument(Lcom/google/firestore/v1/Value;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
.end method

.method public abstract computeBaseValue(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/Value;
.end method
