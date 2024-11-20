.class Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;
.super Ljava/lang/Object;
.source "MemoryIndexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/MemoryIndexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MemoryCollectionParentIndex"
.end annotation


# instance fields
.field private final index:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->index:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method add(Lcom/google/firebase/firestore/model/ResourcePath;)Z
    .locals 4
    .param p1, "collectionPath"    # Lcom/google/firebase/firestore/model/ResourcePath;

    .line 131
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v0, "Expected a collection path."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->getLastSegment()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "collectionId":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->popLast()Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 135
    .local v1, "parentPath":Lcom/google/firebase/firestore/model/ResourcePath;
    iget-object v2, p0, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->index:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    .line 136
    .local v2, "existingParents":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    if-nez v2, :cond_1

    .line 137
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move-object v2, v3

    .line 138
    iget-object v3, p0, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->index:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method getEntries(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "collectionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/ResourcePath;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryIndexManager$MemoryCollectionParentIndex;->index:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 145
    .local v0, "existingParents":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/google/firebase/firestore/model/ResourcePath;>;"
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1
.end method
