.class public Lcom/google/firebase/firestore/bundle/NamedQuery;
.super Ljava/lang/Object;
.source "NamedQuery.java"

# interfaces
.implements Lcom/google/firebase/firestore/bundle/BundleElement;


# instance fields
.field private final bundledQuery:Lcom/google/firebase/firestore/bundle/BundledQuery;

.field private final name:Ljava/lang/String;

.field private final readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/firestore/bundle/BundledQuery;Lcom/google/firebase/firestore/model/SnapshotVersion;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "bundledQuery"    # Lcom/google/firebase/firestore/bundle/BundledQuery;
    .param p3, "readTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->name:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->bundledQuery:Lcom/google/firebase/firestore/bundle/BundledQuery;

    .line 28
    iput-object p3, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 48
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 49
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/bundle/NamedQuery;

    .line 53
    .local v1, "that":Lcom/google/firebase/firestore/bundle/NamedQuery;
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->name:Ljava/lang/String;

    iget-object v3, v1, Lcom/google/firebase/firestore/bundle/NamedQuery;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 54
    :cond_2
    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->bundledQuery:Lcom/google/firebase/firestore/bundle/BundledQuery;

    iget-object v3, v1, Lcom/google/firebase/firestore/bundle/NamedQuery;->bundledQuery:Lcom/google/firebase/firestore/bundle/BundledQuery;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/bundle/BundledQuery;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    iget-object v2, v1, Lcom/google/firebase/firestore/bundle/NamedQuery;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 49
    .end local v1    # "that":Lcom/google/firebase/firestore/bundle/NamedQuery;
    :cond_4
    :goto_0
    return v0
.end method

.method public getBundledQuery()Lcom/google/firebase/firestore/bundle/BundledQuery;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->bundledQuery:Lcom/google/firebase/firestore/bundle/BundledQuery;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getReadTime()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 61
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->bundledQuery:Lcom/google/firebase/firestore/bundle/BundledQuery;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/bundle/BundledQuery;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 62
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/bundle/NamedQuery;->readTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 63
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
