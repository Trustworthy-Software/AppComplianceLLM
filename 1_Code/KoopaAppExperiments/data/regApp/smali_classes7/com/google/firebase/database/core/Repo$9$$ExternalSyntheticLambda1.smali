.class public final synthetic Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/google/firebase/database/core/Repo$9;

.field public final synthetic f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field public final synthetic f$2:Lcom/google/firebase/database/DataSnapshot;

.field public final synthetic f$3:Lcom/google/firebase/database/Query;

.field public final synthetic f$4:Lcom/google/firebase/database/core/Repo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/database/core/Repo$9;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/database/DataSnapshot;Lcom/google/firebase/database/Query;Lcom/google/firebase/database/core/Repo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/database/core/Repo$9;

    iput-object p2, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$2:Lcom/google/firebase/database/DataSnapshot;

    iput-object p4, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$3:Lcom/google/firebase/database/Query;

    iput-object p5, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$4:Lcom/google/firebase/database/core/Repo;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    iget-object v0, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$0:Lcom/google/firebase/database/core/Repo$9;

    iget-object v1, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v2, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$2:Lcom/google/firebase/database/DataSnapshot;

    iget-object v3, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$3:Lcom/google/firebase/database/Query;

    iget-object v4, p0, Lcom/google/firebase/database/core/Repo$9$$ExternalSyntheticLambda1;->f$4:Lcom/google/firebase/database/core/Repo;

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/firebase/database/core/Repo$9;->lambda$run$1$com-google-firebase-database-core-Repo$9(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/database/DataSnapshot;Lcom/google/firebase/database/Query;Lcom/google/firebase/database/core/Repo;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method
