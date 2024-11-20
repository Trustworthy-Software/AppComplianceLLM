.class final Lcom/google/android/gms/internal/firebase-auth-api/zzacv;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzabz;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/common/api/Status;)V

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzp:Lcom/google/firebase/auth/AuthCredential;

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p3, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzq:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p4, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzr:Ljava/lang/String;

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzf:Lcom/google/firebase/auth/internal/zzao;

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget-object p2, p2, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzf:Lcom/google/firebase/auth/internal/zzao;

    invoke-interface {p2, p1}, Lcom/google/firebase/auth/internal/zzao;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 11
    return-void
.end method

.method private final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzada;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzi:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadb;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacv;Lcom/google/android/gms/internal/firebase-auth-api/zzada;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 3
    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 28
    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 45
    nop

    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusMessage()Ljava/lang/String;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_9

    .line 48
    const-string v1, "MISSING_MFA_PENDING_CREDENTIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42b9

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    .line 50
    :cond_0
    const-string v1, "MISSING_MFA_ENROLLMENT_ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42ba

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    .line 52
    :cond_1
    const-string v1, "INVALID_MFA_PENDING_CREDENTIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bb

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto/16 :goto_0

    .line 54
    :cond_2
    const-string v1, "MFA_ENROLLMENT_NOT_FOUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bc

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 56
    :cond_3
    const-string v1, "ADMIN_ONLY_OPERATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bd

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 58
    :cond_4
    const-string v1, "UNVERIFIED_EMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 59
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42be

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 60
    :cond_5
    const-string v1, "SECOND_FACTOR_EXISTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 61
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42bf

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 62
    :cond_6
    const-string v1, "SECOND_FACTOR_LIMIT_EXCEEDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 63
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c0

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 64
    :cond_7
    const-string v1, "UNSUPPORTED_FIRST_FACTOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 65
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c1

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 66
    :cond_8
    const-string v1, "EMAIL_CHANGE_NEEDS_VERIFICATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 67
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x42c2

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    goto :goto_0

    .line 68
    :cond_9
    nop

    .line 69
    :goto_0
    nop

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzw:Z

    .line 73
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacy;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacy;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacv;Lcom/google/android/gms/common/api/Status;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzada;)V

    return-void

    .line 74
    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/common/api/Status;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 76
    return-void
.end method

.method public final zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 42
    nop

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzl:Lcom/google/android/gms/internal/firebase-auth-api/zzaeh;

    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 25
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzu:Lcom/google/android/gms/internal/firebase-auth-api/zzafa;

    .line 78
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 79
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 107
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 108
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Lcom/google/android/gms/internal/firebase-auth-api/zzaex;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 85
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzaex;

    .line 86
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 87
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaff;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzt:Lcom/google/android/gms/internal/firebase-auth-api/zzaff;

    .line 81
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 82
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafr;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzm:Lcom/google/android/gms/internal/firebase-auth-api/zzafr;

    .line 90
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 91
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzafz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzv:Lcom/google/android/gms/internal/firebase-auth-api/zzafz;

    .line 103
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 104
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyh;)V
    .locals 3

    .line 29
    nop

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zza()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzb()Lcom/google/firebase/auth/zzf;

    move-result-object v1

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzc()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzyh;->zzd()Ljava/lang/String;

    move-result-object p1

    .line 34
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyk;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzs:Lcom/google/android/gms/internal/firebase-auth-api/zzyk;

    .line 37
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    .line 38
    const-string v0, "REQUIRES_SECOND_FACTOR_AUTH"

    invoke-static {v0}, Lcom/google/firebase/auth/internal/zzai;->zza(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/common/api/Status;)V

    .line 40
    return-void
.end method

.method public final zza(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Z)V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzw:Z

    .line 112
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacw;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacv;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzada;)V

    .line 113
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected response type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzo:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Z)V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-boolean v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzw:Z

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacz;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacv;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzada;)V

    .line 17
    return-void
.end method

.method public final zzb()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 94
    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzo:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzacx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacx;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzacv;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzada;)V

    .line 21
    return-void
.end method

.method public final zzc()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 101
    return-void
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iget v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected response type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    iput-object p1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzn:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzacv;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzact;

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzact;)V

    .line 98
    return-void
.end method
