.class final Lcom/google/firebase/auth/zzl;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Lcom/google/firebase/auth/internal/zzb$zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/PhoneAuthOptions;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthOptions;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/zzl;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    iput-object p2, p0, Lcom/google/firebase/auth/zzl;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    iput-object p3, p0, Lcom/google/firebase/auth/zzl;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/internal/zzb$zza;",
            ">;)V"
        }
    .end annotation

    .line 2
    nop

    .line 3
    nop

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    .line 6
    nop

    .line 7
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while validating application identity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    const-string v1, "FirebaseAuth"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    if-eqz p1, :cond_1

    .line 10
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzb;->zza(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    check-cast p1, Lcom/google/firebase/FirebaseException;

    iget-object v0, p0, Lcom/google/firebase/auth/zzl;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    iget-object v1, p0, Lcom/google/firebase/auth/zzl;->zzb:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/FirebaseException;Lcom/google/firebase/auth/PhoneAuthOptions;Ljava/lang/String;)V

    .line 12
    return-void

    .line 13
    :cond_1
    const-string p1, "Proceeding without any application identifier."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 p1, 0x0

    move-object v0, p1

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/internal/zzb$zza;

    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzb$zza;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/internal/zzb$zza;

    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzb$zza;->zza()Ljava/lang/String;

    move-result-object p1

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    .line 17
    :goto_1
    iget-object v1, p0, Lcom/google/firebase/auth/zzl;->zzc:Lcom/google/firebase/auth/FirebaseAuth;

    iget-object v2, p0, Lcom/google/firebase/auth/zzl;->zza:Lcom/google/firebase/auth/PhoneAuthOptions;

    invoke-virtual {v1, v2, p1, v0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/PhoneAuthOptions;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method
