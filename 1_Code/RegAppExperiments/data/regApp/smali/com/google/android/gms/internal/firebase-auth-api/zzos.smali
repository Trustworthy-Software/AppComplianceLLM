.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzos;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzov;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

.field private final zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

.field private final zzf:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/Integer;)V
    .locals 0
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zza:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzpf;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    .line 18
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    .line 19
    iput-object p5, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzf:Ljava/lang/Integer;

    .line 20
    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/Integer;)Lcom/google/android/gms/internal/firebase-auth-api/zzos;
    .locals 7
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzvs;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    if-ne p3, v0, :cond_1

    .line 2
    if-nez p4, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type raw should not have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    if-eqz p4, :cond_2

    .line 6
    :goto_0
    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;Lcom/google/android/gms/internal/firebase-auth-api/zzvs;Ljava/lang/Integer;)V

    return-object v6

    .line 5
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type different from raw should have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzxt;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxt;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzvs;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zze:Lcom/google/android/gms/internal/firebase-auth-api/zzvs;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzahd;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    return-object v0
.end method

.method public final zze()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zzf:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zza:Ljava/lang/String;

    return-object v0
.end method
