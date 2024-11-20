.class public final Lcom/google/firebase/firestore/local/LocalViewChanges;
.super Ljava/lang/Object;
.source "LocalViewChanges.java"


# instance fields
.field private final added:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final fromCache:Z

.field private final removed:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final targetId:I


# direct methods
.method public constructor <init>(IZLcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V
    .locals 0
    .param p1, "targetId"    # I
    .param p2, "fromCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p3, "added":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    .local p4, "removed":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/google/firebase/firestore/local/LocalViewChanges;->targetId:I

    .line 67
    iput-boolean p2, p0, Lcom/google/firebase/firestore/local/LocalViewChanges;->fromCache:Z

    .line 68
    iput-object p3, p0, Lcom/google/firebase/firestore/local/LocalViewChanges;->added:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 69
    iput-object p4, p0, Lcom/google/firebase/firestore/local/LocalViewChanges;->removed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 70
    return-void
.end method

.method public static fromViewSnapshot(ILcom/google/firebase/firestore/core/ViewSnapshot;)Lcom/google/firebase/firestore/local/LocalViewChanges;
    .locals 6
    .param p0, "targetId"    # I
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 31
    new-instance v0, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 33
    .local v0, "addedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    new-instance v1, Lcom/google/firebase/database/collection/ImmutableSortedSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/database/collection/ImmutableSortedSet;-><init>(Ljava/util/List;Ljava/util/Comparator;)V

    .line 36
    .local v1, "removedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 37
    .local v3, "docChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    sget-object v4, Lcom/google/firebase/firestore/local/LocalViewChanges$1;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 43
    :pswitch_0
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 44
    goto :goto_1

    .line 39
    :pswitch_1
    invoke-virtual {v3}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 40
    nop

    .line 50
    .end local v3    # "docChange":Lcom/google/firebase/firestore/core/DocumentViewChange;
    :goto_1
    goto :goto_0

    .line 52
    :cond_0
    new-instance v2, Lcom/google/firebase/firestore/local/LocalViewChanges;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v3

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/google/firebase/firestore/local/LocalViewChanges;-><init>(IZLcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAdded()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalViewChanges;->added:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public getRemoved()Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalViewChanges;->removed:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/google/firebase/firestore/local/LocalViewChanges;->targetId:I

    return v0
.end method

.method public isFromCache()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/google/firebase/firestore/local/LocalViewChanges;->fromCache:Z

    return v0
.end method
