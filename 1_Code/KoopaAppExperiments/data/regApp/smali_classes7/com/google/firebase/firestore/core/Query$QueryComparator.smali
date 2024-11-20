.class Lcom/google/firebase/firestore/core/Query$QueryComparator;
.super Ljava/lang/Object;
.source "Query.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/Query;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/firebase/firestore/model/Document;",
        ">;"
    }
.end annotation


# instance fields
.field private final sortOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;)V"
        }
    .end annotation

    .line 430
    .local p1, "order":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, "hasKeyOrdering":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/core/OrderBy;

    .line 433
    .local v2, "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 434
    .end local v2    # "orderBy":Lcom/google/firebase/firestore/core/OrderBy;
    goto :goto_0

    .line 435
    :cond_2
    if-eqz v0, :cond_3

    .line 438
    iput-object p1, p0, Lcom/google/firebase/firestore/core/Query$QueryComparator;->sortOrder:Ljava/util/List;

    .line 439
    return-void

    .line 436
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "QueryComparator needs to have a key ordering"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public compare(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I
    .locals 3
    .param p1, "doc1"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "doc2"    # Lcom/google/firebase/firestore/model/Document;

    .line 443
    iget-object v0, p0, Lcom/google/firebase/firestore/core/Query$QueryComparator;->sortOrder:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/OrderBy;

    .line 444
    .local v1, "order":Lcom/google/firebase/firestore/core/OrderBy;
    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/firestore/core/OrderBy;->compare(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I

    move-result v2

    .line 445
    .local v2, "comp":I
    if-eqz v2, :cond_0

    .line 446
    return v2

    .line 448
    .end local v1    # "order":Lcom/google/firebase/firestore/core/OrderBy;
    .end local v2    # "comp":I
    :cond_0
    goto :goto_0

    .line 449
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 427
    check-cast p1, Lcom/google/firebase/firestore/model/Document;

    check-cast p2, Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/core/Query$QueryComparator;->compare(Lcom/google/firebase/firestore/model/Document;Lcom/google/firebase/firestore/model/Document;)I

    move-result p1

    return p1
.end method
