.class public Lcom/google/firebase/firestore/core/LimboDocumentChange;
.super Ljava/lang/Object;
.source "LimboDocumentChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;
    }
.end annotation


# instance fields
.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final type:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 0
    .param p1, "type"    # Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;
    .param p2, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/firestore/core/LimboDocumentChange;->type:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    .line 33
    iput-object p2, p0, Lcom/google/firebase/firestore/core/LimboDocumentChange;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 46
    instance-of v0, p1, Lcom/google/firebase/firestore/core/LimboDocumentChange;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 47
    return v1

    .line 49
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/core/LimboDocumentChange;

    .line 50
    .local v0, "other":Lcom/google/firebase/firestore/core/LimboDocumentChange;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/LimboDocumentChange;->type:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getType()Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/firestore/core/LimboDocumentChange;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/LimboDocumentChange;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/google/firebase/firestore/core/LimboDocumentChange;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getType()Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/firebase/firestore/core/LimboDocumentChange;->type:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 55
    const/16 v0, 0x43

    .line 56
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/LimboDocumentChange;->type:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 57
    .end local v0    # "res":I
    .local v1, "res":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/LimboDocumentChange;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 58
    .end local v1    # "res":I
    .restart local v0    # "res":I
    return v0
.end method
