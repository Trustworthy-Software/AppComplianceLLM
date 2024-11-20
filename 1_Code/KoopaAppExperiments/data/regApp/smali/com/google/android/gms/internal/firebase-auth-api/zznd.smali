.class public final Lcom/google/android/gms/internal/firebase-auth-api/zznd;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzbt;
.source "com.google.firebase:firebase-auth@@22.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzos;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzbt;-><init>()V

    .line 5
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    .line 7
    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzng;->zza:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzuy$zza;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 9
    :pswitch_0
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzcs;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzcs;

    .line 10
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)Lcom/google/android/gms/internal/firebase-auth-api/zzos;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/firebase-auth-api/zzcs;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzos;Lcom/google/android/gms/internal/firebase-auth-api/zzcs;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    return-object p1
.end method

.method public final zza()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zznd;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzos;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzos;->zze()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
