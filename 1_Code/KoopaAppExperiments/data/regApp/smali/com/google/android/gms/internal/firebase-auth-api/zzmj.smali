.class final Lcom/google/android/gms/internal/firebase-auth-api/zzmj;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field static final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmj;


# instance fields
.field zzb:Ljava/math/BigInteger;

.field zzc:Ljava/math/BigInteger;

.field zzd:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzmj;

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zzb:Ljava/math/BigInteger;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zzc:Ljava/math/BigInteger;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zzd:Ljava/math/BigInteger;

    .line 6
    return-void
.end method


# virtual methods
.method final zza()Z
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmj;->zzd:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
