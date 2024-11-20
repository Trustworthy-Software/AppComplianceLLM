.class public final Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;
.super Lcom/google/firebase/firestore/remote/WatchChange;
.source "WatchChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/WatchChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentChange"
.end annotation


# instance fields
.field private final documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final newDocument:Lcom/google/firebase/firestore/model/MutableDocument;

.field private final removedTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final updatedTargetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;)V
    .locals 1
    .param p3, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p4, "document"    # Lcom/google/firebase/firestore/model/MutableDocument;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ")V"
        }
    .end annotation

    .line 62
    .local p1, "updatedTargetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "removedTargetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/WatchChange;-><init>(Lcom/google/firebase/firestore/remote/WatchChange$1;)V

    .line 63
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->updatedTargetIds:Ljava/util/List;

    .line 64
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->removedTargetIds:Ljava/util/List;

    .line 65
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 66
    iput-object p4, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->newDocument:Lcom/google/firebase/firestore/model/MutableDocument;

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 106
    return v0

    .line 108
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 112
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;

    .line 114
    .local v2, "that":Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->updatedTargetIds:Ljava/util/List;

    iget-object v4, v2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->updatedTargetIds:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 115
    return v1

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->removedTargetIds:Ljava/util/List;

    iget-object v4, v2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->removedTargetIds:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 118
    return v1

    .line 120
    :cond_3
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v4, v2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 121
    return v1

    .line 123
    :cond_4
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->newDocument:Lcom/google/firebase/firestore/model/MutableDocument;

    if-eqz v3, :cond_5

    iget-object v0, v2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->newDocument:Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {v3, v0}, Lcom/google/firebase/firestore/model/MutableDocument;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v3, v2, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->newDocument:Lcom/google/firebase/firestore/model/MutableDocument;

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0

    .line 109
    .end local v2    # "that":Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;
    :cond_7
    :goto_1
    return v1
.end method

.method public getDocumentKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getNewDocument()Lcom/google/firebase/firestore/model/MutableDocument;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->newDocument:Lcom/google/firebase/firestore/model/MutableDocument;

    return-object v0
.end method

.method public getRemovedTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->removedTargetIds:Ljava/util/List;

    return-object v0
.end method

.method public getUpdatedTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->updatedTargetIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->updatedTargetIds:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 129
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->removedTargetIds:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 130
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 131
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->newDocument:Lcom/google/firebase/firestore/model/MutableDocument;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/MutableDocument;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 132
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentChange{updatedTargetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->updatedTargetIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removedTargetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->removedTargetIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->documentKey:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newDocument="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;->newDocument:Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
