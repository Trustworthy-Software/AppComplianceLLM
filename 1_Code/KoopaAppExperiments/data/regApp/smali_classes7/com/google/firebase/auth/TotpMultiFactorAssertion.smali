.class public Lcom/google/firebase/auth/TotpMultiFactorAssertion;
.super Lcom/google/firebase/auth/MultiFactorAssertion;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/firebase/auth/TotpSecret;

.field private final zzc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/auth/TotpSecret;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/auth/MultiFactorAssertion;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zza:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zzb:Lcom/google/firebase/auth/TotpSecret;

    .line 8
    iput-object p3, p0, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zzc:Ljava/lang/String;

    .line 9
    return-void
.end method


# virtual methods
.method public getFactorId()Ljava/lang/String;
    .locals 1

    .line 3
    const-string v0, "totp"

    return-object v0
.end method

.method public final zza()Lcom/google/firebase/auth/TotpSecret;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zzb:Lcom/google/firebase/auth/TotpSecret;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/TotpMultiFactorAssertion;->zza:Ljava/lang/String;

    return-object v0
.end method
