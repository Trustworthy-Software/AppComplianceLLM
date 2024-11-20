.class final Lcom/google/android/gms/internal/firebase-auth-api/zzhk;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzne;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzne<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvy;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzvx;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzhj;Ljava/lang/Class;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzhk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzhj;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 8
    nop

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzaig;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzaig;

    move-result-object v0

    .line 10
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvy;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;Lcom/google/android/gms/internal/firebase-auth-api/zzaig;)Lcom/google/android/gms/internal/firebase-auth-api/zzvy;

    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvy;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzvx;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvx$zza;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzhj;->zza()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvx$zza;->zza(I)Lcom/google/android/gms/internal/firebase-auth-api/zzvx$zza;

    move-result-object p1

    .line 4
    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzou;->zza(I)[B

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahd;->zza([B)Lcom/google/android/gms/internal/firebase-auth-api/zzahd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzvx$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzvx$zza;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzair$zzb;->zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzair;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    .line 7
    return-object p1
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzvy;

    return-void
.end method
