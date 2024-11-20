.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

.field public final synthetic f$1:[B

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/google/firebase/firestore/util/Function;

.field public final synthetic f$5:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;[BIILcom/google/firebase/firestore/util/Function;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$1:[B

    iput p3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$2:I

    iput p4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$3:I

    iput-object p5, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$4:Lcom/google/firebase/firestore/util/Function;

    iput-object p6, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$5:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$1:[B

    iget v2, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$2:I

    iget v3, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$3:I

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$4:Lcom/google/firebase/firestore/util/Function;

    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache$$ExternalSyntheticLambda3;->f$5:Ljava/util/Map;

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/firestore/local/SQLiteRemoteDocumentCache;->lambda$processRowInBackground$2$com-google-firebase-firestore-local-SQLiteRemoteDocumentCache([BIILcom/google/firebase/firestore/util/Function;Ljava/util/Map;)V

    return-void
.end method
