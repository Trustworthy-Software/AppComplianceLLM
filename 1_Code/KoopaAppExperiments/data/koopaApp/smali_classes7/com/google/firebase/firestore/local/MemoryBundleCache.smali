.class Lcom/google/firebase/firestore/local/MemoryBundleCache;
.super Ljava/lang/Object;
.source "MemoryBundleCache.java"

# interfaces
.implements Lcom/google/firebase/firestore/local/BundleCache;


# instance fields
.field private final bundles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/bundle/BundleMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final namedQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/firebase/firestore/bundle/NamedQuery;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryBundleCache;->bundles:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/local/MemoryBundleCache;->namedQueries:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getBundleMetadata(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/BundleMetadata;
    .locals 1
    .param p1, "bundleId"    # Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryBundleCache;->bundles:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/bundle/BundleMetadata;

    return-object v0
.end method

.method public getNamedQuery(Ljava/lang/String;)Lcom/google/firebase/firestore/bundle/NamedQuery;
    .locals 1
    .param p1, "queryName"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryBundleCache;->namedQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/bundle/NamedQuery;

    return-object v0
.end method

.method public saveBundleMetadata(Lcom/google/firebase/firestore/bundle/BundleMetadata;)V
    .locals 2
    .param p1, "metadata"    # Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 36
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryBundleCache;->bundles:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getBundleId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public saveNamedQuery(Lcom/google/firebase/firestore/bundle/NamedQuery;)V
    .locals 2
    .param p1, "query"    # Lcom/google/firebase/firestore/bundle/NamedQuery;

    .line 47
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryBundleCache;->namedQueries:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/bundle/NamedQuery;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method
