.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzact;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzafa;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;-><init>(I)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzxy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzxy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;->zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzxy;

    .line 4
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "getRecaptchaParam"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzacb;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafa;",
            ">;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzacb;",
            ")V"
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacu;

    .line 9
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;->zzx:Lcom/google/android/gms/internal/firebase-auth-api/zzxy;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxy;Lcom/google/android/gms/internal/firebase-auth-api/zzabz;)V

    .line 10
    return-void
.end method

.method public final zzb()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaaq;->zzu:Lcom/google/android/gms/internal/firebase-auth-api/zzafa;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzb(Ljava/lang/Object;)V

    .line 6
    return-void
.end method
