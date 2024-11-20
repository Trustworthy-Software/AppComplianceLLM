.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/core/Query;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/core/Query;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/core/Query;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/core/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    check-cast p1, Lcom/google/firebase/firestore/model/MutableDocument;

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->lambda$getDocumentsMatchingQuery$3(Lcom/google/firebase/firestore/core/Query;Ljava/util/Set;Lcom/google/firebase/firestore/model/MutableDocument;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
