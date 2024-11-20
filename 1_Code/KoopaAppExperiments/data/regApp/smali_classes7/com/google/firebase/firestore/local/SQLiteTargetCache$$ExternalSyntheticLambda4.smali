.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteTargetCache$$ExternalSyntheticLambda4;->f$0:Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/local/SQLiteTargetCache;->lambda$getMatchingKeysForTargetId$4(Lcom/google/firebase/firestore/local/SQLiteTargetCache$DocumentKeysHolder;Landroid/database/Cursor;)V

    return-void
.end method
