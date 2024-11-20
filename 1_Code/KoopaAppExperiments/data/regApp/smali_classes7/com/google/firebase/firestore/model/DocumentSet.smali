.class public final Lcom/google/firebase/firestore/model/DocumentSet;
.super Ljava/lang/Object;
.source "DocumentSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/google/firebase/firestore/model/Document;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field private final sortedSet:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "keyIndex":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    .local p2, "sortedSet":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/Document;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 70
    iput-object p2, p0, Lcom/google/firebase/firestore/model/DocumentSet;->sortedSet:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 71
    return-void
.end method

.method public static emptySet(Ljava/util/Comparator;)Lcom/google/firebase/firestore/model/DocumentSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;)",
            "Lcom/google/firebase/firestore/model/DocumentSet;"
        }
    .end annotation

    .line 39
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/firebase/firestore/model/Document;>;"
    new-instance v0, Lcom/google/firebase/firestore/model/DocumentSet$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/model/DocumentSet$$ExternalSyntheticLambda0;-><init>(Ljava/util/Comparator;)V

    .line 49
    .local v0, "adjustedComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/google/firebase/firestore/model/Document;>;"
    new-instance v1, Lcom/google/firebase/firestore/model/DocumentSet;

    .line 50
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentCollections;->emptyDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/model/DocumentSet;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    .line 49
    return-object v1
.end method

.method static synthetic lambda$emptySet$0(Ljava/util/Comparator;Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I
    .locals 2
    .param p0, "comparator"    # Ljava/util/Comparator;
    .param p1, "left"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "right"    # Lcom/google/firebase/firestore/model/Document;

    .line 41
    invoke-interface {p0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 42
    .local v0, "comparison":I
    if-nez v0, :cond_0

    .line 43
    sget-object v1, Lcom/google/firebase/firestore/model/Document;->KEY_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 45
    :cond_0
    return v0
.end method


# virtual methods
.method public add(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/DocumentSet;
    .locals 4
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 146
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/model/DocumentSet;->remove(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v0

    .line 148
    .local v0, "removed":Lcom/google/firebase/firestore/model/DocumentSet;
    iget-object v1, v0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 149
    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 150
    .local v1, "newKeyIndex":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    iget-object v2, v0, Lcom/google/firebase/firestore/model/DocumentSet;->sortedSet:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, p1}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 151
    .local v2, "newSortedSet":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/Document;>;"
    new-instance v3, Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-direct {v3, v1, v2}, Lcom/google/firebase/firestore/model/DocumentSet;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v3
.end method

.method public contains(Lcom/google/firebase/firestore/model/DocumentKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 83
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .line 186
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 187
    return v0

    .line 189
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/model/DocumentSet;

    .line 195
    .local v2, "documentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 196
    return v1

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 200
    .local v3, "thisIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/Document;>;"
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 201
    .local v4, "otherIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/Document;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/Document;

    .line 203
    .local v5, "thisDoc":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/model/Document;

    .line 204
    .local v6, "otherDoc":Lcom/google/firebase/firestore/model/Document;
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 205
    return v1

    .line 207
    .end local v5    # "thisDoc":Lcom/google/firebase/firestore/model/Document;
    .end local v6    # "otherDoc":Lcom/google/firebase/firestore/model/Document;
    :cond_3
    goto :goto_0

    .line 209
    :cond_4
    return v0

    .line 190
    .end local v2    # "documentSet":Lcom/google/firebase/firestore/model/DocumentSet;
    .end local v3    # "thisIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/Document;>;"
    .end local v4    # "otherIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/Document;>;"
    :cond_5
    :goto_1
    return v1
.end method

.method public getDocument(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 89
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    return-object v0
.end method

.method public getFirstDocument()Lcom/google/firebase/firestore/model/Document;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->sortedSet:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getMinEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    return-object v0
.end method

.method public getLastDocument()Lcom/google/firebase/firestore/model/Document;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->sortedSet:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getMaxEntry()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    return-object v0
.end method

.method public getPredecessor(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/Document;
    .locals 4
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 120
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    .line 121
    .local v0, "document":Lcom/google/firebase/firestore/model/Document;
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/google/firebase/firestore/model/DocumentSet;->sortedSet:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->getPredecessorEntry(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/Document;

    return-object v1

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key not contained in DocumentSet: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 5

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    .line 216
    .local v2, "document":Lcom/google/firebase/firestore/model/Document;
    mul-int/lit8 v3, v0, 0x1f

    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 217
    .end local v0    # "result":I
    .local v3, "result":I
    mul-int/lit8 v0, v3, 0x1f

    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/firestore/model/ObjectValue;->hashCode()I

    move-result v4

    add-int/2addr v0, v4

    .line 218
    .end local v2    # "document":Lcom/google/firebase/firestore/model/Document;
    .end local v3    # "result":I
    .restart local v0    # "result":I
    goto :goto_0

    .line 219
    :cond_0
    return v0
.end method

.method public indexOf(Lcom/google/firebase/firestore/model/DocumentKey;)I
    .locals 2
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 132
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    .line 133
    .local v0, "document":Lcom/google/firebase/firestore/model/Document;
    if-nez v0, :cond_0

    .line 134
    const/4 v1, -0x1

    return v1

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/model/DocumentSet;->sortedSet:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v1, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->sortedSet:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/DocumentSet;
    .locals 4
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    .line 157
    .local v0, "document":Lcom/google/firebase/firestore/model/Document;
    if-nez v0, :cond_0

    .line 158
    return-object p0

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v1, p1}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v1

    .line 162
    .local v1, "newKeyIndex":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    iget-object v2, p0, Lcom/google/firebase/firestore/model/DocumentSet;->sortedSet:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    invoke-virtual {v2, v0}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->remove(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 163
    .local v2, "newSortedSet":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/Document;>;"
    new-instance v3, Lcom/google/firebase/firestore/model/DocumentSet;

    invoke-direct {v3, v1, v2}, Lcom/google/firebase/firestore/model/DocumentSet;-><init>(Lcom/google/firebase/database/collection/ImmutableSortedMap;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v3
.end method

.method public size()I
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/google/firebase/firestore/model/DocumentSet;->keyIndex:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->size()I

    move-result v0

    return v0
.end method

.method public toList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DocumentSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v0, "documents":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/Document;>;"
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/model/Document;

    .line 173
    .local v2, "document":Lcom/google/firebase/firestore/model/Document;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    .end local v2    # "document":Lcom/google/firebase/firestore/model/Document;
    goto :goto_0

    .line 175
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 226
    .local v1, "first":Z
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/DocumentSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/Document;

    .line 227
    .local v3, "doc":Lcom/google/firebase/firestore/model/Document;
    if-eqz v1, :cond_0

    .line 228
    const/4 v1, 0x0

    goto :goto_1

    .line 230
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    .end local v3    # "doc":Lcom/google/firebase/firestore/model/Document;
    goto :goto_0

    .line 234
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
