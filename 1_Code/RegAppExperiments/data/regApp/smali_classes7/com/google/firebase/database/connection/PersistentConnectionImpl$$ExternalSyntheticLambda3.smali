.class public final synthetic Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/firebase/database/connection/PersistentConnectionImpl$ConnectionRequestCallback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/PersistentConnectionImpl$$ExternalSyntheticLambda3;->f$0:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, p1}, Lcom/google/firebase/database/connection/PersistentConnectionImpl;->lambda$get$0(Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/util/Map;)V

    return-void
.end method
