.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->lambda$getOverlay$0$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache(Landroid/database/Cursor;)Lcom/google/firebase/firestore/model/mutation/Overlay;

    move-result-object p1

    return-object p1
.end method
