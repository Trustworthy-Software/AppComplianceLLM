.class public Lcom/google/firebase/firestore/local/ReferenceSet;
.super Ljava/lang/Object;
.source "ReferenceSet.java"


# instance fields
.field private referencesByKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/local/DocumentReference;",
            ">;"
        }
    .end annotation
.end field

.field private referencesByTarget:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/local/DocumentReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/local/DocumentReference;->BY_KEY:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 46
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/google/firebase/firestore/local/DocumentReference;->BY_TARGET:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByTarget:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 47
    return-void
.end method

.method private removeReference(Lcom/google/firebase/firestore/local/DocumentReference;)V
    .locals 1
    .param p1, "ref"    # Lcom/google/firebase/firestore/local/DocumentReference;

    .line 111
    iget-object v0, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 112
    iget-object v0, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByTarget:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByTarget:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 113
    return-void
.end method


# virtual methods
.method public addReference(Lcom/google/firebase/firestore/model/DocumentKey;I)V
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "targetOrBatchId"    # I

    .line 56
    new-instance v0, Lcom/google/firebase/firestore/local/DocumentReference;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 57
    .local v0, "ref":Lcom/google/firebase/firestore/local/DocumentReference;
    iget-object v1, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 58
    iget-object v1, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByTarget:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByTarget:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 59
    return-void
.end method

.method public addReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V
    .locals 2
    .param p2, "targetOrBatchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;I)V"
        }
    .end annotation

    .line 63
    .local p1, "keys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 64
    .local v1, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {p0, v1, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->addReference(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 65
    .end local v1    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method public containsKey(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 4
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 134
    new-instance v0, Lcom/google/firebase/firestore/local/DocumentReference;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 136
    .local v0, "ref":Lcom/google/firebase/firestore/local/DocumentReference;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 137
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/local/DocumentReference;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 138
    return v1

    .line 141
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/DocumentReference;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/local/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    .line 142
    .local v1, "firstKey":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public isEmpty()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public referencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 6
    .param p1, "target"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 117
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->empty()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 118
    .local v0, "emptyKey":Lcom/google/firebase/firestore/model/DocumentKey;
    new-instance v1, Lcom/google/firebase/firestore/local/DocumentReference;

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 120
    .local v1, "startRef":Lcom/google/firebase/firestore/local/DocumentReference;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByTarget:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 121
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/local/DocumentReference;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 122
    .local v3, "keys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 123
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/local/DocumentReference;

    .line 124
    .local v4, "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/DocumentReference;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 125
    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 129
    .end local v4    # "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    goto :goto_0

    .line 130
    :cond_0
    return-object v3
.end method

.method public removeAllReferences()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByKey:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/local/DocumentReference;

    .line 106
    .local v1, "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReference(Lcom/google/firebase/firestore/local/DocumentReference;)V

    .line 107
    .end local v1    # "reference":Lcom/google/firebase/firestore/local/DocumentReference;
    goto :goto_0

    .line 108
    :cond_0
    return-void
.end method

.method public removeReference(Lcom/google/firebase/firestore/model/DocumentKey;I)V
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "targetOrBatchId"    # I

    .line 70
    new-instance v0, Lcom/google/firebase/firestore/local/DocumentReference;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReference(Lcom/google/firebase/firestore/local/DocumentReference;)V

    .line 71
    return-void
.end method

.method public removeReferences(Lcom/google/firebase/database/collection/ImmutableSortedSet;I)V
    .locals 2
    .param p2, "targetOrBatchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;I)V"
        }
    .end annotation

    .line 75
    .local p1, "keys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 76
    .local v1, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-virtual {p0, v1, p2}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReference(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 77
    .end local v1    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public removeReferencesForId(I)Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 6
    .param p1, "targetId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 86
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->empty()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 87
    .local v0, "emptyKey":Lcom/google/firebase/firestore/model/DocumentKey;
    new-instance v1, Lcom/google/firebase/firestore/local/DocumentReference;

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/firestore/local/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;I)V

    .line 88
    .local v1, "startRef":Lcom/google/firebase/firestore/local/DocumentReference;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/ReferenceSet;->referencesByTarget:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iteratorFrom(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v2

    .line 89
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/local/DocumentReference;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 90
    .local v3, "keys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/local/DocumentReference;

    .line 92
    .local v4, "ref":Lcom/google/firebase/firestore/local/DocumentReference;
    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/DocumentReference;->getId()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 93
    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v3

    .line 94
    invoke-direct {p0, v4}, Lcom/google/firebase/firestore/local/ReferenceSet;->removeReference(Lcom/google/firebase/firestore/local/DocumentReference;)V

    .line 98
    .end local v4    # "ref":Lcom/google/firebase/firestore/local/DocumentReference;
    goto :goto_0

    .line 100
    :cond_0
    return-object v3
.end method
