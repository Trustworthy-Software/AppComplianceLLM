.class final Lcom/google/android/gms/internal/firebase-auth-api/zzabo;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzact;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzact<",
        "Ljava/lang/Void;",
        "Lcom/google/firebase/auth/internal/zzg;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaa:J

.field private final zzab:Z

.field private final zzac:Z

.field private final zzad:Ljava/lang/String;

.field private final zzae:Ljava/lang/String;

.field private final zzaf:Z

.field private final zzx:Ljava/lang/String;

.field private final zzy:Ljava/lang/String;

.field private final zzz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/zzag;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 2
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzact;-><init>(I)V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzag;->zzb()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzx:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzy:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzz:Ljava/lang/String;

    .line 8
    iput-wide p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzaa:J

    .line 9
    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzab:Z

    .line 10
    iput-boolean p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzac:Z

    .line 11
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzad:Ljava/lang/String;

    .line 12
    iput-object p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzae:Ljava/lang/String;

    .line 13
    iput-boolean p10, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzaf:Z

    .line 14
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "startMfaEnrollment"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzacb;)V
    .locals 13

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzadd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzact;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzact;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzacu;

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzx:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzy:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzz:Ljava/lang/String;

    iget-wide v5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzaa:J

    iget-boolean v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzab:Z

    iget-boolean v8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzac:Z

    iget-object v9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzad:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzae:Ljava/lang/String;

    iget-boolean v11, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzaf:Z

    iget-object v12, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzabo;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzacv;

    move-object v1, p2

    invoke-virtual/range {v1 .. v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzacb;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase-auth-api/zzabz;)V

    .line 19
    return-void
.end method

.method public final zzb()V
    .locals 0

    .line 15
    return-void
.end method
