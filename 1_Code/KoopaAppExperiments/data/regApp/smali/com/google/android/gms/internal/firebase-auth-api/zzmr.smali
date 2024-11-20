.class final Lcom/google/android/gms/internal/firebase-auth-api/zzmr;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KeyFormatProtoT::",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
        "KeyProtoT::",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzakb;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/firebase-auth-api/zzne<",
            "TKeyFormatProtoT;TKeyProtoT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzne;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzne<",
            "TKeyFormatProtoT;TKeyProtoT;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    .line 7
    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahd;",
            ")TKeyProtoT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lcom/google/android/gms/internal/firebase-auth-api/zzaja;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzahd;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zzb(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzmr;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzne;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzne;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzakb;)Lcom/google/android/gms/internal/firebase-auth-api/zzakb;

    move-result-object p1

    .line 4
    return-object p1
.end method
