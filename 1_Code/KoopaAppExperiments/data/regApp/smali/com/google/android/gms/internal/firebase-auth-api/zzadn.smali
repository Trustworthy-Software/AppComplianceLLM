.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzadn;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@22.2.0"


# direct methods
.method public static zza(Lcom/google/firebase/auth/PhoneAuthCredential;)Lcom/google/android/gms/internal/firebase-auth-api/zzago;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    nop

    .line 3
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zze()Z

    move-result p0

    .line 4
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzago;->zzb(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/firebase-auth-api/zzago;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    nop

    .line 6
    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->getSmsCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/auth/PhoneAuthCredential;->zze()Z

    move-result p0

    .line 7
    invoke-static {v0, v1, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzago;->zza(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/firebase-auth-api/zzago;

    move-result-object p0

    return-object p0
.end method
