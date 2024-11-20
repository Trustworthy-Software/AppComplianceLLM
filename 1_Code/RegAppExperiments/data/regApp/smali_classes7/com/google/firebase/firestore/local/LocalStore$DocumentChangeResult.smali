.class Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentChangeResult"
.end annotation


# instance fields
.field private final changedDocuments:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;"
        }
    .end annotation
.end field

.field private final existenceChangedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/model/MutableDocument;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            ">;)V"
        }
    .end annotation

    .line 482
    .local p1, "changedDocuments":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/MutableDocument;>;"
    .local p2, "existenceChangedKeys":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-object p1, p0, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;->changedDocuments:Ljava/util/Map;

    .line 484
    iput-object p2, p0, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;->existenceChangedKeys:Ljava/util/Set;

    .line 485
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Set;Lcom/google/firebase/firestore/local/LocalStore$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Map;
    .param p2, "x1"    # Ljava/util/Set;
    .param p3, "x2"    # Lcom/google/firebase/firestore/local/LocalStore$1;

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;-><init>(Ljava/util/Map;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;

    .line 477
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;->changedDocuments:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;

    .line 477
    iget-object v0, p0, Lcom/google/firebase/firestore/local/LocalStore$DocumentChangeResult;->existenceChangedKeys:Ljava/util/Set;

    return-object v0
.end method
