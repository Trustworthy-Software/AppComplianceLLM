.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzbu;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzch;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzch;

    .line 10
    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)Lcom/google/android/gms/internal/firebase-auth-api/zzbu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzch;)V

    return-object v0
.end method


# virtual methods
.method final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzch;

    instance-of v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zznf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zznf;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zznu;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzbu;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzch;

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zznu;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzch;Ljava/lang/Class;)Lcom/google/android/gms/internal/firebase-auth-api/zzov;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/firebase-auth-api/zzor;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzor;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvb;

    move-result-object v0

    return-object v0
.end method
