.class Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
.super Ljava/lang/Object;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryListenersInfo"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/QueryListener;",
            ">;"
        }
    .end annotation
.end field

.field private targetId:I

.field private viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->listeners:Ljava/util/List;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 36
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 36
    iget-object v0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;Lcom/google/firebase/firestore/core/ViewSnapshot;)Lcom/google/firebase/firestore/core/ViewSnapshot;
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    .param p1, "x1"    # Lcom/google/firebase/firestore/core/ViewSnapshot;

    .line 36
    iput-object p1, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->viewSnapshot:Lcom/google/firebase/firestore/core/ViewSnapshot;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;

    .line 36
    iget v0, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->targetId:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;
    .param p1, "x1"    # I

    .line 36
    iput p1, p0, Lcom/google/firebase/firestore/core/EventManager$QueryListenersInfo;->targetId:I

    return p1
.end method
