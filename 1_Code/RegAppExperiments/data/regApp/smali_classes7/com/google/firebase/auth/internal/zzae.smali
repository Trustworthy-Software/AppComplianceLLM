.class final Lcom/google/firebase/auth/internal/zzae;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/Continuation<",
        "Lcom/google/firebase/auth/AuthResult;",
        "Lcom/google/android/gms/tasks/Task<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/internal/zzab;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/internal/zzab;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzae;->zza:Lcom/google/firebase/auth/internal/zzab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    nop

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzae;->zza:Lcom/google/firebase/auth/internal/zzab;

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzab;->zza(Lcom/google/firebase/auth/internal/zzab;)Lcom/google/firebase/auth/zzf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/AuthResult;

    .line 6
    new-instance v0, Lcom/google/firebase/auth/internal/zzp;

    .line 7
    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getUser()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/auth/internal/zzv;

    .line 8
    invoke-interface {p1}, Lcom/google/firebase/auth/AuthResult;->getAdditionalUserInfo()Lcom/google/firebase/auth/AdditionalUserInfo;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzn;

    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzae;->zza:Lcom/google/firebase/auth/internal/zzab;

    invoke-static {v2}, Lcom/google/firebase/auth/internal/zzab;->zza(Lcom/google/firebase/auth/internal/zzab;)Lcom/google/firebase/auth/zzf;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/auth/internal/zzp;-><init>(Lcom/google/firebase/auth/internal/zzv;Lcom/google/firebase/auth/internal/zzn;Lcom/google/firebase/auth/zzf;)V

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 11
    instance-of v0, p1, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    if-eqz v0, :cond_2

    .line 12
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzae;->zza:Lcom/google/firebase/auth/internal/zzab;

    invoke-static {v1}, Lcom/google/firebase/auth/internal/zzab;->zza(Lcom/google/firebase/auth/internal/zzab;)Lcom/google/firebase/auth/zzf;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;->zza(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/firebase/auth/FirebaseAuthUserCollisionException;

    .line 14
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    .line 15
    return-object p1
.end method
