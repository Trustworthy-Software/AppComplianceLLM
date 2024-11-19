.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

.field public final synthetic f$1:Lcom/google/firebase/firestore/util/BackgroundQueue;

.field public final synthetic f$2:Ljava/util/Map;

.field public final synthetic f$3:Lcom/google/firebase/firestore/util/Function;

.field public final synthetic f$4:Lcom/google/firebase/firestore/local/QueryContext;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$1:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$3:Lcom/google/firebase/firestore/util/Function;

    iput-object p5, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$4:Lcom/google/firebase/firestore/local/QueryContext;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$1:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$2:Ljava/util/Map;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$3:Lcom/google/firebase/firestore/util/Function;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda1;->f$4:Lcom/google/firebase/firestore/local/QueryContext;

    move-object v5, p1

    check-cast v5, Landroid/database/Cursor;

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->lambda$getAll$1$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Lcom/google/firebase/firestore/util/Function;Lcom/google/firebase/firestore/local/QueryContext;Landroid/database/Cursor;)V

    return-void
.end method
