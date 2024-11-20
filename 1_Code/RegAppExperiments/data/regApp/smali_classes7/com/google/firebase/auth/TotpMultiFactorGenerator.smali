.class public final Lcom/google/firebase/auth/TotpMultiFactorGenerator;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final FACTOR_ID:Ljava/lang/String; = "totp"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSecret(Lcom/google/firebase/auth/MultiFactorSession;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/MultiFactorSession;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/TotpSecret;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p0, Lcom/google/firebase/auth/internal/zzag;

    .line 3
    nop

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/auth/internal/zzag;->zza()Lcom/google/firebase/auth/internal/zzv;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->zza()Lcom/google/firebase/FirebaseApp;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lcom/google/firebase/FirebaseApp;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 6
    nop

    .line 7
    invoke-virtual {v0, p0}, Lcom/google/firebase/auth/FirebaseAuth;->zza(Lcom/google/firebase/auth/internal/zzag;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static getAssertionForEnrollment(Lcom/google/firebase/auth/TotpSecret;Ljava/lang/String;)Lcom/google/firebase/auth/TotpMultiFactorAssertion;
    .locals 2

    .line 9
    new-instance v0, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/TotpSecret;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lcom/google/firebase/auth/TotpMultiFactorAssertion;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/TotpSecret;Ljava/lang/String;)V

    .line 11
    return-object v0
.end method

.method public static getAssertionForSignIn(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/TotpMultiFactorAssertion;
    .locals 2

    .line 12
    new-instance v0, Lcom/google/firebase/auth/TotpMultiFactorAssertion;

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lcom/google/firebase/auth/TotpMultiFactorAssertion;-><init>(Ljava/lang/String;Lcom/google/firebase/auth/TotpSecret;Ljava/lang/String;)V

    .line 14
    return-object v0
.end method
