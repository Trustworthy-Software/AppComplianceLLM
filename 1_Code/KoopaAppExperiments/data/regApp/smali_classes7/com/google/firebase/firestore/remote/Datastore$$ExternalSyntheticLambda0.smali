.class public final synthetic Lcom/google/firebase/firestore/remote/Datastore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/firestore/remote/Datastore;

.field public final synthetic f$1:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/firestore/remote/Datastore;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/firestore/remote/Datastore$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/Datastore;

    iput-object p2, p0, Lcom/google/firebase/firestore/remote/Datastore$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/firebase/firestore/remote/Datastore$$ExternalSyntheticLambda0;->f$0:Lcom/google/firebase/firestore/remote/Datastore;

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/Datastore$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/firestore/remote/Datastore;->lambda$runAggregateQuery$1$com-google-firebase-firestore-remote-Datastore(Ljava/util/HashMap;Lcom/google/android/gms/tasks/Task;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
