.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

.field public final synthetic f$1:Lcom/google/firebase/firestore/core/Target;

.field public final synthetic f$2:Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache;Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/core/Target;

    iput-object p3, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/local/SQLiteTargetCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda0;->f$1:Lcom/google/firebase/firestore/core/Target;

    iget-object v2, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda0;->f$2:Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lambda$getTargetData$3$com-google-firebase-firestore-local-SQLiteTargetCache(Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/local/SQLiteTargetCache$TargetDataHolder;Landroid/database/Cursor;)V

    return-void
.end method
