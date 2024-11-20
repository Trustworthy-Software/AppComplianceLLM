.class public Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;
.super Ljava/lang/Object;
.source "BundledDocumentMetadata.java"

# interfaces
.implements Lcom/google/firebase/firestore/bundle/BundleElement;


# instance fields
.field private final exists:Z

.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final queries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;ZLjava/util/List;)V
    .locals 0
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p3, "exists"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/SnapshotVersion;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p4, "queries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 33
    iput-object p2, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 34
    iput-boolean p3, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->exists:Z

    .line 35
    iput-object p4, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->queries:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;

    .line 65
    .local v1, "that":Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;
    iget-boolean v2, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->exists:Z

    iget-boolean v3, v1, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->exists:Z

    if-eq v2, v3, :cond_2

    return v0

    .line 66
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v3, v1, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 67
    :cond_3
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v3, v1, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v0

    .line 68
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->queries:Ljava/util/List;

    iget-object v2, v1, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->queries:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 61
    .end local v1    # "that":Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;
    :cond_5
    :goto_0
    return v0
.end method

.method public exists()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->exists:Z

    return v0
.end method

.method public getKey()Lcom/google/firebase/firestore/model/DocumentKey;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    return-object v0
.end method

.method public getQueries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->queries:Ljava/util/List;

    return-object v0
.end method

.method public getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v0

    .line 74
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 75
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->exists:Z

    add-int/2addr v0, v2

    .line 76
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;->queries:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 77
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
