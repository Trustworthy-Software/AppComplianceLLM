.class final Lcom/google/firebase/auth/internal/zzac;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Lcom/google/firebase/auth/GetTokenResult;",
        "Lcom/google/android/gms/tasks/Task<",
        "Lcom/google/firebase/auth/MultiFactorSession;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/internal/zzz;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzz;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzac;->zza:Lcom/google/firebase/auth/internal/zzz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    nop

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    nop

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/GetTokenResult;

    invoke-virtual {p1}, Lcom/google/firebase/auth/GetTokenResult;->getToken()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzac;->zza:Lcom/google/firebase/auth/internal/zzz;

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzz;->zza(Lcom/google/firebase/auth/internal/zzz;)Lcom/google/firebase/auth/internal/zzv;

    move-result-object v0

    .line 6
    invoke-static {p1, v0}, Lcom/google/firebase/auth/internal/zzag;->zza(Ljava/lang/String;Lcom/google/firebase/auth/internal/zzv;)Lcom/google/firebase/auth/internal/zzag;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 8
    return-object p1
.end method
