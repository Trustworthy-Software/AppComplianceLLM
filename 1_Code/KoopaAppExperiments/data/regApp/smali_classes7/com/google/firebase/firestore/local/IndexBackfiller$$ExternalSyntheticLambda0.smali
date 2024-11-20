.class public final synthetic Lcom/google/firebase/firestore/local/IndexBackfiller$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/IndexBackfiller;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/IndexBackfiller;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/IndexBackfiller$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/IndexBackfiller;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/local/IndexBackfiller;->lambda$backfill$0$com-google-firebase-firestore-local-IndexBackfiller()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
