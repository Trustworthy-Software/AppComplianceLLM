.class Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;
.super Ljava/lang/Object;
.source "QuerySnapshot.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/QuerySnapshot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuerySnapshotIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/firebase/firestore/QueryDocumentSnapshot;",
        ">;"
    }
.end annotation


# instance fields
.field private final it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/firebase/firestore/QuerySnapshot;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/QuerySnapshot;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/google/firebase/firestore/model/Document;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/firebase/firestore/model/Document;>;"
    iput-object p1, p0, Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;->this$0:Lcom/google/firebase/firestore/QuerySnapshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p2, p0, Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;->it:Ljava/util/Iterator;

    .line 62
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;->this$0:Lcom/google/firebase/firestore/QuerySnapshot;

    iget-object v1, p0, Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;->it:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/Document;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/QuerySnapshot;->access$000(Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/google/firebase/firestore/QuerySnapshot$QuerySnapshotIterator;->next()Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "QuerySnapshot does not support remove()."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
