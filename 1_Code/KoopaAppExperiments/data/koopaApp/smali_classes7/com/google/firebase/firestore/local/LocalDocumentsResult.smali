.class public final Lcom/google/firebase/firestore/local/LocalDocumentsResult;
.super Ljava/lang/Object;
.source "LocalDocumentsResult.java"


# instance fields
.field private final batchId:I

.field private final documents:Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILcom/google/firebase/database/collection/ImmutableSortedMap;)V
    .locals 0
    .param p1, "batchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;)V"
        }
    .end annotation

    .line 34
    .local p2, "documents":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->batchId:I

    .line 36
    iput-object p2, p0, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->documents:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    .line 37
    return-void
.end method

.method public static fromOverlayedDocuments(ILjava/util/Map;)Lcom/google/firebase/firestore/local/LocalDocumentsResult;
    .locals 5
    .param p0, "batchId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/local/OverlayedDocument;",
            ">;)",
            "Lcom/google/firebase/firestore/local/LocalDocumentsResult;"
        }
    .end annotation

    .line 41
    .local p1, "overlays":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/local/OverlayedDocument;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentCollections;->emptyDocumentMap()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 42
    .local v0, "documents":Lcom/google/firebase/database/collection/ImmutableSortedMap;, "Lcom/google/firebase/database/collection/ImmutableSortedMap<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/local/OverlayedDocument;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/local/OverlayedDocument;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/local/OverlayedDocument;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->insert(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    .line 44
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/local/OverlayedDocument;>;"
    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Lcom/google/firebase/firestore/local/LocalDocumentsResult;

    invoke-direct {v1, p0, v0}, Lcom/google/firebase/firestore/local/LocalDocumentsResult;-><init>(ILcom/google/firebase/database/collection/ImmutableSortedMap;)V

    return-object v1
.end method


# virtual methods
.method public getBatchId()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->batchId:I

    return v0
.end method

.method public getDocuments()Lcom/google/firebase/database/collection/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/firebase/database/collection/ImmutableSortedMap<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalDocumentsResult;->documents:Lcom/google/firebase/database/collection/ImmutableSortedMap;

    return-object v0
.end method
