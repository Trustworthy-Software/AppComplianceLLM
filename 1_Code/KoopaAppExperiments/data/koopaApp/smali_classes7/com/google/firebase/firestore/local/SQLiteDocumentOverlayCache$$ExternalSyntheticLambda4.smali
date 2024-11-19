.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

.field public final synthetic f$1:[I

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Lcom/google/firebase/firestore/util/BackgroundQueue;

.field public final synthetic f$5:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;[I[Ljava/lang/String;[Ljava/lang/String;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$1:[I

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$2:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$3:[Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$4:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iput-object p6, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$5:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$1:[I

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$2:[Ljava/lang/String;

    iget-object v3, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$3:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$4:Lcom/google/firebase/firestore/util/BackgroundQueue;

    iget-object v5, p0, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache$$ExternalSyntheticLambda4;->f$5:Ljava/util/Map;

    move-object v6, p1

    check-cast v6, Landroid/database/Cursor;

    invoke-virtual/range {v0 .. v6}, Lcom/google/firebase/firestore/local/SQLiteDocumentOverlayCache;->lambda$getOverlays$3$com-google-firebase-firestore-local-SQLiteDocumentOverlayCache([I[Ljava/lang/String;[Ljava/lang/String;Lcom/google/firebase/firestore/util/BackgroundQueue;Ljava/util/Map;Landroid/database/Cursor;)V

    return-void
.end method
