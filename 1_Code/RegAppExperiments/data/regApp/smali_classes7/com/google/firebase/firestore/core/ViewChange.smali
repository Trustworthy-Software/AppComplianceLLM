.class public Lcom/google/firebase/firestore/core/ViewChange;
.super Ljava/lang/Object;
.source "ViewChange.java"


# instance fields
.field private final limboChanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/LimboDocumentChange;",
            ">;"
        }
    .end annotation
.end field

.field private final snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/core/ViewSnapshot;Ljava/util/List;)V
    .locals 0
    .param p1, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/LimboDocumentChange;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p2, "limboChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/LimboDocumentChange;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/firebase/firestore/core/ViewChange;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 26
    iput-object p2, p0, Lcom/google/firebase/firestore/core/ViewChange;->limboChanges:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public getLimboChanges()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/LimboDocumentChange;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ViewChange;->limboChanges:Ljava/util/List;

    return-object v0
.end method

.method public getSnapshot()Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/google/firebase/firestore/core/ViewChange;->snapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    return-object v0
.end method
