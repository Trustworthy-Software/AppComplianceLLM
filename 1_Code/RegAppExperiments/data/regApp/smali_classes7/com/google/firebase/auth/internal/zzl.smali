.class public final Lcom/google/firebase/auth/internal/zzl;
.super Lcom/google/firebase/auth/ActionCodeMultiFactorInfo;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/firebase/auth/MultiFactorInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/auth/MultiFactorInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/firebase/auth/ActionCodeMultiFactorInfo;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzl;->email:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/auth/MultiFactorInfo;

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzl;->zza:Lcom/google/firebase/auth/MultiFactorInfo;

    .line 5
    return-void
.end method


# virtual methods
.method public final getMultiFactorInfo()Lcom/google/firebase/auth/MultiFactorInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzl;->zza:Lcom/google/firebase/auth/MultiFactorInfo;

    return-object v0
.end method
