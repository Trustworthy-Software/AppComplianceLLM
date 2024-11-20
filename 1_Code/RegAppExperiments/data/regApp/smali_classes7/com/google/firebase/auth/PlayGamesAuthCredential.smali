.class public Lcom/google/firebase/auth/PlayGamesAuthCredential;
.super Lcom/google/firebase/auth/AuthCredential;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/PlayGamesAuthCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/google/firebase/auth/zzaq;

    invoke-direct {v0}, Lcom/google/firebase/auth/zzaq;-><init>()V

    sput-object v0, Lcom/google/firebase/auth/PlayGamesAuthCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/google/firebase/auth/AuthCredential;-><init>()V

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/PlayGamesAuthCredential;->zza:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static zza(Lcom/google/firebase/auth/PlayGamesAuthCredential;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzagj;
    .locals 11

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v10, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0}, Lcom/google/firebase/auth/AuthCredential;->getProvider()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    iget-object v6, p0, Lcom/google/firebase/auth/PlayGamesAuthCredential;->zza:Ljava/lang/String;

    .line 6
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzagj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    return-object v10
.end method


# virtual methods
.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 8
    const-string v0, "playgames.google.com"

    return-object v0
.end method

.method public getSignInMethod()Ljava/lang/String;
    .locals 1

    .line 9
    const-string v0, "playgames.google.com"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 14
    nop

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 16
    nop

    .line 17
    iget-object v0, p0, Lcom/google/firebase/auth/PlayGamesAuthCredential;->zza:Ljava/lang/String;

    .line 18
    nop

    .line 19
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 20
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 21
    return-void
.end method

.method public final zza()Lcom/google/firebase/auth/AuthCredential;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/auth/PlayGamesAuthCredential;

    iget-object v1, p0, Lcom/google/firebase/auth/PlayGamesAuthCredential;->zza:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/firebase/auth/PlayGamesAuthCredential;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
