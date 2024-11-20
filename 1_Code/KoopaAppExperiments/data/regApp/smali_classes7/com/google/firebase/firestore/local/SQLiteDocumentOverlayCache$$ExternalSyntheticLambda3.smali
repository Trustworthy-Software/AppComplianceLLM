.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

.field public final synthetic f$1:Lcom/google/firebase/firestore/util/BackgroundQueue;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda3;->f$1:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda3;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda3;->f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda3;->f$1:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda3;->f$2:Ljava/util/Map;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->lambda$getOverlays$2$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache(Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V

    return-void
.end method
