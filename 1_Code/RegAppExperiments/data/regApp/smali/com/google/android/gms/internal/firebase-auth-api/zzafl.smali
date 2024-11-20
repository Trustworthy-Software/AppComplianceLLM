.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzafl;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.firebase:firebase-auth@@22.2.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;->zza:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;->zzb:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;->zzc:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static zza(Lorg/json/JSONArray;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzap<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzafl;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zzg()Lcom/google/android/gms/internal/firebase-auth-api/zzao;

    move-result-object v0

    .line 4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 6
    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;

    .line 7
    const-string v4, "credentialId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8
    const-string v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9
    const-string v6, "displayName"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzao;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/firebase-auth-api/zzan;

    .line 11
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzao;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p0

    return-object p0

    .line 2
    :cond_2
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzap;->zza(Ljava/util/Collection;)Lcom/google/android/gms/internal/firebase-auth-api/zzap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 19
    nop

    .line 20
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 21
    nop

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;->zza:Ljava/lang/String;

    .line 23
    nop

    .line 24
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 25
    nop

    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;->zzb:Ljava/lang/String;

    .line 27
    nop

    .line 28
    const/4 v1, 0x2

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 29
    nop

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzafl;->zzc:Ljava/lang/String;

    .line 31
    nop

    .line 32
    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 33
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 34
    return-void
.end method
