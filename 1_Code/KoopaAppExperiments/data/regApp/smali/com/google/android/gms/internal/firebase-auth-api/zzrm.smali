.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzrm;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private zza:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrm;->zza:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzrn;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrm;->zza:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzrn;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrm;->zza:Ljava/util/HashMap;

    .line 4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzrn;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/firebase-auth-api/zzrp;)V

    .line 5
    iput-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzrm;->zza:Ljava/util/HashMap;

    .line 6
    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot call build() twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
