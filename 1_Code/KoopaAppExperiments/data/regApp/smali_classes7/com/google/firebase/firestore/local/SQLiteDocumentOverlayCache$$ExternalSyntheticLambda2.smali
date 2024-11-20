.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

.field public final synthetic f$1:[B

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;[BILjava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;->f$1:[B

    iput p3, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;->f$3:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;->f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;->f$1:[B

    iget v2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;->f$2:I

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda2;->f$3:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->lambda$processOverlaysInBackground$5$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache([BILjava/util/Map;)V

    return-void
.end method
