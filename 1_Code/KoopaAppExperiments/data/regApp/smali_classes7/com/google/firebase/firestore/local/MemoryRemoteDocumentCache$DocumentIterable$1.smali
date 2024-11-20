.class Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable$1;
.super Ljava/lang/Object;
.source "MemoryRemoteDocumentCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/firebase/firestore/model/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;

    .line 169
    iput-object p1, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable$1;->this$1:Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/firebase/firestore/model/Document;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/Document;

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/google/firebase/firestore/local/MemoryRemoteDocumentCache$DocumentIterable$1;->next()Lcom/google/firebase/firestore/model/Document;

    move-result-object v0

    return-object v0
.end method
