.class public final synthetic Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/firestore/util/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/local/SQLiteBundleCache;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/local/SQLiteBundleCache;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/local/SQLiteBundleCache;

    iput-object p2, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/firestore/local/SQLiteBundleCache;

    iget-object v1, p0, Lcom/google/firebase/firestore/local/SQLiteBundleCache$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/firestore/local/SQLiteBundleCache;->lambda$getNamedQuery$1$com-google-firebase-firestore-local-SQLiteBundleCache(Ljava/lang/String;Landroid/database/Cursor;)Lcom/google/firebase/firestore/bundle/NamedQuery;

    move-result-object p1

    return-object p1
.end method
