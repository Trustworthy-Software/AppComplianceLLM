.class public Lcom/google/firebase/firestore/core/View$DocumentChanges;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentChanges"
.end annotation


# instance fields
.field final changeSet:Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

.field final documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

.field final mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field

.field private final needsRefill:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/core/DocumentViewChangeSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;Z)V
    .locals 0
    .param p1, "newDocuments"    # Lcom/google/firebase/firestore/model/DocumentSet;
    .param p2, "changes"    # Lcom/google/firebase/firestore/core/DocumentViewChangeSet;
    .param p4, "needsRefill"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/DocumentSet;",
            "Lcom/google/firebase/firestore/core/DocumentViewChangeSet;",
            "Lcom/google/firebase/database/collection/ImmutableSortedSet<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;Z)V"
        }
    .end annotation

    .line 48
    .local p3, "mutatedKeys":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/firebase/firestore/core/View$DocumentChanges;->documentSet:Lcom/google/firebase/firestore/model/DocumentSet;

    .line 50
    iput-object p2, p0, Lcom/google/firebase/firestore/core/View$DocumentChanges;->changeSet:Lcom/google/firebase/firestore/core/DocumentViewChangeSet;

    .line 51
    iput-object p3, p0, Lcom/google/firebase/firestore/core/View$DocumentChanges;->mutatedKeys:Lcom/google/firebase/database/collection/ImmutableSortedSet;

    .line 52
    iput-boolean p4, p0, Lcom/google/firebase/firestore/core/View$DocumentChanges;->needsRefill:Z

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/core/DocumentViewChangeSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;ZLcom/google/firebase/firestore/core/View$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/model/DocumentSet;
    .param p2, "x1"    # Lcom/google/firebase/firestore/core/DocumentViewChangeSet;
    .param p3, "x2"    # Lcom/google/firebase/database/collection/ImmutableSortedSet;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/google/firebase/firestore/core/View$1;

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/firestore/core/View$DocumentChanges;-><init>(Lcom/google/firebase/firestore/model/DocumentSet;Lcom/google/firebase/firestore/core/DocumentViewChangeSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/core/View$DocumentChanges;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/core/View$DocumentChanges;

    .line 43
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/View$DocumentChanges;->needsRefill:Z

    return v0
.end method


# virtual methods
.method public needsRefill()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lcom/google/firebase/firestore/core/View$DocumentChanges;->needsRefill:Z

    return v0
.end method
