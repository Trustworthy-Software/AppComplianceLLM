.class final Lcom/google/android/gms/internal/firebase-auth-api/zzzb;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzadj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzadj<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzagr;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzzc;Lcom/google/android/gms/internal/firebase-auth-api/zzadj;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzc;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 10

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4281

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzc;

    iget-object v1, v1, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zzc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zze()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {v2, p1}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    move-result-object p1

    .line 10
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacc;->zza(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zzd()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zzb()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zza()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "Bearer"

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzafe;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzc;

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzyj;

    const/4 v4, 0x0

    const-string v5, "phone"

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagr;->zzf()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzzc;

    iget-object v8, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzzc;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzacc;

    iget-object v9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    .line 18
    invoke-static/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzyj;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzyj;Lcom/google/android/gms/internal/firebase-auth-api/zzafe;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzacc;Lcom/google/android/gms/internal/firebase-auth-api/zzadg;)V

    .line 19
    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzzb;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzadj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadj;->zza(Ljava/lang/String;)V

    .line 3
    return-void
.end method
